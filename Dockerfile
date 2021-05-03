FROM openjdk:8u292-oraclelinux8
COPY clientportal.gw clientportal.gw
WORKDIR /clientportal.gw
EXPOSE 5000
CMD bash -c "bin/run.sh root/conf.yaml"
