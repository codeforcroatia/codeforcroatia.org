<?php

if (Site::$pathStack[0] == 'code-for-croatia' || Site::$pathStack[0] == 'open-zagreb') {
    $checkinNode = Site::resolvePath(array_merge(['site-root','cfapi'], [array_shift(Site::$pathStack) . '.php']));
} else {
    $checkinNode = Site::resolvePath(array_merge(['site-root','cfapi'], Site::$pathStack));
}

if (!$checkinNode) {
    Site::respondNotFound();
}

if ($checkinNode->MIMEType == 'application/php') {
    Site::executeScript($checkinNode);
}

if (is_callable([$checkinNode, 'outputAsResponse'])) {
    $checkinNode->outputAsResponse();
}

Site::respondBadRequest();