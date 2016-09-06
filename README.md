[![Docker Pulls](https://img.shields.io/docker/pulls/jimmysong76/armory-x11.svg)](https://hub.docker.com/r/jimmysong76/armory-x11/)
[![Docker Stars](https://img.shields.io/docker/stars/jimmysong76/armory-x11.svg)](https://hub.docker.com/r/jimmysong76/armory-x11/)

armory-x11
===
Simple SSH/X11-connectable docker container that uses:

 * Ubuntu Core 16.04
 * Bitcoin 0.13.0
 * Armory 0.94.1

*YOU SHOULD STILL SIGN ON AN OFFLINE MACHINE, USE THIS ONLY FOR YOUR WATCH-ONLY WALLET!!*

Build
-----
Include authorized_keys for access to this machine via SSH.

Usage
-----
You can build with

    (host) $ docker build -t armory-x11 .

Create and start with

    (host) $ id
    uid=XXXX(YYYY) gid=ZZZZ(YYYY)
    (host) $ docker create --name=armory -p 2222:22 -v <bitcoin dir>:/bitcoin -v <armory dir>:/armory -e PUID=XXXX -e PGID=ZZZZ armory-x11
    (host) $ docker start armory

You can connect to the ssh server:

    $ ssh root@<SERVER_NAME> -p 2222
    Welcome to Ubuntu 16.04.1 LTS (GNU/Linux 3.13.0-24-generic x86_64)
    
     * Documentation:  https://help.ubuntu.com
     * Management:     https://landscape.canonical.com
     * Support:        https://ubuntu.com/advantage
    $ armory


Credit
------

Alan Reiner (http://github.com/etotheipi) for the idea and feedback.