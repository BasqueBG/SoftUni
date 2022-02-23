mkdir web
echo '<h2>Hello from a Docker Volume</h2>' > web/index.html
docker container run -d -p 8080:80 --name co-apache -v $(pwd)/web:/var/www/html php:8.0-apache
ифцонфиг
ifconfig
ip
docker container exec -it co-apache bash
docker container ls
docker container stop co-apache
docker images ls
docker images ls -a
docker image ls -a
docker image ls
docker volume create vol-1 --label mode=prod
docker volume create vol-2
docker volume ls
docker volume inspect vol-1
echo '<h2>Volume created with <u>docker volume create</u></h2>' | sudo tee /var/lib/docker/volumes/vol-1/_data/index.html
docker container run -d -p 8080:80 --name co-apache1 -v vol-1:/var/www/html php:8.0-apache
docker container stop apache
docker container stop co-apache1
docker container create -v /con-data --name con-store alpine /bin/true
docker container inspect con-store | grep -i source
echo 'Read Me File in a Container Volume' | sudo tee /var/lib/docker/volumes/<volume-id>/_data/readme.txt
echo 'Read Me File in a Container Volume' | sudo tee /var/lib/docker/volumes/c8662470af648051146d75c7ea4eb2ede7635adc83c522bd3dcdb69b0adc359f/_data/readme.txt
docker container run -d --volumes-from con-store --name alp1 alpine sleep 1d
docker container exec -it alp1 /bin/sh
docker container stop alp1
exit
