use MENTA::Controller;

sub run {
    # XXX このへんの設定がもうちょいすっきりかけるといいね
    sql_dbh(@{ config()->{application}->{sql_dsn} });
    my $feeds = sql_select_all('SELECT * FROM feed ORDER BY id ASC');
    for my $feed (@$feeds) {
        ($feed->{pages}, undef) = sql_select_paginate('SELECT page.id, page.title, page.hatena_bookmark_count FROM page INNER JOIN entry ON (page.id=entry.page) WHERE entry.feed=? ORDER BY entry.id DESC', [$feed->{id}], {rows => 3, page => 1});
    }

    render_and_print(
        'tmpl/index.mt',
        $feeds,
    );
}
