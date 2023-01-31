nohup java -jar \
        -Dspring.config.location=classpath:/application.properties \
        /app.jar > /nohup.out 2>&1 &

# 아래 커맨드를 넣지않으면 restarting이 계속 지속됨
# docker는 한 프로세스를 종료하기 때문에 의미없는 커맨드를 넣어줌
# 즉 지속적으로 실행할 프로세스가 필요한 것
tail -f /dev/null