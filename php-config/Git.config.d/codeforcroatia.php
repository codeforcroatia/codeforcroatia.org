<?php

Git::$repositories['codeforcroatia'] = [
    'remote' => 'git@github.com:CodeForCroatia/codeforcroatia.org.git',
    'originBranch' => 'master',
    'workingBranch' => 'master',
    'trees' => [
        'data-exporters',
        'event-handlers',
        'html-templates',
        'locales',
        'php-classes',
        'php-config/Git.config.d',
        'php-config/Laddr.config.d',
        'site-root'
    ]
];