#/bin/bash

cd /home/username/Projects/paperless-ng
docker-compose down

sleep 25s
cd /home/username/Projects/paperless-ng/web
python3 -m http.server 8000 &
echo $! > /tmp/pngbackup.pid


mkdir /tmp/pngbk
duplicity full --encrypt-key="6FKHJKU" /data/documents file:///tmp/pngbk
sleep 15s

pid=$(cat /tmp/pngbackup.pid)
kill $pid

docker-compose up -d

