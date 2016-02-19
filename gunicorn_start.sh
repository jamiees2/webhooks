#!/bin/sh
WORKERS=${1:-1}
gunicorn -b 0.0.0.0:5001 -w $WORKERS 'webhooks:application'
