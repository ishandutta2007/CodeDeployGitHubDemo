#!/bin/bash
isExistApp = `pgrep apache2`
if [[ -n  $isExistApp ]]; then
    apache2ctl -k stop
fi

