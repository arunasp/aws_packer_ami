#!/usr/bin/env bash

# Setup Python-pip package
apt-get install -y python-pip

# Install AWS CloudFormation init tools - https://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/cfn-helper-scripts-reference.html
pip install https://s3.amazonaws.com/cloudformation-examples/aws-cfn-bootstrap-latest.tar.gz
