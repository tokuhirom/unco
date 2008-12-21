use MENTA::Controller;
use HTML::ExtractContent;
use Text::MicroTemplate;

my $extractor = HTML::ExtractContent->new;

sub run {
    # XXX このへんの設定がもうちょいすっきりかけるといいね
    sql_dbh(@{ config()->{application}->{sql_dsn} });
    my $entry = sql_select_one('SELECT * FROM entry WHERE id=? LIMIT 1', param('entry_id'));
    # $entry->{body} was already sanitized by Filter::Scrubber
    $entry->{body} = Text::MicroTemplate::encoded_string($extractor->extract($entry->{body})->as_html);

    render_and_print(
        'tmpl/entry.mt',
        $entry,
    );
}
