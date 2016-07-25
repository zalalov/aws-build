#!/usr/bin/env bash
#/bin/bash

set -e

. credentials.sh

if [ -z $AWS_ACCESS_KEY_ID ] || [ -z $AWS_SECRET_ACCESS_KEY ]
then
    echo "All environment variables should be defined."
    echo "    AWS_ACCESS_KEY_ID - AWS Access Key"
    echo "    AWS_SECRET_KEY - AWS Secret Key"
    exit 1
fi

ansible-playbook -i ec2.py main.yml