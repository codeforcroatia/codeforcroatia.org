{extends designs/site.tpl}

{block title}{_ "Event Checkin"}{/block}

{block css}
    {$dwoo.parent}
    <style type="text/css">
        .bigscreen-content, .bigscreen-content code {
            font-size: 140%;
        }
        .inner-checkin {
            padding: 50px 0 50px 0;
        }
    </style>
    <link rel="stylesheet" href="http://fonts.googleapis.com/css?family=Roboto:400,100,300,500">
    {cssmin "fonts/font-awesome.css"}
    {cssmin "cfapi/bootstrap-datetimepicker.css+cfapi/form-elements.css+cfapi/style.css"}
{/block}

{block js-top}
    {$dwoo.parent}
    <!-- HTML5 Shim and Respond.js IE8 support of HTML5 elements and media queries -->
    <!-- WARNING: Respond.js doesn't work if you view the page via file:// -->
    <!--[if lt IE 9]>
        <script src="https://oss.maxcdn.com/libs/html5shiv/3.7.0/html5shiv.js"></script>
        <script src="https://oss.maxcdn.com/libs/respond.js/1.4.2/respond.min.js"></script>
    <![endif]-->
{/block}

{block favicons}
    <!-- Touch icons -->
    <link rel="apple-touch-icon-precomposed" sizes="144x144" href="{versioned_url cfapi/ico/apple-touch-icon-144-precomposed.png}">
    <link rel="apple-touch-icon-precomposed" sizes="114x114" href="{versioned_url cfapi/ico/apple-touch-icon-114-precomposed.png}">
    <link rel="apple-touch-icon-precomposed" sizes="72x72" href="{versioned_url cfapi/ico/apple-touch-icon-72-precomposed.png}">
    <link rel="apple-touch-icon-precomposed" href="{versioned_url cfapi/ico/apple-touch-icon-57-precomposed.png}">
{/block}

{block js-bottom}
    {$dwoo.parent}
    {if !$.User->hasAccountLevel('Staff')}
        <script>
            setTimeout(function() {
                location.reload();
            }, 30000);
        </script>
    {/if}

    <script src="//cdnjs.cloudflare.com/ajax/libs/moment.js/2.9.0/moment-with-locales.js"></script>
    
    {jsmin "cfapi/bootstrap-datetimepicker.js+cfapi/jquery.backstretch.min.js+cfapi/retina-1.1.0.min.js"}
    
    <!--[if lt IE 10]>
        {jsmin "cfapi/placeholder.js"}
    <![endif]-->
    <script type="text/javascript">
        $(function () {

            /*
                Fullscreen background
            */
            $.backstretch("{versioned_url cfapi/img/backgrounds/2.jpg}");

            $('#top-navbar-1').on('shown.bs.collapse', function(){
                $.backstretch("resize");
            });

            $('#top-navbar-1').on('hidden.bs.collapse', function(){
                $.backstretch("resize");
            });

        });
    </script>
{/block}

{block "js-analytics"}{*Ignore this page for analytics*}{/block}

{block content-wrapper}
    <div class="container-fluid bigscreen-content">
    {block content}
    <div class="top-content">
        
        <div class="inner-checkin">
            <div class="container">
                <div class="row">
                    <div class="col-sm-7 text">
                        {contentBlock "bigscreen-announcement"}
                        <div class="description">
                            <p>
                                <strong>{_ "First time here?"}</strong><br>
                                1. 
                                {capture assign=openingRegister}<a href="/register">{/capture}
                                {capture assign=closingRegister}</a>{/capture}
                                {sprintf(_("Sign up at %s codeforcroatia.org %s"), $openingRegister, $closingRegister)}<br>
                                2. {_ "Check in to this event"}<br>
                                3. {_ "Join us on chat"}&nbsp;&nbsp;<a href="/slackin"><img src="http://slackin.codeforcroatia.org/badge.svg"></a><br>
                                4. {_ "Look through the project directory for projects that interest you"}<br>
                                5. {_ "Find a regular or captain to ask about any projects you found"}<br>
                            </p>
                        </div>
                        <div class="top-big-link">
                            <center>
                            <a class="btn btn-link-1" href="/projects">{_ "Projects"}</a>
                            <a class="btn btn-link-2" href="/help-wanted">{_ "Help wanted"}</a>
                            <a class="btn btn-link-1" href="http://codeforcroatia.slack.com">{_ "Chat"}</a>
                            </center>
                        </div>
                    </div>

                    <div class="col-sm-5">
                        <h1><font color="white"><strong>{_("Check in at %s")|sprintf:$.server.HTTP_HOST}</strong></font></h1>
                        <p style="text-align:center"><img src="{versioned_url 'img/screenshot-checkin.png'}" class="screenshot"></p>
                    </div>
                </div>
            </div>
        </div>
        
    </div>
    {/block}
    </div>
{/block}

{block footer}
    {$dwoo.parent}
    <br>
    {capture assign=pageTemplate}<a href="http://azmind.com/2015/03/15/bootstrap-registration-forms-3-free-responsive-templates/" target="_blank">Azmind</a>{/capture}
    {capture assign=backgroundPhoto}<a href="https://twitter.com/ylodi">Ylodi</a>{/capture}
    {sprintf(_("Zahvale %s za Bootstrap Registration Form Template. CodeAcross 2015 fotografiju u pozadini ustupio %s."), $pageTemplate, $backgroundPhoto)}
{/block}