package Unco::ExtractContent;
use strict;
use warnings;
use HTML::ExtractContent;
use HTML::TreeBuilder::XPath;

if ($ENV{DEBUG}) {
    *DEBUG = sub { warn @_ };
} else {
    *DEBUG = sub { }
}

# HTML::ExtractContent でうまくとれないサイトとかは、人力でがんばる
# TODO: LDR Full Feed の wedata つかう?
my @extract_map = (
    qr{^http://twitter\.com/[^/]+/status/\d+$} => 'id("content")',
    qr{^http://kanasoku\.blog82\.fc2\.com/blog-entry-\d+\.html$} => '//div[@class="entry"]',
    qr{^http://alfalfa\.livedoor\.biz/archives/\d+\.html$} => '//div[@class="blogbody"]/div[@class="main" or @class="mainmore"]',
);
my $extractor = HTML::ExtractContent->new;

sub extract {
    my ($class, $link, $body) = @_;
    die "missing url"  unless $link;
    die "missing body" unless $body;
    if ($body =~ m{<!--\s+google_ad_section_start\s+-->(.+)<!--\s+google_ad_section_end\s+-->}os) {
        DEBUG("GOOGLE AD SECTION $link");
        return $1;
    }
    my @map = @extract_map;
    while (my ($re, $xpath) = splice(@map, 0, 2)) {
        if ($link =~ $re) {
            DEBUG("XPATH $link");
            my $tree = HTML::TreeBuilder::XPath->new;
            $tree->parse_content($body);
            my @contents = $tree->findnodes($xpath);
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
    DEBUG("$extractor $link");
    return $extractor->extract( $body )->as_html;
}

1;
