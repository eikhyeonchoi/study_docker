# Docker Test 01
## 목표
```
docker compose를 통해 spring boot application 배포 

1. docker-compose.yml 작성(포트포워딩과 볼륨 학습)
2. Dockerfile 작성(RUN, CMD, ENTRYPOINT 차이 이해)
```

## Main task
```
Task 1. 
    $ docker compose up -d
    실행시(도커 컴포즈 시작시) spring boot application이 시작될 것
    단 app 시작은 ENTRYPOINT or CMD or RUN command로 직접 시작하는게 아닌
    shell script로 시작하게 끔 할 것

Task 2.
    port fowarding과 volume을 설정해볼 것
```

## Result
```
app을 시작하고 난 후 container가 무한 restarting이 걸리는 이슈가 있었음
container는 지속적으로 프로세스를 돌려야 restarting이 되지 않음
Dockerfile or docker-compose.yml에 넣어도 해결되지 않고 계속 restarting이 됬는데
shell script(배포 스크립트)에 tail -f /dev/null 커맨드를 넣으니 해결됨
```