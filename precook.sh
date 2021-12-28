# Download the required files

wget https://github.com/prometheus/alertmanager/releases/download/v0.15.3/alertmanager-0.15.3.linux-amd64.tar.gz

tar xvfz alertmanager*.tar.gz

mv alertmanager*/ alertmanager

tar -cvf alertmanager*.tar.gz alertmanager/



wget https://dl.grafana.com/oss/release/grafana_7.2.0_amd64.deb
mv grafana*.deb grafana.deb



