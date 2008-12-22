? my ($page, $pager) = @_;
?= render('tmpl/header.mt')

<div class="title"><?= $page->{title} ?></div>
<div class="body"><?= $page->{body} ?></div>
<div class="link"><a href="http://mgw.hatena.ne.jp/?<?= $page->{url} ?>"><?= $page->{url} ?></a><? if ($page->{hatena_bookmark_count}) { ?>[<?= $page->{hatena_bookmark_count} ?>users]<? } ?></div>

<hr class="hr" />

? if ($pager->last_page != 1) {
    <div class="pager">
    <? if ($pager->previous_page) { ?>
        <a href="<?= uri_for('page', { page_id => $page->{id}, page => $pager->previous_page }) ?>" rel="prev" accesskey="4">&lt;前</a>
    <? } else { ?>
    &lt;前
    <? } ?>
    |
    <? if ($pager->next_page) { ?>
    <a href="<?= uri_for('page', { page_id => $page->{id}, page => $pager->next_page }) ?>" rel="next" accesskey="6">次&gt;</a>
    <? } else { ?>
    次&gt;
    <? } ?>
    (<?= $pager->current_page ?>/<?= $pager->last_page ?>)
    </div>

    <hr class="hr" />
? }

<div class="footer">
<a href="<?= uri_for('index', {t => time()}) ?>" accesskey="0">go to top</a>
</div>

?= render('tmpl/footer.mt')
