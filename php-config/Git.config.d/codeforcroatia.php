<?php

Git::$repositories['codeforcroatia'] = [
    'remote' => 'https://github.com/codeforcroatia/codeforcroatia.org.git',
    'originBranch' => 'emergence/vfs-site/master',
    'workingBranch' => 'emergence/vfs-site/master',
    'trees' => [
        'api-docs',
        // 'console-commands',
        'cypress',
        'data-exporters',
        'dwoo-plugins',
        'event-handlers',
        'html-templates',
        'php-classes',
        'php-config',
        'php-migrations',
        'phpunit-tests',
        // 'sencha-workspace',
        'site-root',
        'site-tasks',
        'webapp-builds',
        // 'webapp-plugin-builds',
    ]
];
