? my ($entry, $pager) = @_;
?= render('tmpl/header.mt')

<div class="title"><?= $entry->{title} ?></div>
<div class="body"><?= $entry->{body} ?></div>
<div class="link"><a href="http://mgw.hatena.ne.jp/?<?= $entry->{link} ?>"><?= $entry->{link} ?></a></div>

<hr class="hr" />

? if ($pager->last_page != 1) {
    <? if ($pager->previous_page) { ?>
        <a href="<?= uri_for('entry', { entry_id => $entry->{id}, page => $pager->previous_page }) ?>" rel="prev" accesskey="4">&lt;前</a>
    <? } else { ?>
    &lt;前
    <? } ?>
    |
    <? if ($pager->next_page) { ?>
    <a href="<?= uri_for('entry', { entry_id => $entry->{id}, page => $pager->next_page }) ?>" rel="next" accesskey="6">次&gt;</a>
    <? } else { ?>
    次&gt;
    <? } ?>
    (<?= $pager->current_page ?>)

    <hr class="hr" />
? }

<div class="footer">
<a href="<?= uri_for('index', {t => time()}) ?>" accesskey="0">go to top</a>
</div>

?= render('tmpl/footer.mt')
