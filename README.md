# packer-64k

Packer templates for building your Ubuntu 64k kernel images on public clouds.

 When to Use 64K Kernels?

Best for:

- ARM64 workloads 

- Databases (MySQL, PostgreSQL with large buffers)

- HPC (High-Performance Computing)

Prerequisites:
[Have Packer installed](https://developer.hashicorp.com/packer/tutorials/docker-get-started/get-started-install-cli)

**For AWS cloud:**
supported on AWS Graviton	✅	Optimized for 64K
- have [amazon-ebs packer addon installed](https://developer.hashicorp.com/packer/integrations/hashicorp/amazon) to be able to use amazon-ebs builder
- modify [packer template](https://github.com/lolwww/packer-64k/blob/main/aws/packer.json) with your AWS creds, original AMI, any other changes if you need 
- [setup-64k-kernel.sh](https://github.com/lolwww/packer-64k/blob/main/aws/setup-64k-kernel.sh) file adds canonical-kernel-team ppa and installs 64k aws-specific kernel.
- resulted AMI is saved as packer-ubuntu-64k-{{timestamp}} into your AWS AMIs

**Usage:**

**$ packer build packer.json**


**For Azure**:
supported on Ampere Altra ARM VMs ✅, Limited regions - Template TBD.


**For Google Cloud**:
supported on T2A ARM ✅ - Template TBD.


**For Non-public cloud machines:**
Follow [the tutorial](https://documentation.ubuntu.com/server/how-to/installation/choosing-between-the-arm64-and-arm64-largemem-installer-options/index.html)
