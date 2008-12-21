? my ($feeds, ) = @_;
?= render('tmpl/header.mt')

<div class="title">unco.</div>

? for my $feed (@$feeds) {
<div class="feed">
    <div class="feed_title"><?= $feed->{title} ?></div>
    <ul>
    <? for my $entry (@{$feed->{entries}}) { ?>
        <li><a href="<?= uri_for('entry', {entry_id => $entry->{id}}) ?>"><?= $entry->{title} ?></a></li>
    <? } ?>
    </ul>
    <div class="more"><a href="<?= uri_for('feed', {feed_id => $feed->{id}}) ?>">more</a></div>
</div>
<hr size="1" />
? }

<hr class="hr" />

<div class="footer">
<a href="<?= uri_for('index#top', {t => time()}) ?>" accesskey="0">go to top</a>
Powered by <a href="http://plagger.org/">Plagger</p>
</div>

?= render('tmpl/footer.mt')
