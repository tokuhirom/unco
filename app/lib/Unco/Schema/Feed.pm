package Unco::Schema::Feed;
use base 'DBIx::Class';
use strict;
use warnings;

__PACKAGE__->load_components(qw/PK::Auto UTF8Columns Core/);
__PACKAGE__->table('feed');

__PACKAGE__->add_columns(
    qw/id rss_url title/
);
__PACKAGE__->set_primary_key('id');
__PACKAGE__->utf8_columns(qw/title/);

__PACKAGE__->has_many( entries => 'Unco::Schema::Entry', 'feed' );

1;
