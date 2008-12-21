? my ($entry, ) = @_;
?= render('tmpl/header.mt')

<div class="title"><?= $entry->{title} ?></div>
<div class="body"><?= $entry->{body} ?></div>

<hr class="hr" />

<div class="footer">
<a href="<?= uri_for('index', {t => time()}) ?>" accesskey="0">go to top</a>
</div>

?= render('tmpl/footer.mt')
