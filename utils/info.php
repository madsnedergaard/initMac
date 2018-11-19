<?php
$apache = explode('/', apache_get_version());
$apache = explode(' ', $apache[1]);
die(json_encode(
    [
        'Apache' => $apache[0],
        'PHP' => phpversion(),
        'NodeJS' => shell_exec('node --version'),
        'NPM' => shell_exec('npm -v'),
    ]
));