{extends designs/site.tpl}

{block title}{_ "Event Checkin"} &mdash; {$dwoo.parent}{/block}

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

            /*
                Form validation
            */
            $('.registration-form input[type="text"], .registration-form textarea').on('focus', function() {
                $(this).removeClass('input-error');
            });

            $('.registration-form').on('submit', function(e) {

                $(this).find('input[type="text"], textarea').each(function(){
                    if ($(this).val() == "") {
                        e.preventDefault();
                        $(this).addClass('input-error');
                    } else {
                        $(this).removeClass('input-error');
                    }
                });
            });

            $('#form-date').datetimepicker({
                viewMode: 'years',
                format: 'YYYY-MM-DD'
            });

        });
    </script>
{/block}

{block content-wrapper}
    <div class="container-fluid bigscreen-content">
    {block content}
    <div class="top-content">
        
        <div class="inner-checkin">
            <div class="container">
                <div class="row">
                    <div class="col-sm-7 text">
                        <!-- STATIC ANNOUNCEMENT - OLD <h1>
                            {capture assign=strongTag}<strong>{/capture}
                            {capture assign=closingStrongTag}</strong>{/capture}
                            {sprintf(_("%s Welcome %s to event"), $strongTag, $closingStrongTag)}
                        </h1>
                        <h1>{_ "WiFi SSID"} <strong>{Wifi::$wifiSSID|escape}</strong><br>
                            {_ "WiFi PWD"} <strong>{Wifi::$wifiPassword|escape}</strong>
                        </h1> -->
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

                    <div class="col-sm-5 form-box">
                        <div class="form-top">
                            <div class="form-top-left">
                                <h3>{_ "Check in now"}</h3>
                                {if $.User}
                                    <p>{_ "Fill in the form below to check in:"}</p>
                                {else}
                                    <p><a href="/login?return={$.server.REQUEST_URI|escape:url}">{_ "Login"}</a> {_ "to fill in automatically, otherwise please fill in the form below to check in:"}</p>
                                {/if}
                            </div>
                            <div class="form-top-right">
                                <i class="fa fa-pencil"></i>
                            </div>
                        </div>
                        <div class="form-bottom">
                            <form role="form" action="https://www.codeforamerica.org/brigade/{$cfapiBrigadeId}/checkin/" method="post" class="registration-form">
                                <input type="hidden" name="cfapi_url" value="https://www.codeforamerica.org/api/organizations/{$cfapiBrigadeId}">
                                <div class="form-group">
                                    <label class="sr-only" for="form-first-name">{_ "Name"}</label>
                                    <input type="text" name="name" placeholder="Name&hellip;" value="{$.User->FirstName}" class="form-first-name form-control" id="form-first-name">
                                </div>
                                <div class="form-group">
                                    <label class="sr-only" for="form-email">{_ "Email"}</label>
                                    <input type="text" name="email" placeholder="Email..." value="{$.User->Email}" class="form-email form-control" id="form-email">
                                </div>
                                <div class="form-group">
                                    <label class="sr-only" for="form-event">{_ "What event is this"}</label>
                                    <input type="text" name="event" placeholder="What event is this?" value="Hack Night" class="form-last-name form-control" id="form-event">
                                </div>
                                <div class="form-group">
                                    <label class="sr-only" for="form-date">{_ "Date"}</label>
                                    <input type="text" name="date" value="{$.now|date_format:'%Y-%m-%d'}" class="form-date form-control" id="form-date">
                                    </div>
                                </div>
                                <!-- <div class="form-group">
                                    <label class="sr-only" for="form-about-yourself">About yourself</label>
                                    <textarea name="form-about-yourself" placeholder="About yourself..." 
                                                class="form-about-yourself form-control" id="form-about-yourself"></textarea>
                                </div> -->
                                <center><button type="submit" class="btn">Not working anymore: Check me in!</button></center>
                            </form>
                        </div>
                    </div>
                </div>
            </div>
        </div>
        
    </div>
    {/block}
    </div>
{/block}
