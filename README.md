Docker-couchpotato
===========

This is a docker implementation of the Couchpotato movie management project.  I use it along with NZBGET.  The configs are located in the /data volume which I mount from my docker host along with my NAS which is also mounted to my NZBGET docker image.

```docker run --name="couchpotato" --publish=5050:5050 --volume=/data/warehouse/couchpotato:/data --volume=/mnt/media:/mnt/media --restart="always" --detach=true jusrob/couchpotato```
