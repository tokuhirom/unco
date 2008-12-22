use MENTA::Controller;
use HTML::Split;
use Text::MicroTemplate;
use Data::Page;
use Unco::ExtractContent;

sub run {
    # XXX このへんの設定がもうちょいすっきりかけるといいね
    sql_dbh(@{ config()->{application}->{sql_dsn} });
    my $page = sql_select_one('SELECT * FROM page WHERE id=? LIMIT 1', param('page_id'));
    # $page->{body} was already sanitized by Filter::Scrubber
    ($page->{body}, my $pager) = sub {
        my $body = shift;
        my $html = Unco::ExtractContent->extract($page->{url}, $body);
        unless (mobile_agent()->is_non_mobile) {
            # 画像を表示しない
            $html =~ s{<img[^>]+src=['"]([^'">]+)['"][^>]*>}{
                sprintf '<div><a href="%s">[IMG]</a></div>', escape_html($1)
            }ige;
        }
        my @pages = HTML::Split->split(html => $html, length => 2048);
        my $page = param('page')||1;
        my $ret = Text::MicroTemplate::encoded_string($pages[$page - 1]);
        my $pager = Data::Page->new(scalar(@pages), 1, $page);
        return ($ret, $pager);
    }->($page->{body});

    render_and_print(
        'tmpl/page.mt',
        $page,
        $pager,
    );
}

