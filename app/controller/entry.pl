use MENTA::Controller;
use HTML::ExtractContent;
use HTML::Split;
use Text::MicroTemplate;
use Data::Page;

my $extractor = HTML::ExtractContent->new;

sub run {
    # XXX このへんの設定がもうちょいすっきりかけるといいね
    sql_dbh(@{ config()->{application}->{sql_dsn} });
    my $entry = sql_select_one('SELECT * FROM entry WHERE id=? LIMIT 1', param('entry_id'));
    # $entry->{body} was already sanitized by Filter::Scrubber
    ($entry->{body}, my $pager) = sub {
        my $body = shift;
        my $html = $extractor->extract( $body )->as_html;
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
