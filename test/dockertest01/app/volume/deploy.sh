# spring boot basic deploy ...

echo "::: start of deploy.sh"

REPOSITORY=/app/volume
APPLICATION_NAME=demo

CURRENT_PID=$(pgrep -f ${APPLICATION_NAME})
echo "> 현재 구동중인 어플리케이션 pid: $CURRENT_PID"

if [ -z "$CURRENT_PID" ]; then
        echo "> 현재 구동중인 어플리케이션이 없습니다"
else
        echo "> kill -9 $CURRENT_PID"
        kill -9 $CURRENT_PID
        sleep 7
fi

echo "> 새 어플리케이션 배포"
JAR_NAME=$(ls -tr $REPOSITORY/ | grep jar | tail -n 1)
echo "> JAR NAME: $JAR_NAME";

chmod +x $REPOSITORY/$JAR_NAME

nohup java -jar \
        -Dspring.config.location=classpath:/application.properties \
        $REPOSITORY/$JAR_NAME > $REPOSITORY/nohup.out 2>&1 &

echo "::: end of deploy.sh"