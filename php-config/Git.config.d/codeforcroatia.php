<?php

Git::$repositories['codeforcroatia'] = [
    'remote' => 'https://github.com/codeforcroatia/codeforcroatia.org.git',
    'originBranch' => 'emergence/vfs-site/master',
    'workingBranch' => 'emergence/vfs-site/master',
    'trees' => [
        'api-docs',
        'console-commands',
        'cypress',
        'data-exporters',
        'dwoo-plugins',
        'event-handlers',
        'html-templates',
        'locales',
        'php-classes',
        // 'php-config',
        'php-config' => [
            'exclude' => [
                // // don't sync secrets config:
                '#^/RemoteSystems(/|$)#',
                '#/Emergence/Slack/API.config.php$#'
            ]
        ],
        'php-migrations',
        'phpunit-tests',
        // 'sencha-workspace',
        'site-root',
        'site-tasks',
        'webapp-builds',
        // 'webapp-plugin-builds',
    ]
];
