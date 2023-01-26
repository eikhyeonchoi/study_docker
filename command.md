# Docker Basic Command
```
$ docker pull [OPTIONS] NAME[:TAG|@DIGEST]
    docker hub로부터 이미지를 받아올 수 있다
```
```
$ docker iamges
    docker 이미지 리스트 확인
```
```
$ docker run [OPTIONS] IMAGE [COMMAND] [ARG...]
    docker image 실행 -> container
    port forwarding -> [-p 80:80]
        앞 80 host port / 뒤 80 container port
    file system connect -> [-v path:path]
        앞 path host path / 뒤 path container path
    ex) docker run -p 80:80 -v /host/path/:/usr/share/nginx/html/ --name CustomName -d nginx
```
```
$ docker stop [OPTIONS] CONTAINER [CONTAINER...]
    docker container 중지
    container가 삭제되진 않는다
```
```
$ docker start [OPTIONS] CONTAINER [CONTAINER...]
    docker container 시작
```
```
$ docker logs [OPTIONS] CONTAINER
    docker 로그 확인
```
```
$ docker rm [OPTIONS] CONTAINER [CONTAINER...]
    docker container 삭제
```
```
$ docker rm [OPTIONS] CONTAINER [CONTAINER...]
    docker container 삭제
```
```
$ docker rmi [OPTIONS] IMAGE [IMAGE...]
    docker image 삭제
```
```
$ docker exec [OPTIONS] CONTAINER COMMAND [ARG...]
    docker container에 명령어 보내기
    연결유지하는법 docker exec -it [container name or id] /bin/bash(or /bin/sh)
```