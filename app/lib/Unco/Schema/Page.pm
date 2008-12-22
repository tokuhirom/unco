package Unco::Schema::Page;
use base 'DBIx::Class';
use strict;
use warnings;

__PACKAGE__->load_components(qw/PK::Auto UTF8Columns Core/);
__PACKAGE__->table('page');

__PACKAGE__->add_columns(
    qw/id url title body hatena_bookmark_count date/
);
__PACKAGE__->set_primary_key('id');
__PACKAGE__->utf8_columns(qw/title/);

__PACKAGE__->inflate_column(
    date => {
        inflate =>
            sub { DateTime::Lite->from_epoch( epoch => shift, time_zone => 'local' ) },
        deflate => sub { shift->set_time_zone('local')->epoch },
    }
);

1;
