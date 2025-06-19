# packer-64k

Packer templates for building your Ubuntu 64k kernel images on public clouds 

Prerequisites:
[Packer installed](https://developer.hashicorp.com/packer/tutorials/docker-get-started/get-started-install-cli)

For AWS cloud: 
- have [amazon-ebs packer addon installed](https://developer.hashicorp.com/packer/integrations/hashicorp/amazon) to be able to use amazon-ebs builder
- modify packer template with your AWS creds, original AMI  
- setup-64k-kernel.sh file adds canonical-kernel-team ppa and installs 64k aws-specific kernel.
- resulted AMI is saved as packer-ubuntu-64k-{{timestamp}} into your AWS AMIs

TODO: 
- add automatic removal of default 4k aws kernels 
- replace software-properties-common with manual tee to sources.list and get key with curl

Usage:
$ packer build packer.json


For Non-public cloud machines:
Follow [the tutorial](https://documentation.ubuntu.com/server/how-to/installation/choosing-between-the-arm64-and-arm64-largemem-installer-options/index.html)
