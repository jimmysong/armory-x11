[![Docker Pulls](https://img.shields.io/docker/pulls/jimmysong76/armory-x11.svg)](https://hub.docker.com/r/jimmysong76/armory-x11/)
[![Docker Stars](https://img.shields.io/docker/stars/jimmysong76/armory-x11.svg)](https://hub.docker.com/r/jimmysong76/armory-x11/)

armory-x11
===
Simple SSH/X11-connectable docker container that uses:

 * Ubuntu Core 16.04
 * Bitcoin 0.14.1
 * Armory 0.96

*YOU SHOULD STILL SIGN ON AN OFFLINE MACHINE, USE THIS ONLY FOR YOUR WATCH-ONLY WALLET!!*

Usage
-----
You can build with

    (host) $ docker build -t jimmysong76/armory-x11 .

or download with

    (host) $ docker pull jimmysong76/armory-x11

Create and start with

    (host) $ id
    uid=XXXX(YYYY) gid=ZZZZ(YYYY)
    (host) $ docker create --name=armory -p 2222:22 -v <bitcoin dir>:/bitcoin -v <armory dir>:/armory -e PUID=XXXX -e PGID=ZZZZ jimmysong76/armory-x11
    (host) $ docker start armory

At this point, add authorized keys to the image

    (host) $ docker cp path/to/authorized_keys armory:/root/.ssh

Now you can connect to the ssh server:

    $ ssh root@<SERVER_NAME> -p 2222
    Welcome to Ubuntu 16.04.1 LTS (GNU/Linux 3.13.0-24-generic x86_64)
    
     * Documentation:  https://help.ubuntu.com
     * Management:     https://landscape.canonical.com
     * Support:        https://ubuntu.com/advantage
    $ armory

In order to see armory, you're going to need an X11 server. Some popular ones:

 * Windows: vcXsrv - https://sourceforge.net/projects/vcxsrv/
 * Mac: XQuartz - https://www.xquartz.org/

Credit
------

Alan Reiner (http://github.com/etotheipi) for the idea and feedback.