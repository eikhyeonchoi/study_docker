# Docker Test 02
## 목표
```
docker compose를 통해 spring boot application 배포 

+ mariadb 연동까지 
```
## Main task
```
Task 1. 
    db container 실행 시 db 초기화 sql 실행 되도록 할 것

Task 2.
    호스트에서 접속가능하도록 포트포워딩할 것
    window10 -> vmware -> docker db

Task 3.

```

## Result
```
진행 중 ...

task1은 db container에 /docker-entrypoint-initdb.d 여기에 sql 파일을 넣으면 해결되었음
task2는 vmware 및 네트워크의 대한 지식인데 NAT사용시 VMnet8을 사용함 -> vm에서 VMnet8과 네트워크 대역이 일치하는 아이피 찾아서 SSH터널로 연결해주면 끝
``` 