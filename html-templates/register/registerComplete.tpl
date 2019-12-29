{extends "designs/site.tpl"}

{block js-bottom}
    {$dwoo.parent}
    {jsmin "features/sidebar-checkin.js"}
{/block}

{block title}{_ "Registration complete"} &mdash; {$dwoo.parent}{/block}

{block "content"}
    {$User = $data}

    <div class="page-header">
        <h1>{_ "Registration complete"}</h1>
    </div>

    {capture assign=personLink}<a href="{$User->getUrl()|escape}">{$User->Username|escape}</a>{/capture}
    <p class="lead">{"Your username for %s is: %s"|_|sprintf:Laddr::$siteName:$personLink}</p>

    <p>
        {_ "Things to do next…"}
        <ul>
            {if $.request.return}
                <li><a href="{$.request.return|escape}">{"Continue back to %s"|_|sprintf:$.request.return|escape}</a></li>
            {/if}
            <li><a href="/profile">{_ "Fill out your profile and upload a photo"}</a></li>
            <li><a href="http://slackin.codeforcroatia.org/">{_ "Fill in this form to get invitation for chat"}</a></li>
            <li><a href="/how-to-help">{_ "Check how can you help"}</a></li>
        </ul>
    </p>

{load_templates subtemplates/meetups.tpl}
{load_templates subtemplates/projects.tpl}
{load_templates subtemplates/people.tpl}

{if $currentMeetup}
    <article class="meetup meetup-current">
        <p>{_ "Check-in at current Meetup"}</p>
        {meetup $currentMeetup showRsvp=false}
        <form class="checkin" action="/checkin" method="POST">
            <input type="hidden" name="MeetupID" value="{$currentMeetup.id}">
            <select name="ProjectID" class="project-picker">
                <option value="">Select Project (if any)</option>
                {foreach item=Project from=Laddr\Project::getAll()}
                    <option value="{$Project->ID}">{$Project->Title|escape}</option>
                {/foreach}
            </select>
            <input type="submit" value="Check In" class="btn btn-success">
        </form>
    </article>
{/if}
    
{/block}
