{* Optimized Analytics loader (uncomment and change UA-XXXXX-X to be your site's ID) goo.gl/PpmmQ *}
<script data-cookieconsent="statistics">
    var _gaq=[['_setAccount','UA-47341762-4'],['_trackPageview']];(function(d,t){
	var g=d.createElement(t),s=d.getElementsByTagName(t)[0];
	g.async=1;g.src='//www.google-analytics.com/ga.js';s.parentNode.insertBefore(g,s)
	}(document,'script'))
</script>
{*
{$clickySiteId = 12345}

<script type="text/javascript" data-cookieconsent="statistics">
{if $.User}
    var clicky_custom = {
		session: {
			username: '{$.User->Username}'
			,email: '{$.User->Email}'
			,full_name: '{$.User->FullName}'
		}
	};
{/if}

var clicky_site_ids = clicky_site_ids || [];
clicky_site_ids.push({$clickySiteId});
(function() {
	var s = document.createElement('script');
	s.type = 'text/javascript';
	s.async = true;
	s.src = '//static.getclicky.com/js';
	( document.getElementsByTagName('head')[0] || document.getElementsByTagName('body')[0] ).appendChild( s );
})();
</script>
<noscript data-cookieconsent="statistics"><p><img alt="Clicky" width="1" height="1" src="//in.getclicky.com/{$clickySiteId}ns.gif" /></p></noscript>
*}