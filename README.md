# Cloudformation Bootstrap Scripts in a standard RPM

[![CircleCI](https://circleci.com/gh/maryvilledev/cfn-init-rpm.svg?style=svg)](https://circleci.com/gh/maryvilledev/cfn-init-rpm)

This repo builds a traditional RPM from the AWS Cloudformation bootstrap [tools](http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/cfn-helper-scripts-reference.html) that can be installed on any CentOS or RHEL system. We created this repo because we are not using Amazon Linux, but still wanted to easily use `cfn-init` and other tools without having to compile locally.

We are using Bintray to host the RPM repository for us. To install the yum repo, run the following as root:

```
yum -y install epel-release
curl -L -o /etc/yum.repos.d/cloudformation-helper-scripts.repo https://bintray.com/maryvilledev/cloudformation-helper-scripts/rpm
yum -y install aws-cfn-bootstrap
```

The tools are installed into `/opt/aws`, which is _not_ added to `PATH`.

