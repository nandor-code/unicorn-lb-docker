docker kill unicorn-lb 2>/dev/null
docker rm unicorn-lb 2>/dev/null

docker create --name unicorn-lb \
			  --restart unless-stopped \
              -p 3001:3001 \
              -v /var/lib/plexmediaserver:/var/lib/plexmediaserver \
              -v /usr/lib/plexmediaserver:/usr/lib/plexmediaserver \
              -v /nfs:/nfs \
              -e PLEX_HOST='10.10.2.16' \
              -e PLEX_PORT=32400 \
              -e SERVER_PUBLIC="http://10.10.2.16:3001/" \
              -e SERVER_HOST='10.10.2.16' \
              -e SERVER_PORT=3001 \
                nandordocker/plex-unicorn-lb:latest

docker start unicorn-lb
