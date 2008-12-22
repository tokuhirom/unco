package Plagger::Plugin::Store::Unco;
use strict;
use warnings;
use base qw/Plagger::Plugin/;
use Unco::Schema;

sub register {
    my ( $self, $c ) = @_;

    $self->{schema} = Unco::Schema->connect( @{ $self->conf->{connect_info} } ) or die "cannot connect";

    $c->register_hook( $self, 'publish.feed' => \&store, );
}

sub store {
    my ( $self, $c, $args ) = @_;

    # feed
    my $schema = $self->{schema};
    my $feed = $schema->resultset('Feed')->find_or_new({
        rss_url => $args->{feed}->link,
    });

    for my $attr (qw/title/) {
        if (my $val = $args->{feed}->$attr) {
            $feed->$attr($val);
        }
    }
    $feed->insert_or_update if !$feed->in_storage or $feed->is_changed;

    # page & entry
    for my $feed_entry ( @{ $args->{feed}->entries } ) {
        # page
        my $page = $schema->resultset('Page')->find_or_new({
            url => $feed_entry->link,
        });

        for my $attr (qw/title body/) {
            if (defined(my $val = $feed_entry->$attr)) {
                $page->$attr($val);
            }
        }
        $page->date( $feed_entry->{date} || Plagger::Date->now() );
        if (defined(my $count = $feed_entry->meta->{hatenabookmark_users})) {
            $page->hatena_bookmark_count( $count );
        } else {
            warn "WHHHEE??";
        }
        $page->insert_or_update if $page->is_changed;

        # entry
        my $entry = $schema->resultset('Entry')->find_or_new({
            feed => $feed->id,
            page => $page->id,
        });
        $entry->date( $feed_entry->{date} || Plagger::Date->now() );
        $entry->insert_or_update;
    }
}

1;
__END__

=head1 SYNOPSIS

    $ sqlite3 /path/to/unco.db < sql/unco.sqlite.sql

    - module: Store::DBIC
      config:
        connect_info: [ 'dbi:SQLite:/path/to/unco.db', ]

=head1 UPDATE SCHEMA

    perl -MDBIx::Class::Schema::Loader=dump_to_dir:/foo/bar -e ’My::Schema->connection("dbi:Pg:dbname=foo", ...)’

