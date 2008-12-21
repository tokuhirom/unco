use MENTA::Controller;

sub run {
    # XXX このへんの設定がもうちょいすっきりかけるといいね
    sql_dbh(@{ config()->{application}->{sql_dsn} });
    my $feed_id = param('feed_id') or die "missing feed_id";
    my $feed = sql_select_one('SELECT * FROM feed WHERE id=?', $feed_id);
    my ($entries, $pager) = sql_select_paginate('SELECT * FROM entry WHERE feed=? ORDER BY id DESC', [$feed_id], {rows => 10, page => param('page') || 1});

    render_and_print(
        'tmpl/feed.mt',
        $feed,
        $entries,
        $pager,
    );
}
