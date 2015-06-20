# mediacenter

mediacenter is a vagrant setup to build a media center server.

The server contains everything needed to manage automatic downloads.

Includes the following services:

* [SABnzbd](http://sabnzbd.org)
* [Sick Beard](http://sickbeard.com)
* [Couch Potato](https://couchpota.to)
* [Headphones](https://github.com/rembo10/headphones)

The server also includes Plex with enough power to handle 4
streams simultaneously.  This by default sets up two cores
and two gigabytes of RAM.  This is based on
[recommendions by Plex](https://support.plex.tv/hc/en-us/articles/200375666-Stand-Alone-Server).

* [Plex](https://plex.tv)

## Requirements

* [Vagrant](https://www.vagrantup.com) 
* [Virtualbox](https://www.virtualbox.org)

## Quickstart

Use this to quickly create the vagrant box.

```sh
git clone https://github.com/markglenn/mediacenter.git
cd mediacenter
vagrant up
```

## License

[BSD](https://github.com/markglenn/mediacenter/blob/master/LICENSE.md)
