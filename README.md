AWS Packer AMI
=======

This repository contains Packer configuration files required to create AWS AMI from scratch.


Requirements
------------

- Virtualizarion software - Oracle Virtualbox or VMWare Workstation/Player
- Packer - https://packer.io
- AWS CLI with profiles - https://aws.amazon.com/cli
- S3 bucket for storring OVA images. The default bucket name is 'ami-packer'
- The AWS policy 'vmimport' attached to the S3 bucket - https://docs.aws.amazon.com/vm-import/latest/userguide/vmimport-image-import.html
