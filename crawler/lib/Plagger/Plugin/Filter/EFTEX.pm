package Plagger::Plugin::Filter::EFTEX;
use strict;
use warnings;
use base qw( Plagger::Plugin );
use JSON::XS qw/decode_json/;
use Plagger::Util qw/decode_content/;
use Plagger::UserAgent;
use HTML::ExtractContent;
use HTML::TreeBuilder::XPath;

sub init {
    my $self = shift;
    $self->SUPER::init(@_);

    my $ua = Plagger::UserAgent->new();
    my $source_urls = $self->conf->{auto_pagerize_urls} or die "missing auto_pagerize_urls";
    for my $url (@{ $source_urls }) {
        my $res = $ua->fetch($url);
        $res->is_success or die "cannot get $url";
        push @{$self->{pagerize_meta}}, @{decode_json($res->content)};
    }

    $self->{ua} = Plagger::UserAgent->new;
    $self->{extractor} = HTML::ExtractContent->new;
}

sub register {
    my($self, $context) = @_;
    $context->register_hook(
        $self,
        'update.entry.fixup' => \&_filter,
    );
}

sub _filter {
    my($self, $context, $args) = @_;

    # HTML まるっともってきたときの処理
    if ($args->{entry}->body() =~ /<html/) {
        Plagger->context->log(debug => "extract by EFTEX");
        my $html = $args->{entry}->body;
        $args->{entry}->body(_extract($self->{extractor}, $self->{pagerize_meta}, $html, $args->{entry}->link));
    }

    return 1;
}

sub _extract {
    my ($extractor, $auto_pagerize_meta, $html, $link) = @_;

    # auto pagerize
    for my $row (@$auto_pagerize_meta) {
        if ($link =~ /$row->{data}->{url}/) {
            Plagger->context->log(debug => "extract by EFTEX -autopagerize");
            my $tree = HTML::TreeBuilder::XPath->new();
            $tree->parse_content($html);
            my @contents = $tree->findnodes($row->{data}->{pageElement});
            if (@contents) {
                my $res = join "\n", map { $_->as_HTML(q{<>&"'}) } @contents;
                $tree = $tree->delete;
                return $res;
            } else {
                $tree = $tree->delete;
                next;
            }
        }
    }

    # fallback to HTML::ExtractContent
    Plagger->context->log(debug => "extract by EFTEX - huristic");
    return $extractor->extract( $html )->as_html;
}

1;
__END__

Plagger の EFT を hack して、EFT のルールにない場合でもそれなりに見れるようにする。
unco のためにかいたので、利用にいくつか制約がある。unco でつかうぶんには問題ないけど。

EFT で store_html_on_failure をオンにしなくてはならないことに注意せよ。
EFT より後に設定する必要があることにも注意せよ。

処理のフローは下記のとおり。

    - もし HTML 全文フェッチがかかっている場合
    - AutoPagerize に fallback
    - それでだめなら HTML::ExtractContent に fallback

LICENSE = same as perl

