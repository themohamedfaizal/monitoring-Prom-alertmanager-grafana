#!/bin/bash
# This is the start up script
service prometheus start
service grafana-server start
/alertmanager/alertmanager
