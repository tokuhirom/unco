package Plagger::Plugin::Filter::HatenaAnonDiary;
use strict;
use warnings;
use base qw( Plagger::Plugin );

sub register {
    my($self, $context) = @_;
    $context->register_hook(
        $self,
        'update.entry.fixup' => \&update,
    );
}

sub update {
    my($self, $context, $args) = @_;

    if ($args->{entry}->permalink =~ m{^http://anond\.hatelabo\.jp/}) {
        my $title = $args->{entry}->title;
        $title .= " - anond";
        $args->{entry}->title($title);
    }
}

1;

# 増田のフィードの末尾に " - anond" を付加するフィルタ。
# なぜつけないのか理解にくるしむんだぜ。

