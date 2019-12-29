{extends designs/site.tpl}

{block title}{_ "Mission"} &mdash; {$dwoo.parent}{/block}

{block content}
    <h2>{_ "Our mission"}</h2>

{*    {_("Brigade_mission_body_markdown")|markdown}
<hr>
    {_("[Code for America](http://www.codeforamerica.org/) is a 501(c)3
non-profit that envisions a government by the people, for the people,
that works in the 21st century.

Our programs change how we participate in government by:

- Connecting citizens and governments to design better services,
- Encouraging low-risk settings for innovation; and,
- Supporting a competitive civic tech marketplace.")|markdown}
<hr>
*}

    {if Emergence\Locale::getRequestedLocale() == 'hr_HR.utf8'}
        <p>Programiraj za Hrvatsku (engl. Code for Croatia, skraćeno CfC) je ekspertna skupina za uključenost građana u lokalne aktivnosti; nacionalna mreža građanski orijentiranih volontera, koji svojim vještinama doprinose u korištenju interneta kao platforme za javne službe, državnu upravu i građanske usluge.</p>

    <p>Svrha ove ekspertne skupine je izrada i održavanje lokalnih primjera zajedničkih ciljeva i strateških ishoda:</p>
    <ul>
        <li>Javne službe i državna uprava koriste tehnologiju efikasnije,</li>
        <li>Građani i zajednica rješavaju civilne probleme,</li>
        <li>Gradovi zajedno surađuju za bolje rezultate, i,</li>
        <li>Građanske aplikacije su građene na povezanim, otvorenim podacima.</li>
    </ul>
    {else}
 
     <p>Code for Croatia is a non-profit expert group that envisions a government by the people, for the people, that works in the 21st century.</p>

    <p>Our programs change how we participate in government by:</p>
    <ul>
        <li>Connecting citizens and governments to design better services,</li>
        <li>Encouraging low-risk settings for innovation; and,</li>
        <li>Supporting a competitive civic tech marketplace.</li>
    </ul>

    {/if}

    <p>
        <center>
            {if $.User}
            <a href="/about-us" class="btn btn-success">{_ "About us"}</a> <a href="{tif $.User ? '/projects' : '/register'}" class="btn btn-primary">{_ "Start Hacking"}</a>
            {else}
            <a href="/about-us" class="btn btn-success">{_ "About us"}</a> <a href="{tif $.User ? '/projects' : '/register'}" class="btn btn-danger">{_ "Register with the Brigade!"}</a>
            {/if}
        </center>
    </p>

    <!-- CookieBot conset, for more see here https://cybot.uservoice.com/knowledgebase/articles/614733-iframe-cookie-consent-with-youtube-example -->
    <div class="cookieconsent-optout-marketing">
        Please <a href="javascript:Cookiebot.renew()">accept marketing cookies</a> to watch this video.
    </div>
    <div style="position: relative;padding-bottom: 56.25%;padding-top: 30px; height: 0; overflow: hidden;"><iframe data-cookieconsent="marketing" style="position: absolute;top: 0;left: 0;width: 100%;height: 100%;" width="560" height="315" data-src="//www.youtube.com/embed/kDFhzNfd-bg?rel=0" frameborder="0" allowfullscreen></iframe></div>
    
{/block}