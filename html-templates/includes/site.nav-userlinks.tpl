{if Emergence\Locale::getRequestedLocale() == 'hr_HR.utf8'}
    <a class="dropdown-item" href="#en_US" onclick="document.cookie='locale=en_US';location.reload();"><i class="fa fa-language" aria-hidden="true"></i> Switch to EN language</a>
{else}
    <a class="dropdown-item" href="#hr_HR" onclick="document.cookie='locale=hr_HR';location.reload();"><i class="fa fa-language" aria-hidden="true"></i> Prebaci na HR jezik</a>
{/if}
<a class="dropdown-item" href="{$.User->getURL()}">{_ "View My Profile"}</a>
<a class="dropdown-item" href="/profile">{_ "Edit My Profile"}</a>
<a class="dropdown-item" href="https://codeforcroatia.slack.com/messages/general/" target="_blank">{_ "General chat room"}</a>
<a class="dropdown-item" href="http://codeforcroatia.helpmonks.com" target="_blank">{_ "Team Inbox"}</a>
<a class="dropdown-item" href="/logout">{_ "Logout"}</a>
