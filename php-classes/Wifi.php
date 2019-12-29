<?php

class Wifi
{
    public static $wifiSSID;
    public static $wifiPassword;

    static function __classLoaded()
    {
        if (empty(static::$wifiSSID)) {
            static::$wifiSSID = Site::getConfig('label');
        }

    }
}