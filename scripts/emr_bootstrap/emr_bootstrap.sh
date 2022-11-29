#!/bin/bash
set +e
set -x
echo "Starting the script"
sudo systemctl enable amazon-ssm-agent
echo "Enabled the SSM agent"
sudo systemctl start amazon-ssm-agent
echo "Started the SSM agent"
sudo systemctl daemon-reload

sudo yum install -y expect
echo "Installed expect"

echo "Done"
