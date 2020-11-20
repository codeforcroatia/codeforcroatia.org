<?php

// add new user to a MailChimp list (see http://forum.laddr.us/t/mailchimp-integration/26)
\RemoteSystems\MailChimp::call('lists/subscribe', [
    'id' => '2f0ec27e18',
    'email' => [
        'email' => $_EVENT['User']->Email
    ],
    'merge_vars' => [
        'FNAME' => $_EVENT['User']->FullName,
        'SIGNLOC' => 'codeforcroatia.org'
    ],
    'double_optin' => true,
    'replace_interests' => false,
    'send_welcome' => false
]);