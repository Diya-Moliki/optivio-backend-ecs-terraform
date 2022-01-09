#!/bin/bash
export AWS_PROFILE=powerfields-dev
$(aws ecr get-login --no-include-email)
docker build -f Dockerfile -t powerfields/ssh .
docker tag powerfields/ssh:latest 117274604142.dkr.ecr.us-east-1.amazonaws.com/powerfields/ssh:latest
docker push 117274604142.dkr.ecr.us-east-1.amazonaws.com/powerfields/ssh:latest