#!/bin/bash

## Global variables
script_dir="/usr/local/bin/"
service_dir="/etc/systemd/system/"

## Download needed files
wget "https://raw.githubusercontent.com/Tknika/iom2040-shutdown-controller/listen-for-shutdown.py" -P $script_dir
wget "https://raw.githubusercontent.com/Tknika/iom2040-shutdown-controller/listen-for-shutdown.service" -P $service_dir

## Set permissions
chmod +x "${script_dir}listen-for-shutdown.py"
chmod +x "${service_dir}listen-for-shutdown.service"

## Start service
systemctl daemon-reload
systemctl enable "listen-for-shutdown.service"
systemctl start "listen-for-shutdown.service"

## Done
echo -e "Done!"
