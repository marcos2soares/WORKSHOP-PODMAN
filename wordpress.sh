
#podman network create wordpress_vt121170

#podman network ls


# db:
#    image: mysql:8.0
#    restart: always
#    environment:
#      MYSQL_DATABASE: exampledb
#      MYSQL_USER: exampleuser
#      MYSQL_PASSWORD: examplepass
##      MYSQL_RANDOM_ROOT_PASSWORD: '1'
#    volumes:
#      - db:/var/lib/mysql


podman run -d -it --name db_vt121170  -e MYSQL_DATABASE=testedb -e MYSQL_USER=testeuser -e MYSQL_PASSWORD=vtal2024 -e MYSQL_RANDOM_ROOT_PASSWORD='1'  -v dbword_vt121170:/var/lib/mysql --net wordpress_vt121170 --restart always  docker.io/library/mysql:8.0


#wordpress:
#    image: wordpress
#    restart: always
#    ports:
#      - 8080:80
#    environment:
##      WORDPRESS_DB_HOST: db
#      WORDPRESS_DB_USER: exampleuser
#      WORDPRESS_DB_PASSWORD: examplepass
#      WORDPRESS_DB_NAME: exampledb
#    volumes:
#      - wordpress:/var/www/html

podman run -d -it  --name wordpress_vt121170 -e WORDPRESS_DB_HOST=db_vt121170 -e WORDPRESS_DB_USER=testeuser -e WORDPRESS_DB_PASSWORD=vtal2024 -e WORDPRESS_DB_NAME=testedb -v wordpress_vt121170:/var/www/html --restart always -p 8080:80  --net wordpress_vt121170 docker.io/library/wordpress

podman volume ls

#podman rm -a
