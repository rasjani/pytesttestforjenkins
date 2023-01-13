#!/usr/bin/env bash

echo "*******"
env|grep -i target
echo "*******"
python3 -mvenv venv
. venv/bin/activate
pip install -r requirements.txt
pytest --junit-xml=./results/results.xml
deactivate
