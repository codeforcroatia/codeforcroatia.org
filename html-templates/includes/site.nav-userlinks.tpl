{if Emergence\Locale::getRequestedLocale() == 'hr_HR.utf8'}
    <li><a href="#en_US" onclick="document.cookie='locale=en_US';location.reload();"><i class="fa fa-language" aria-hidden="true"></i> Switch to EN language</a></li>
{else}
    <li><a href="#hr_HR" onclick="document.cookie='locale=hr_HR';location.reload();"><i class="fa fa-language" aria-hidden="true"></i> Prebaci na HR jezik</a></li>
{/if}
<li><a href="{$.User->getURL()}">{_ "View My Profile"}</a></li>
<li><a href="/profile">{_ "Edit My Profile"}</a></li>
<li><a href="https://codeforcroatia.slack.com/messages/general/" target="_blank">{_ "General chat room"}</a></li>
<li><a href="http://codeforcroatia.helpmonks.com" target="_blank">{_ "Team Inbox"}</a></li>
<li><a href="/logout">{_ "Logout"}</a></li>
