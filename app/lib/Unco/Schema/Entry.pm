package Unco::Schema::Entry;
use base 'DBIx::Class';
use strict;
use warnings;

__PACKAGE__->load_components(qw/PK::Auto UTF8Columns Core/);
__PACKAGE__->table('entry');

__PACKAGE__->add_columns(
    qw/id feed page date/
);
__PACKAGE__->set_primary_key('id');

__PACKAGE__->belongs_to( feed => 'Unco::Schema::Feed' );

__PACKAGE__->inflate_column(
    date => {
        inflate =>
            sub { DateTime->from_epoch( epoch => shift, time_zone => 'local' ) },
        deflate => sub { shift->set_time_zone('local')->epoch },
    }
);

1;
