{extends designs/site.tpl}

{block title}{_ "About us"} &mdash; {$dwoo.parent}{/block}

{block content}

{if Emergence\Locale::getRequestedLocale() == 'hr_HR.utf8'}
    
    <center><h2>O nama. Programiraj za Hrvatsku.</h2></center>
    
        <p>
        Programiraj za Hrvatsku je inicijativa koja udružuje građane, dizajnere, developere i mlade poduzetnike da grade potrebne stvari. Naš cilj je povećati interaktivnost gradova, potaknuti bolji odaziv gradova i kreirati smislenu promjenu kroz tehnologiju.
        Hrvatska udruga za otvorene sustave i internet osnovala 2014. godine ekspertnu skupinu Programiraj za Hrvatsku radi promicanja otvorenih tehnologija u službi građana te povećanje transparentnosti javne uprave u svrhu poboljšanja civilnog društva. 
        </p>
        <br>
		<center><h3>Naš proces rada. Tri koraka.</h3></center>

<!-- Our process in 3 steps -->
<div class="container">
    <div class="row">
        <div class="col-lg-4">
          <center><img src="img/thenoun/icon_10812_tg.png">
          <h4>1. Problem</h4></center>
          <p>Komuniciramo i surađujemo s lokalnom samoupravom kako bismo otkrili važne gradske probleme.</p>
          <!-- ><p><a class="btn" href="#">View details »</a></p> -->
        </div>
        <div class="col-lg-4">
          <center><img src="img/thenoun/icon_18707_tg.png">
          <h4>2. Ideja</h4></center>
          <p>Dizajn nije samo vizualno rješenje. Razmišljanje o dizajnu oblikuje naše ideje i kako ćemo utjecati na problem. </p>
          <!-- ><p><a class="btn" href="#">View details »</a></p> -->
       </div>
        <div class="col-lg-4">
          <center><img src="img/thenoun/icon_30992_tg.png">
          <h4>3. Rješenje</h4></center>
          <p>Radimo naporno kako bismo kreirali rješenja koja funkcioniraju u stvarnosti. Prioritet su nam dobra volja i utjecaj na građane.</p>
          <!-- ><p><a class="btn" href="#">View details »</a></p> -->
        </div>
      </div>
</div>
        <br>
        <center><h3>Uključi se. Nije teško.</h3></center>
        <p>
    	Kako bi ovo moglo funkcionirati, trebamo <strong>tebe</strong> da se uključiš. Bez obzira jesi li dizajner, developer, mladi poduzetnik ili netko s puno ideja - stvaranje i pokretanje korisnih aplikacija za 'opće dobro' sada je udaljen samo jedan klik.
		</p>
        
<!-- Code for... -->
<div class="container">
        <div class="row">
        <div class="col-lg-4">
          <center><img src="img/thenoun/icon_41377_tg.png">
          <h4><strong>Kodiraj</strong> za <strong>povezivanje</strong></h4></center>
          <p>Pridruži se globalnom pokretu dizajnera i programera koji stvaraju pozitivne društvene promjene. Poveži se sa službenicima tijela javnih vlasti, građanima i medijima.</p>
          {if $.User}
          <center><p><a class="btn btn-default" href="/projects">Kreni »</a></p></center>
          {else}
          <center><p><a class="btn btn-default" href="/register">Kreni »</a></p></center>
          {/if}
        </div>
        <div class="col-lg-4">
          <center><img src="img/thenoun/icon_18157_tg.png">
          <h4><strong>Kodiraj</strong> za <strong>vještine</strong></h4></center>
          <p>Pridruži se timu iskusnih ljudi i nauči o svakom koraku u procesu od ideje do početka.</p>
          {if $.User}
          <center><p><a class="btn btn-default" href="/projects">Kreni »</a></p></center>
          {else}
          <center><p><a class="btn btn-default" href="/register">Kreni »</a></p></center>
          {/if}
       </div>
        <div class="col-lg-4">
          <center><img src="img/thenoun/icon_18986_tg.png">
          <h4><strong>Kodiraj</strong> za <strong>promjenu</strong></h4></center>
          <p>Ponudi mentorstvo i savjetuj kolegama i civilnim startupovima. Viši stručnjaci vode naše sudionike programa, te surađuju s vladom i povećavaju svoje vještine.</p>
          {if $.User}
          <center><p><a class="btn btn-default" href="/projects">Kreni »</a></p></center>
          {else}
          <center><p><a class="btn btn-default" href="/register">Kreni »</a></p></center>
          {/if}
        </div>
      </div>
</div>
        <br>
        <center><h3>Želiš znati više? Čitaj dalje.</h3></center>
        <p>
		Zainteresiran si i želiš znati nešto više o nama? <a href="https://codeforcroatia.typeform.com/to/jQxkpR">Kontaktiraj nas!</a> Pogledaj kada imamo sljedeće sastanke i saznaj nešto više o našim tekućim projektima. Možeš nam se i pridružiti na našim opuštenim sastancima.
        </p>
        
{else}
    
    <center><h2>About us. Code for Croatia.</h2></center>
    
        <p>
        Code for Croatia is a non-government initiative that brings together citizens, designers, developers and young entrepreneurs to build awsome things. Our goal is to increase the interactivity of cities, to encourage a better response from cities and create meaningful change through technology. 
        </p>
        <br>
    	<center><h3>Our process. Three steps.</h3></center>

<!-- Our process in 3 steps -->
<div class="container">
    <div class="row">
        <div class="col-lg-4">
          <center><img src="img/thenoun/icon_10812_tg.png">
          <h4>1. Problem</h4></center>
          <p>We interact with government and the broader community to discover the most pressing public issues.</p>
          <!-- ><p><a class="btn" href="#">View details »</a></p> -->
        </div>
        <div class="col-lg-4">
          <center><img src="img/thenoun/icon_18707_tg.png">
          <h4>2. Idea</h4></center>
          <p>Design isn’t just visual. Design thinking influences how we think and respond to the issue at hand.</p>
          <!-- ><p><a class="btn" href="#">View details »</a></p> -->
       </div>
        <div class="col-lg-4">
          <center><img src="img/thenoun/icon_30992_tg.png">
          <h4>3. Solution</h4></center>
          <p>We go to great lengths to create solutions that work in the real world. We prioritise goodwill and impact.</p>
          <!-- ><p><a class="btn" href="#">View details »</a></p> -->
        </div>
      </div>
</div>
        <br>
        <center><h3>Get involved. Just a click away.</h3></center>
        <p>
    	For this to work, we need <strong>you</strong> to get involved. No matter if you are a designer, developer, entrepreneur or ideas person, creating and launching apps for ‘the greater good’ is now just a push of a button away.
    	</p>

<!-- Code for... -->
<div class="container">
        <div class="row">
        <div class="col-lg-4">
          <center><img src="img/thenoun/icon_41377_tg.png">
          <h4><strong>Code</strong> for <strong>connections</strong></h4></center>
          <p>Join a global network of designers and developers who are engineering positive social change. Connect with government stakeholders, citizens and the media.</p>
          {if $.User}
          <center><p><a class="btn btn-default" href="/projects">Start »</a></p></center>
          {else}
          <center><p><a class="btn btn-default" href="/register">Start »</a></p></center>
          {/if}
        </div>
        <div class="col-lg-4">
          <center><img src="img/thenoun/icon_18157_tg.png">
          <h4><strong>Code</strong> for <strong>skills</strong></h4></center>
          <p>Join an experienced team of start-up people and entreupreneurs and learn about every step in the process from idea to inception.</p>
          {if $.User}
          <center><p><a class="btn btn-default" href="/projects">Start »</a></p></center>
          {else}
          <center><p><a class="btn btn-default" href="/register">Start »</a></p></center>
          {/if}
       </div>
        <div class="col-lg-4">
          <center><img src="img/thenoun/icon_18986_tg.png">
          <h4><strong>Code</strong> for <strong>change</strong></h4></center>
          <p>Join a global network of designers and developers who are engineering positive social change. Connect with government stakeholders, citizens and the media.</p>
          {if $.User}
          <center><p><a class="btn btn-default" href="/projects">Start »</a></p></center>
          {else}
          <center><p><a class="btn btn-default" href="/register">Start »</a></p></center>
          {/if}
        </div>
      </div>
</div>
        <br>
        <center><h3>Want more? Read on.</h3></center>
        <p>
		You are interested and want to know more about us? Join us on our meetings and find out more about our current projects. Feel free to join on our relaxed meetings.
        </p>
{/if}
        
        {if $.User}
        <center><a class="btn btn-large btn-primary" href="/projects">{_ "Projects"}</a></center>
        {else}
        <center><a class="btn btn-large btn-primary" href="/register">{_ "Sign up"}</a></center>
        {/if}

{/block}