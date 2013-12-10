#!/bin/bash

SERVICE_FILE=create_ap.service

GATEWAY=$(grep Gateway .config | sed 's+Gateway: ++')
SSID=$(grep SSID .config | sed 's+SSID: ++')
PASSWORD=$(grep Password .config | sed 's+Password: ++')

sed -i "s/GATEWAY/$GATEWAY/" $SERVICE_FILE
sed -i "s/SSID/$SSID/" $SERVICE_FILE
sed -i "s/PASSWORD/$PASSWORD/" $SERVICE_FILE
