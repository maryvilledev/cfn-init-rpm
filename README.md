# Cloudformation Bootstrap Scripts in a standard RPM

This repo builds a traditional RPM from the AWS Cloudformation bootstrap [tools](http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/cfn-helper-scripts-reference.html) that can be installed on any CentOS or RHEL system. We created this repo because we are not using Amazon Linux, but still wanted to easily use `cfn-init` and other tools without having to compile locally.

We are using Bintray to host the RPM repository for us. To install the yum repo, run the following as root:

```
yum -y install wget epel-release
wget https://bintray.com/maryvilledev/cfn-init/rpm -O bintray-maryvilledev-cfn-init.repo
yum -y install aws-cfn-bootstrap
```

The tools are installed into `/opt/aws`, which is _not_ added to `PATH`.

