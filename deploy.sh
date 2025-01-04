#!/bin/bash
cd /home/ubuntu/flask-app
git pull origin main
systemctl restart flask-app