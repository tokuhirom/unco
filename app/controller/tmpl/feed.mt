? my ($feed, $entries, $pager) = @_;
?= render('tmpl/header.mt')

<div class="title"><?= $feed->{title} ?></div>

<ul>
<? for my $entry (@{$entries}) { ?>
    <li><a href="<?= uri_for('entry', {entry_id => $entry->{id}}) ?>"><?= $entry->{title} ?></a></li>
<? } ?>
</ul>

<hr class="hr" />

<div class="pager">
? if ($pager->{page} == 1) {
前
? } else {
<a href="<?= uri_for('feed', { feed_id => $feed->{id}, page => $pager->{page} - 1 }) ?>" rel="prev" accesskey="4">前</a>
? }
|
? if ($pager->{has_next}) {
<a href="<?= uri_for('feed', { feed_id => $feed->{id}, page => $pager->{page} + 1 }) ?>" rel="next" accesskey="6">次</a>
? } else {
次
? }
</div>

<div class="footer">
<a href="<?= uri_for('index', {t => time()}) ?>" accesskey="0">go to top</a><br />
Powered by <a href="http://plagger.org/">Plagger</p>
</div>

?= render('tmpl/footer.mt')
