use Test::Base;
use Test::LongString;
use URI::Fetch;
use Unco::ExtractContent;
use Cache::File;
use HTTP::Response::Encoding;
use Encode;
use utf8;

plan tests => 13;

run {
    my $block = shift;
    mkdir '/tmp/test_test_test';
    my $cache = Cache::File->new( cache_root =>'/tmp/test_test_test/');
    my $res = URI::Fetch->fetch($block->input, Cache => $cache) or die URI::Fetch->errstr;
    local $_ = Unco::ExtractContent->extract($block->input, decode_content($res));
    eval $block->expected;
    die $@ if $@;
};

sub decode_content {
    my $res = shift;
    my $content = $res->content;

    my $charset;

    # 1) if it is HTTP response, get charset from HTTP Content-Type header
    $charset = ($res->content_type =~ /charset=([\w\-]+)/)[0];

    # 2) if there's not, try XML encoding
    $charset ||= ( $content =~ /<\?xml version="1.0" encoding="([\w\-]+)"\?>/ )[0];

    # 3) if there's not, try META tag
    $charset ||= ( $content =~ m!<meta http-equiv="Content-Type" content=".*charset=([\w\-]+)"!i )[0];

    # 4) if there's not still, try Detector/Guess
    # $charset ||= $Detector->($content);

    # 5) falls back to UTF-8
    $charset ||= 'utf-8';

    return Encode::decode($charset, $content);
}

__END__

===
--- input: http://alfalfa.livedoor.biz/archives/51408284.html
--- expected
contains_string $_, '童貞の俺にマジレスきぼん';
contains_string $_, 'ちなみにあまり目標値を高く設定すると、オーバーシュートして逝く恐れがあるので、';
lacks_string $_, 'まぁ全部演技なんだけどな';
lacks_string $_, 'コメントありがとう御座います';

===
--- input: http://d.hatena.ne.jp/fk_2000/20081222/p1
--- expected
contains_string $_, '上から目線でも悪意や他意が無ければ反感買うことも無いし、むしろ上から目線キャラを求めている人が多いんだよね。';
lacks_string $_, 'hatena-asin-recommend';

===
--- input: http://d.hatena.ne.jp/repon/20081222/p2
--- expected
contains_string $_, 'コーヒーオフ、ありがとうございました';
lacks_string $_, 'リンク元';
lacks_string $_, 'hatena-asin-recommend';

===
--- input: http://kanasoku.blog82.fc2.com/blog-entry-9289.html
--- expected
contains_string $_, 'これ、進研ゼミでやった問題だ！';
lacks_string $_, 'あんてな情報';

===
--- input: http://news23vip.blog109.fc2.com/blog-entry-1532.html
--- expected
contains_string $_, '人を選ぶと思うけど好きな人はすごく好きになると思う';
lacks_string $_, '逆アクセスランキング';

