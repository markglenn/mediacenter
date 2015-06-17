# mediacenter

mediacenter is a vagrant setup to build two servers for use as a
media center server.

## Server 1

Server 1 contains everything needed to manage automatic downloads.

Includes the following services:

* [SABnzbd](http://sabnzbd.org)
* [Sick Beard](http://sickbeard.com)
* [Headphones](https://github.com/rembo10/headphones)

## Server 2

Server 2 contains a setup to handle 4 streams simultaneously.

Includes the following service:

* [Plex](https://plex.tv)

## Quickstart

Use this to quickly create the vagrant boxes

```sh
git clone https://github.com/markglenn/mediacenter.git
cd mediacenter
vagrant up
```
