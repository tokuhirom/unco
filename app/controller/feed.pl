use MENTA::Controller;

sub run {
    # XXX このへんの設定がもうちょいすっきりかけるといいね
    sql_dbh(@{ config()->{application}->{sql_dsn} });
    my $feed_id = param('feed_id') or die "missing feed_id";
    my $feed = sql_select_one('SELECT * FROM feed WHERE id=?', $feed_id);
    # page.body はデバッグ用にだしてる
    my ($pages, $pager) = sql_select_paginate('SELECT page.id, page.title, page.hatena_bookmark_count, page.body FROM page INNER JOIN entry ON (page.id=entry.page) WHERE entry.feed=? ORDER BY entry.id DESC', [$feed->{id}], {rows => 20, page => param('page')||1});

    render_and_print(
        'tmpl/feed.mt',
        $feed,
        $pages,
        $pager,
    );
}
