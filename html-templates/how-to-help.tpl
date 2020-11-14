{extends designs/site.tpl}

{block title}{_ "How to Help"} &mdash; {$dwoo.parent}{/block}

{block content}
    <h2>{_ "How to Help"}</h2>
    <br>
       
    {if Emergence\Locale::getRequestedLocale() == 'hr_HR.utf8'}

    {if $.User}
    <h3>{$.User->FirstName}, jesi li civilni haker?</h3>
    {else}
    <h3>Da li si civilni haker?</h3>{/if}
    <p>Možda će se nekome “civilno” i “haker” u istom skupu riječi činiti nespojivim – ali riječ je upravo o tome, “hakerima” kojima je u cilju surađivati u stvaranju, građenju i inovaciji u rješavanju izazova u svom susjedstvu, gradu, općini, županiji ili državi.</p>
    
    <blockquote><i>Građanska inovacija je tehnološka ili metodološka nova ideja koja proispituje i unaprjeđuje postojeće procese i sustave i time poboljšava život građana ili djelovanje zajednice u kojoj žive.</i> &mdash; Alex Howard</blockquote>
    
    <p>Civilno hakiranje je aktivnost građana čiji je rezultat građanska inovacija – to može biti u obliku pridonošenja svojih vještina u pisanju dijelova otvorenog koda ili u sudjelovanju u javnom savjetovanju s gradskim službenicima o tome kako nove odluke/uredbe grada mogu pomoći poboljšati susjedstvo.</p>
    
    <blockquote><i>Hakiranje je samo brz način izgradnje nečega ili testiranje granica što se može napraviti.</i> &mdash; Mark Zuckerberg</blockquote>
    
    <h4>Civilno hakiranje je…</h4>
    <p>
    <li>kada se kreativni, najčešće tehnološki pristup koristi pri rješavanju problema građana;
    <li>kada građani izrađuju vlastite aplikacije koje daju drugima jednostavne i opipljive prednosti u životu u njihovom susjedstvu/zajednici;
    <li>kada surađujete s drugima u stvaranju, izgradnji i inovaciji korištenjem javnih podataka, koda i tehnologije kako biste riješili izazove bitne u vašem susjedstvu, gradovima, županijama i državi.
    </p>
    <p>Ukratko, to je primjena novih alata i pristupa u poboljšavanju procesa i sustava vlade za sve.</p><br />
    
          <!-- Three columns of text -->
<div class="container">
    <div class="row">
        <div class="col-lg-4">
          <center><img src="img/thenoun/community.png"></center>
        </div>
        <div class="col-lg-4">
          <center><img src="img/thenoun/captain.png"></center>
        </div>
        <div class="col-lg-4">
          <center><img src="https://raw.githubusercontent.com/openzagreb/landing-page/master/images/oz_logo_grayscale.png"></center>
        </div>
    </div>
      
      <!-- Three columns of text -->
    <div class="row">
        <div class="col-lg-4">
          <center><h2>Pridruži nam se online</h2></center>
          <p>
            Otvorena komunikacija online je poželjna, <a href="https://codeforcroatia.typeform.com/to/jQxkpR">kontaktiraj nas</a>. Možeš se prijaviti za primanje mailova na našoj moderiranoj <a href="http://eepurl.com/Ng_3v">mailing listi</a> gdje ćemo te obavijestiti o bitnim događajima i projektima.</p>
          {if $.User}
          <center><p><a class="btn btn-default" href="/projects">Pogledaj više &raquo;</a></p></center>
          {else}
          <center><p><a class="btn btn-default" href="/register">Pogledaj više &raquo;</a></p></center>
          {/if}
        </div>
        <div class="col-lg-4">
          <center><h2>Pomozi svom gradu</h2></center>
          <p>Želiš bolju zajednicu? I ti možeš pokrenuti grupu u svom gradu! Inspiriraj svoju lokalnu zajednicu i pokaži da mogu promijeniti svoj grad na bolje.
          </p>
          <center><p><a class="btn btn-default" href="/volunteer">Pogledaj više &raquo;</a></p></center>
        </div>
        <div class="col-lg-4">
          <center><h2>Otvoreni Zagreb</h2></center>
          <p>Želiš li se pridružiti Open Zagreb civilnoj grupi? Dođi na opuštene sastanke koje održavamo jednom mjesečno u prostorima kluba Mame u Zagrebu.</p>
          <center><p><a class="btn btn-default" href="/pages/open_zagreb">Pogledaj više &raquo;</a></p></center>
        </div>
      </div>
</div>

<h2>Potrebna pomoć</h2>
<p>Developeri, hakeri, data evangelisti: trebamo pomoć u rješavanju <a href="/help-wanted">ovih problema</a>. Počni kodirati za Hrvatsku!</p>
    
    {else}
    
    <h3>Are you a civic hacker?</h3>
    <p>What comes to mind when you think about <strong>civic hacking</strong>? For many, we associate the idea of hacking with people skimming personal information, breaking into websites, or revealing government secrets.</p>
    <p>However, we like to think of the term in a much more positive context—a civic hacker is someone who uses a minimum of resources and a maximum of brainpower and ingenuity to build, repair, or enhance something in their community. The civic hackers that participate in their respecive local Brigade groups are technologists, civil servants, designers, entrepreneurs, engineers—anybody who is willing to collaborate with others as they address challenges relevant to our neighborhoods, our cities, our states, and our country.</p>

    <h3>{_ "What next"}</h3>
    <p><a href="/projects/create">{_ "Create new project"}</a> {_ "or"} <a href="/projects">{_ "find an existing"}</a> {_ "one to get involved with in our projects directory."}</p>
    <br> 

    {/if}
    

{/block}
