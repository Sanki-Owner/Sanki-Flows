mkdir /root/KaalMusic
cp -R kaal/* /root/KaalMusic/
cd /root/KaalMusic
docker build . --rm --force-rm --compress --pull --file Dockerfile -t kaal
docker run --privileged --env-file Internal --rm -i kaal
