{load_templates subtemplates/locale-selector.tpl}
<footer class="site">
    {capture assign=laddrLink}<a href="http://laddr.us">Laddr</a>{/capture}
    {capture assign=cfpLink}<a href="http://codeforphilly.org">Code for Philly</a>{/capture}
    {sprintf(_("Powered by %s &mdash; a %s project."), $laddrLink, $cfpLink)}
    <br>
    {localeSelector}

    {if $responseID == 'home'}
    <br>
    {capture assign=homepagePhoto}<a href="http://www.flickr.com/people/nsarnavka" target="_blank">N-Sarn</a>{/capture}
    {capture assign=otherIcons}<a href="http://thenounproject.com/">The Noun Project</a>{/capture}
    {sprintf(_("Zahvale %s za fotografiju s naslovnice. Neke slike je ustupio %s."), $homepagePhoto, $otherIcons)}
    {/if}

    {if $responseID == 'blogPost'}
    <br>
    {capture assign=defaultLicense}<a href="https://creativecommons.org/publicdomain/zero/1.0/" target="_blank">CC0 Public Domain</a>{/capture}
    {sprintf(_("Content on this site is licensed under %s. Free to use, no attribution required unless otherwise specified."), $defaultLicense)}
    {/if}

</footer>

<!-- doorbell.io -->
<script type="text/javascript">
    window.doorbellOptions = {
        appKey: 'J5u1hGhqBUKgBldBtrw6PF1w87djnxyGqPlksF6Dy14xzi9Qqz17nCxUNDNJUpo1'
    };
    (function(w, d, t) {
        var hasLoaded = false;
        function l() { if (hasLoaded) { return; } hasLoaded = true; window.doorbellOptions.windowLoaded = true; var g = d.createElement(t);g.id = 'doorbellScript';g.type = 'text/javascript';g.async = true;g.src = 'https://embed.doorbell.io/button/7484?t='+(new Date().getTime());(d.getElementsByTagName('head')[0]||d.getElementsByTagName('body')[0]).appendChild(g); }
        if (w.attachEvent) { w.attachEvent('onload', l); } else if (w.addEventListener) { w.addEventListener('load', l, false); } else { l(); }
        if (d.readyState == 'complete') { l(); }
    }(window, document, 'script'));
</script>