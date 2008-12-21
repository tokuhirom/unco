use MENTA::Controller;

sub run {
    # XXX このへんの設定がもうちょいすっきりかけるといいね
    sql_dbh(@{ config()->{application}->{sql_dsn} });
    my $feeds = sql_select_all('SELECT * FROM feed ORDER BY id ASC');
    for my $feed (@$feeds) {
        ($feed->{entries}, undef) = sql_select_paginate('SELECT * FROM entry WHERE feed=? ORDER BY id DESC', [$feed->{id}], {rows => 3, page => 1});
    }

    render_and_print(
        'tmpl/root.mt',
        $feeds,
    );
}
