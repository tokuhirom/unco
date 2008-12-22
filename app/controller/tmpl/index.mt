? my ($feeds, ) = @_;
?= render('tmpl/header.mt')

<div class="title">unco.</div>

? for my $feed (@$feeds) {
<div class="feed">
    <div class="feed_title"><?= $feed->{title} ?></div>
    <ul>
    <? for my $page (@{$feed->{pages}}) { ?>
        <li><a href="<?= uri_for('page', {page_id => $page->{id}}) ?>"><?= $page->{title} ?></a><? if ($page->{hatena_bookmark_count}) { ?>[<?= $page->{hatena_bookmark_count} ?>users]<? } ?></li>
    <? } ?>
    </ul>
    <div class="more"><a href="<?= uri_for('feed', {feed_id => $feed->{id}}) ?>">more</a></div>
</div>
<hr size="1" />
? }

<hr class="hr" />

<div class="footer">
<a href="<?= uri_for('index#top', {t => time()}) ?>" accesskey="0">go to top[0]</a><br />
Powered by <a href="http://plagger.org/">Plagger</p>
</div>

?= render('tmpl/footer.mt')
