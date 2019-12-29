<?php

Laddr::$chatLinker = function($channel = null) {
    return 'https://codeforcroatia.slack.com/messages/'.urlencode($channel ?: 'general').'/';
};