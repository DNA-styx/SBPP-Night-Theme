	</div></div></div>
	<div id="footer">
		<div id="mainwrapper" style="text-align: center;">
			<a href="https://nmng.uk/" target="_blank"><img src="images/favicon.png" alt="Back to Forums" border="0" /></a><br/>
			<div id="footqversion" style="line-height: 20px;"><a style="color: #00d149" href="https://sbpp.github.io/" target="_blank">SourceBans++</a> {$version}{$git}</div>
		    <span style="line-height: 20px;">Theme by <a href="https://nmng.uk/sbpp" target="_blank" style="color: #00d149">tuberculosis</a></span><br />
		</div>
	</div>
</div>
<script>

{$query}

{literal}
window.addEvent('domready', function(){

	ProcessAdminTabs();

    var Tips2 = new Tips($('.tip'), {
        initialize:function(){
            this.fx = new Fx.Style(this.toolTip, 'opacity', {duration: 300, wait: false}).set(0);
        },
        onShow: function(toolTip) {
            this.fx.start(1);
        },
        onHide: function(toolTip) {
            this.fx.start(0);
        }
    });
    var Tips4 = new Tips($('.perm'), {
        className: 'perm'
    });
});
{/literal}
</script>
</body>
</html>
