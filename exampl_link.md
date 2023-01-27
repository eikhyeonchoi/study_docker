# Docker run --link example
## basic
```
docker run --link 옵션은 container끼리 network를 연결할 수 있는 방법임

ex)
$ docker run -d --name a1 alpine
$ docker run -d --name a2 alpine

// container 실행하면서 연결 
$ docker run -d --link a1:aa1 --link a2 --name a3 alpine
$ docker attach a3

a3$ ping aa1 // 정상작동
a3$ ping a2 // 정상작동
```
### 사용자 정의 network
```
// 사용자 정의 네트워크 생성
$ docker network create alpine-net

// alpine-net 네트워크를 사용하는 컨테이너 생성
$ docker run -dit --name a1 --network alpine-net alpine
$ docker run -dit --name a2 --network alpine-net alpine

// alpine1 컨테이너에 접속
$ docker container attach a1

// 이름으로 ping 테스트 가능
$ ping -c 2 alpine2



// 추가적으로 network가 다르면 ip대역이 다르기 때문에 --link로 연결해줘야함
$ docker network create net1
$ docker network create net2

$ docker run -dit --name a1 --network net1 alpine
$ docker run -dit --name a2 --network net2 --link a1:aa1 alpine

// a2 컨테이너에 net1 네트워크 추가 연결
$ docker network connect net1 a2
```
