# 연습용 Dockerfile
```
-----Dockerfile(예시)
FROM openjdk:17-alpine
WORKDIR /usr/src/app
ARG JAR_PATH=./build/libs
COPY ${JAR_PATH}/demo-0.0.1-SNAPSHOT.jar ${JAR_PATH}/demo-0.0.1-SNAPSHOT.jar # volume을 설정하면 없앨 수 있지 않을까
CMD ["java","-jar","./build/libs/demo-0.0.1-SNAPSHOT.jar"]



-----docker-compose.yml(예시)
version: "3"
services:
    app:
        build:
            context: # Dockerfile 디렉토리 path
            dockerfile: # Dockerfile명 (보통 Dockerfile)
        ports: # port forwarding
            - "80:80"
        links:
            - db:db
        container_name: # container 명
        depends_on: # 여러개의 container를 compose로 up할 경우 실행시점이 다르기 때문에 접속이 안될 상황이 올 수 있음 따라서 실행 순서를 제어할 수 있다
            - db # 여기서는 db container 먼저 수행되고 난 후 app이 수행됨
        networks: # network 설정
            - custom_net
    db:
        image: mysql:5.7
        restart: always
        volumes:
            - ./mysqldata:/var/lib/mysql
        environment:
            - MYSQL_DATABASE=testdb
            - MYSQL_ROOT_PASSWORD=testdb
        ports:
            - "3306:3306"
        container_name: dbcontainer
        networks:
            - custom_net
 
networks:
   custom_net:
       driver: bridge

volumes:
    custom_vol:


참고할 블로그
https://unpasoadelante.tistory.com/197
https://ttl-blog.tistory.com/761
https://blog.leocat.kr/notes/2017/01/08/docker-run-vs-cmd-vs-entrypoint
https://joont92.github.io/docker/docker-compose%EB%A1%9C-nginx-spring-boot-mysql-%EA%B5%AC%EC%84%B1%ED%95%98%EA%B8%B0/
https://zinirun.github.io/2021/03/31/docker-nginx-certbot/
https://jinsiri.tistory.com/605
```
