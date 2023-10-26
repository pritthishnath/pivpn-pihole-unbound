docker run -d \
 --name unbound \
 --hostname=unbound \
 --network=pi-net \
 --ip=172.18.0.2 \
 -p 5053:53/tcp \
 -p 5053:53/udp \
 -v $PWD/unbound:/opt/unbound/etc/unbound \
 --restart=unless-stopped \
 klutchell/unbound