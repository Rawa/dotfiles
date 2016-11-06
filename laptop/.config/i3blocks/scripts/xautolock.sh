#!/usr/bin/env bash

service=xautolock.service

function toggleService {
    if systemctl --user is-active $service >/dev/null; then
        systemctl --user stop $service
    else 
        systemctl --user start $service
    fi

    printStatus
}

function printStatus {
    if systemctl --user is-active $service >/dev/null; then
        echo  On
    else 
        echo  Off
    fi
}

case $BLOCK_BUTTON in
    1) toggleService ;;
    *) printStatus ;;
esac
