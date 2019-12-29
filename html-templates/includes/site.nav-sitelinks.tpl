    <li class="dropdown">
        <a href="#" class="dropdown-toggle" data-toggle="dropdown">{_ "Projects"} <b class="caret"></b></a>
        <ul class="dropdown-menu">
          <li><a href="/projects">{_ "Browse Projects"}</a></li>
          <li><a href="/pages/project_guidelines">{_ "Project Guidelines"}</a></li>
          <li><a href="/resources">{_ "Resources"}</a></li>
          <li class="dropdown-header">{_ "Featured Projects"}</li> <!-- Featured projects -->
          <li><a href="/projects/zahtjev_za_pravo_na_pristup_informacijama">{_ "We Have Right to Know"}</a></li>
          <li><a href="/projects/opendataday">{_ "Open Data Day"}</a></li>
        </ul>
    </li>
    <li class="dropdown">
        <a href="#" class="dropdown-toggle" data-toggle="dropdown">{_ "Join Us"} <b class="caret"></b></a>
        <ul class="dropdown-menu">
          <li><a href="/how-to-help">{_ "How to Join"}</a></li> <!-- ovo je how-to-help refaktoriran -->
          <li><a href="/pages/local_groups">{_ "Start a Group in Your Town"}</a></li>
          <!-- <li><a href="https://www.youtube.com/watch?v=H_on0kXZ07M" target="_blank">{_ "Civic Hacking 101"} <small>{_ "video"}</small></a></li> -->
          <!-- <li><a href="http://opendata.stackexchange.com/" target="_blank">{_ "Open Data Stack Exchange"}</a></li> -->
          <!-- <li><a href="/blog" target="_blank">{_ "Blog"} <small>hackpad</small></a></li> -->
        </ul>
    </li>
    <li class="dropdown">
        <a href="#" class="dropdown-toggle" data-toggle="dropdown">{_ "Connect"} <b class="caret"></b></a>
        <ul class="dropdown-menu">
          <li><a href="/chat" target="_blank">{_ "Chat"} <small>(Slack)</small></a></li>
          <li><a href="/slackin">{_ "Get Invite"} <small>(Slack)</small></a></li>
          <li><a href="http://diskurs.open.hr/login" target="_blank">{_ "Forum"} <small>(Discourse)</small></a></li>
          <li><a href="/contact">{_ "Contact Us"} <small>(Email)</small></a></li>
          <li><a href="/pages/mjesecni_program_meetupa">{_ "Meetups"}</a></li>
          <li><a href="/people">{_ "Members"}</a></li>
        </ul>
    </li>
    <!-- <li class="dropdown">
        <a href="#" class="dropdown-toggle" data-toggle="dropdown">{_ "Events"} <b class="caret"></b></a>
        <ul class="dropdown-menu">
          <li class="dropdown-header">{_ "Monthly Meetups"}</li>
            <li><a href="/pages/mjesecni_program_meetupa">{_ "Open House"}</a></li>
            <li><a href="/pages/mjesecni_program_meetupa">{_ "Workshops"}</a></li>
            <li><a href="/pages/mjesecni_program_meetupa">{_ "Hack Nights"}</a></li>
            <li><a href="/slackin">{_ "Online Meetups"}</a></li>
          <li role="separator" class="divider"></li>
          <li class="dropdown-header">{_ "Conferences"}</li>
            <li><a href="http://odd.codeforcroatia.org" target="_blank">{_ "OpendataDay"}</a></li>
          <li class="dropdown-header">{_ "Hackathons"}</li>
            <li><a href="http://odd.codeforcroatia.org" target="_blank">{_ "OpendataDay"}</a></li>
          <li class="dropdown-header">{_ "Other"}</li> 
            <li><a href="/contact">{_ "Contact Us"} <small>(Email)</small></a></li>
        </ul>
    </li> -->
    <li class="dropdown">
        <a href="#" class="dropdown-toggle" data-toggle="dropdown">{_ "About"} <b class="caret"></b></a>
        <ul class="dropdown-menu">
          <li><a href="/about-us">{_ "About Us"}</a></li>
          <li><a href="/mission">{_ "Mission and Vision"}</a></li>
          <li><a href="/pages/local_groups">{_ "Local Groups"}</a></li>
          <li><a href="/blog">{_ "Blog"}</a></li>
          <li><a href="/pages/code_of_conduct">{_ "Code of Conduct"}</a></li>
        </ul>
    </li>

    {if Emergence\Locale::getRequestedLocale() == 'hr_HR.utf8'}
        <li><a href="#en_US" onclick="document.cookie='locale=en_US';location.reload();"><i class="fa fa-language" aria-hidden="true"></i></a></li>
    {else}
        <li><a href="#hr_HR" onclick="document.cookie='locale=hr_HR';location.reload();"><i class="fa fa-language" aria-hidden="true"></i></a></li>
    {/if}