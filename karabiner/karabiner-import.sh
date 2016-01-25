#!/bin/sh

cli=/Applications/Karabiner.app/Contents/Library/bin/karabiner

$cli set repeat.wait 10
/bin/echo -n .
$cli set repeat.initial_wait 250
/bin/echo -n .
$cli set remap.simple_vi_mode 1
/bin/echo -n .
$cli set private.ignore_Welly 1
/bin/echo -n .
$cli set private.quickfire_switch 1
/bin/echo -n .
$cli set option.ubiq_vimnormal_insert 1
/bin/echo -n .
/bin/echo
