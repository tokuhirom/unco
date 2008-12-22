package Unco::ExtractContent;
use strict;
use warnings;
use HTML::ExtractContent;
use HTML::TreeBuilder::XPath;

# HTML::ExtractContent でうまくとれないサイトとかは、人力でがんばる
# TODO: LDR Full Feed の wedata つかう?
my @extract_map = (
    qr{^http://twitter\.com/[^/]+/status/\d+$} => 'id("content")',
    qr{^http://kanasoku\.blog82\.fc2\.com/blog-entry-\d+\.html$} => '//div[@class="entry"]',
    qr{^http://d\.hatena\.ne\.jp/[^/]+/\d+/p\d+$} => '//div[@class="body"]',
);
my $extractor = HTML::ExtractContent->new;

sub extract {
    my ($class, $link, $body) = @_;
    die "missing url"  unless $link;
    die "missing body" unless $body;
    my @map = @extract_map;
    while (my ($re, $xpath) = splice(@map, 0, 2)) {
        if ($link =~ $re) {
            my $tree = HTML::TreeBuilder::XPath->new;
            $tree->parse_content($body);
            my ($content, ) = $tree->findnodes($xpath);
            $content = $content->as_HTML(q{<>&"'}) if $content;
            $tree = $tree->delete;
            return $content;
        }
    }
    return $extractor->extract( $body )->as_html;
}

1;
