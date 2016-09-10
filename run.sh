#!/bin/bash

# start bitcoind
bitcoind -daemon -datadir=/bitcoin

# start ssh daemon
/usr/sbin/sshd -D
