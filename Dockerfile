FROM openjdk:8-jdk-buster

ENV JPF_PATH $HOME/JPF

RUN git clone https://github.com/javapathfinder/jpf-core.git $JPF_PATH

ENV PATH $JPF_PATH/bin:$PATH
