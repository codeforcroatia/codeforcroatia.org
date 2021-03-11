{load_templates subtemplates/meetups.tpl}
{load_templates subtemplates/projects.tpl}
{load_templates subtemplates/people.tpl}

{if $nextMeetup}
    <h2>{_ "Next Meetup"} {icon "meetup"}</h2>
    {meetup $nextMeetup}
{/if}

{if count($futureMeetups)}
    <h2>{_ "Future Meetups"} {icon "meetup"}</h2>
    {foreach item=futureMeetup from=$futureMeetups}
        {meetup $futureMeetup}
    {/foreach}
{/if}

<!-- Discourse posts embed per forum category -->
<h2>{_ Forum}</h2>
<d-topics-list discourse-url="https://diskurs.codeforcroatia.org/" category="8" per-page="5"></d-topics-list>
<d-topics-list discourse-url="https://diskurs.codeforcroatia.org/" category="7" per-page="5"></d-topics-list>
<d-topics-list discourse-url="https://diskurs.codeforcroatia.org/" category="9" per-page="5"></d-topics-list>
<d-topics-list discourse-url="https://diskurs.codeforcroatia.org/" category="13" per-page="5"></d-topics-list>
