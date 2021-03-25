FROM openjdk:8-jdk-buster

RUN useradd -ms /bin/bash jpf

USER jpf

WORKDIR /home/jpf

ENV JPF_PATH="/home/jpf/JPF"

RUN git clone https://github.com/javapathfinder/jpf-core.git $JPF_PATH

RUN ["/bin/bash", "-c", "$JPF_PATH/gradlew -c $JPF_PATH/settings.gradle"]

CMD ["/bin/bash", "-c", "while true; do sleep 3600; done"]