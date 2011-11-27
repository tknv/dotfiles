#!/bin/bash

# Find a random uzbl_tabbed.py open.
UZBLT=$(sudo find /tmp -user $UID -name 'uzbltabbed_*.fifo' -print | sort | tail -1)
if [ -p $UZBLT ]; then
    echo "new $1" > $UZBLT
    echo "bring_to_front" > $UZBLT
else
    exec uzbl-tabbed $@
fi
