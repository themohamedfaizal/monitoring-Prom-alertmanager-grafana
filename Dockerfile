FROM ubuntu:latest

RUN export DEBIAN_FRONTEND=noninteractive && \
    apt update -yq && \
    echo "Installing prometheus" && \
    apt install prometheus -yq

COPY $PWD/grafana.deb .
RUN apt-get install -y adduser libfontconfig1 && \
    dpkg -i grafana.deb

COPY $PWD/alertmanager.tar.gz .
RUN tar xvf alertmanager.tar.gz

COPY $PWD/start.sh .

EXPOSE 9090 9100 9093 3000

CMD ["/start.sh"]







#CMD [ "/bin/sh" , "-c", "tail -f /dev/null" ]

# service prometheus status
# Prometheus : http:127.0.0.1:9090/metrics
# Node Exporter : http:127.0.0.1:9100/metrics
# http://[your Grafana server ip]:3000 Username : admin Password : admin
# docker build . --tag faizal:v1
# docker run --name fzy -d -p 1234:9090 -p 12345:9093 -p 2345:3000 faizal:v1




