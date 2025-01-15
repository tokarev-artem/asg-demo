Autoscaling group user data example:

```
#!/bin/bash
apt update -y && apt upgrade -y

apt install -y ruby wget
cd /tmp
wget https://aws-codedeploy-eu-central-1.s3.eu-central-1.amazonaws.com/latest/install
chmod +x ./install
sudo ./install auto
sudo systemctl start codedeploy-agent
sudo systemctl enable codedeploy-agent

apt install -y python3 python3-pip git python3-venv python3-full

git clone https://github.com/tokarev-artem/asg-demo.git /home/ubuntu/flask-app

cd /home/ubuntu/flask-app
python3 -m venv venv
source venv/bin/activate
pip3 install -r requirements.txt

mv flask-app.service /etc/systemd/system/flask-app.service


systemctl daemon-reload
systemctl start flask-app
systemctl enable flask-app
```
