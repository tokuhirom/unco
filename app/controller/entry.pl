use MENTA::Controller;
use HTML::Split;
use Text::MicroTemplate;
use Data::Page;

sub run {
    # XXX このへんの設定がもうちょいすっきりかけるといいね
    sql_dbh(@{ config()->{application}->{sql_dsn} });
    my $entry = sql_select_one('SELECT * FROM entry WHERE id=? LIMIT 1', param('entry_id'));
    # $entry->{body} was already sanitized by Filter::Scrubber
    ($entry->{body}, my $pager) = sub {
        my $body = shift;
        my $html = _extract($entry->{link}, $body);
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
    }->($entry->{body});

    render_and_print(
        'tmpl/entry.mt',
        $entry,
        $pager,
    );
}

# -------------------------------------------------------------------------

use HTML::ExtractContent;
use HTML::TreeBuilder::XPath;

# HTML::ExtractContent でうまくとれないサイトとかは、人力でがんばる
# TODO: LDR Full Feed の wedata つかう?
my @extract_map = (
    qr{^http://twitter\.com/[^/]+/status/\d+$} => 'id("content")',
);
my $extractor = HTML::ExtractContent->new;
sub _extract {
    my ($link, $body) = @_;
    while (my ($re, $xpath) = splice(@extract_map, 0, 2)) {
        if ($link =~ $re) {
            my $tree = HTML::TreeBuilder::XPath->new;
            $tree->parse_content($body);
            my ($content, ) = $tree->findnodes($xpath);
            $content = $content->as_HTML if $content;
            $tree = $tree->delete;
            return $content;
        }
    }
    return $extractor->extract( $body )->as_html;
}

