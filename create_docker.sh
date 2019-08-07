docker kill unicorn-lb
docker rm unicorn-lb

docker create --name unicorn-lb \
              -p 3001:3001 \
              -v /var/lib/plexmediaserver:/var/lib/plexmediaserver \
              -v /usr/lib/plexmediaserver:/usr/lib/plexmediaserver \
              -v /nfs:/nfs \ # location of your media that plex uses must match 1:1
              -e DEBUG="" \ # optional debug flags.
              -e PLEX_HOST='10.10.2.16' \
              -e PLEX_PORT=32400 \
              -e SERVER_PUBLIC="http://10.10.2.16:3001/" \ # must including trailing /
              -e SERVER_HOST='10.10.2.16' \
              -e SERVER_PORT=3001 \
                nandordocker/plex-unicorn-lb:latest

docker start unicorn-lb
