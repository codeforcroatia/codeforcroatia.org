{extends designs/site.tpl}

{block title}{_ "Volunteer"} &mdash; {$dwoo.parent}{/block}

{block content}

{if Emergence\Locale::getRequestedLocale() == 'hr_HR.utf8'}
    
    <center><h1>Volontiraj za nas</h1></center>
    
        <p>
        <strong>Programiraj za Hrvatsku lokalne grupe</strong> su grupe volontera koji rade na rješavanju problema u njihovoj zajednici te kako bi vlasti radile za svoje građane. Jesi li programer, dizajner, tehnologist, organizator u svojoj zajednici, novinar ili javni službenik? Mi te trebamo!
        </p>
        <br>
        
        <center><h2>Programiraj za Hrvatsku. Lokalne grupe.</h2></center>
        <p>
        Građani imaju moć pomoći svojim gradovima u važnim odlukama. Pomozi grupi u svom mjestu:
        <ul>
            <li><h3>grad Zagreb: <a href="/pages/open_zagreb">Open Zagreb</a></h3></li>
            <li>više dolazi uskoro!</li>
        </ul>
        </p>
        <br>
        <center><h3 id="start">Nema tvog mjesta? Započni grupu u svom mjestu.</h3></center>
        <p>
    	Želiš li i ti pomoći svome gradu? Pokreni lokalnu grupu u svom mjestu!
        </p>
        <ul>
            <li>Prvo, reci nam nesto o sebi. Odgovori na pitanja u ovom upitniku i mi cemo te kontaktirati.</li>
            <center><a class="btn btn-large btn-primary" href="/register">{_ "Pokreni lokalnu grupu"}</a></center>
            <li>Procitaj nase smjernice o tome kako pokrenuti lokalnu grupu.</li>
            <center><a class="btn btn-large btn-primary" href="/smjernice">{_ "Smjernice za novu grupu"}</a></center>
        </ul>
        <br>
        
    	<center><h3>Volontiraj. Za promjenu.</h3></center>
        <p>Volontirati u svojoj zajednici možeš i ti!</p>
        <p>Kako bi ovo moglo funkcionirati, trebamo <strong>tebe</strong>. Bez obzira jesi li dizajner, developer, novinar, mladi poduzetnik ili netko s puno ideja - stvaranje i pokretanje korisnih aplikacija za opće dobro sada je udaljen samo jedan klik. Nemoj čekati, <a href="/register">uključi se</a> već danas i pomozi nam u ostvarenju naših ciljeva.</p>
        <br>
<div class="container">
    <div class="row">
        <div class="col-lg-4">
          <center><img src="img/thenoun/icon_41377_tg.png">
          <h4>Volontiraj za povezivanje</h4></center>
          <!-- ><p>Komuniciramo i surađujemo s lokalnom samoupravom kako bismo otkrili važne gradske probleme.</p> -->
          <!-- ><p><a class="btn" href="#">View details »</a></p> -->
        </div>
        <div class="col-lg-4">
          <center><img src="img/thenoun/icon_18157_tg.png">
          <h4>Volontiraj za vještine</h4></center>
          <!-- ><p>Dizajn nije samo vizualno rješenje. Razmišljanje o dizajnu oblikuje naše ideje i kako ćemo utjecati na problem. </p> -->
          <!-- ><p><a class="btn" href="#">View details »</a></p> -->
        </div>
        <div class="col-lg-4">
          <center><img src="img/thenoun/icon_18986_tg.png">
          <h4>Volontiraj za promjenu</h4></center>
          <!-- ><p>Radimo naporno kako bismo kreirali rješenja koja funkcioniraju u stvarnosti. Prioritet su nam dobra volja i utjecaj na građane.</p> -->
          <!-- ><p><a class="btn" href="#">View details »</a></p> -->
        </div>
    </div>
</div>
        <br>
        <center><h3>Civilno društvo. Demokracija.</h3></center>
        <p>
        Jednu od osnovnih vrijednosti demokracije predstavlja civilno društvo i građani koji se aktivno uključuju u sva područja društvenog djelovanja. 
        </p>
        <p>
        Biti aktivan i biti odgovoran dvije su osnovne vrline civilnog društva. Kao takvo, civilno društvo ima važnu ulogu u razvoju demokracije, osobito u zemljama mlade demokracije kao što je Hrvatska. Organizacije civilnog društva i inicijative građana predstavljaju slobodan oblik udruživanja građana što je jedna od ključnih odrednica moderne demokracije. Osnovne karakteristike različitih oblika udruživanja građana u demokraciji su neovisnost, dobrovoljnost i pluralizam.
    	</p>
        <br>
        <center><h3>Programiraj za Hrvatsku. Lokalne grupe.</h3></center>
        <p>
        Građani imaju moć pomoći svojim gradovima u važnim odlukama. Pomozi grupi u svom mjestu:
        <ul>
            <li>grad Zagreb: <a href="/pages/open_zagreb">Open Zagreb</a></li>
            <li>više dolazi uskoro!</li>
        </ul>
        </p>
        <br>
        <center><h3 id="start">Nema tvog mjesta? Započni grupu u svom mjestu.</h3></center>
        <p>
		Želiš li i pomoći svome gradu? Pokreni lokalnu grupu u svom mjestu!
        </p>
        <ul>
            <li>Prvo, reci nam nesto o sebi. Odgovori na pitanja u ovom upitniku i mi cemo te kontaktirati.</li>
            <center><a class="btn btn-large btn-primary" href="/register">{_ "Pokreni lokalnu grupu"}</a></center>
            <li>Procitaj nase smjernice o tome kako pokrenuti lokalnu grupu.</li>
            <center><a class="btn btn-large btn-primary" href="/smjernice">{_ "Smjernice za novu grupu"}</a></center>
        </ul>
        
        
        
{else}

    <center><h1>Volontiraj za nas</h1></center>
    
        <p>
        <strong>Programiraj za Hrvatsku lokalne grupe</strong> su grupe volontera koji rade na rješavanju problema u njihovoj zajednici te kako bi vlasti radile za svoje građane. Jesi li programer, dizajner, tehnologist, organizator u svojoj zajednici, novinar ili javni službenik? Mi te trebamo!
        </p>
        <br>
        <center><h3>Volontiraj. Za promjenu.</h3></center>
        <p>Volontirati u svojoj zajednici možeš i ti!</p>
        <p>Kako bi ovo moglo funkcionirati, trebamo <strong>tebe</strong>. Bez obzira jesi li dizajner, developer, novinar, mladi poduzetnik ili netko s puno ideja - stvaranje i pokretanje korisnih aplikacija za opće dobro sada je udaljen samo jedan klik. Nemoj čekati, <a href="/register">uključi se</a> već danas i pomozi nam u ostvarenju naših ciljeva.</p>
        <br>
<div class="container">
    <div class="row">
        <div class="col-lg-4">
          <center><img src="img/thenoun/icon_41377_tg.png">
          <h4>Volontiraj za povezivanje</h4></center>
          <!-- ><p>Komuniciramo i surađujemo s lokalnom samoupravom kako bismo otkrili važne gradske probleme.</p> -->
          <!-- ><p><a class="btn" href="#">View details »</a></p> -->
        </div>
        <div class="col-lg-4">
          <center><img src="img/thenoun/icon_18157_tg.png">
          <h4>Volontiraj za vještine</h4></center>
          <!-- ><p>Dizajn nije samo vizualno rješenje. Razmišljanje o dizajnu oblikuje naše ideje i kako ćemo utjecati na problem. </p> -->
          <!-- ><p><a class="btn" href="#">View details »</a></p> -->
        </div>
        <div class="col-lg-4">
          <center><img src="img/thenoun/icon_18986_tg.png">
          <h4>Volontiraj za promjenu</h4></center>
          <!-- ><p>Radimo naporno kako bismo kreirali rješenja koja funkcioniraju u stvarnosti. Prioritet su nam dobra volja i utjecaj na građane.</p> -->
          <!-- ><p><a class="btn" href="#">View details »</a></p> -->
        </div>
    </div>
</div>
        <br>
        <center><h3>Civilno društvo. Demokracija.</h3></center>
        <p>
        Jednu od osnovnih vrijednosti demokracije predstavlja civilno društvo i građani koji se aktivno uključuju u sva područja društvenog djelovanja. 
        </p>
        <p>
        Biti aktivan i biti odgovoran dvije su osnovne vrline civilnog društva. Kao takvo, civilno društvo ima važnu ulogu u razvoju demokracije, osobito u zemljama mlade demokracije kao što je Hrvatska. Organizacije civilnog društva i inicijative građana predstavljaju slobodan oblik udruživanja građana što je jedna od ključnih odrednica moderne demokracije. Osnovne karakteristike različitih oblika udruživanja građana u demokraciji su neovisnost, dobrovoljnost i pluralizam.
    	</p>
        <br>
        <center><h2>Programiraj za Hrvatsku. Lokalne grupe.</h2></center>
        <p>
        Građani imaju moć pomoći svojim gradovima u važnim odlukama. Pomozi grupi u svom mjestu:
        <ul>
            <li><strong>grad Zagreb: <a href="/pages/open_zagreb">Open Zagreb</a></strong></li>
            <li><strong>više dolazi uskoro</strong></li>
        </ul>
        </p>
        <br>
        <center><h3 id="start">Nema tvog mjesta? Započni grupu u svom mjestu.</h3></center>
        <p>
		Želiš li i pomoći svome gradu? Pokreni lokalnu grupu u svom mjestu!
        </p>
        <ul>
            <li><a href="https://codeforcroatia.typeform.com/to/nz0fQL">Prvo, reci nam nešto o sebi</a>. Odgovori na pitanja u ovom upitniku i mi ćemo te kontaktirati.</li>
            <li><a href="/pages/pokreni_grupu_u_svom_mjestu">Pročitaj naše smjernice</a> o tome kako pokrenuti lokalnu grupu.</li>
        </ul>
    
{/if}

{/block}