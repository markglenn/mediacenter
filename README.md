# [mediacenter](http://markglenn.github.io/mediacenter)

mediacenter is a vagrant setup to build a media center server.

The server contains everything needed to manage automatic downloads
and streaming to multiple clients simultaneously.

Includes the following services:

* [SABnzbd](http://sabnzbd.org)
* [Sick Beard](http://sickbeard.com)
* [Couch Potato](https://couchpota.to)
* [Headphones](https://github.com/rembo10/headphones)
* [Plex](https://plex.tv)

The server includes [Plex](https://plex.tv) with enough power to handle two
streams simultaneously.  This by default sets up two cores and two gigabytes of
RAM.  This is based on
[recommendations by Plex](https://support.plex.tv/hc/en-us/articles/200375666-Stand-Alone-Server).
If you find the streams are degrading or cutting out too much, you can update
the configuration to include more CPU cores.

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
