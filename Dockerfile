FROM    centos:7
RUN     yum -y update && yum clean all && \
        yum -y install rpm-build https://dl.fedoraproject.org/pub/epel/epel-release-latest-7.noarch.rpm && \
        rpm -i https://s3.amazonaws.com/cloudformation-examples/aws-cfn-bootstrap-latest.src.rpm && \
        mkdir -p /output
VOLUME  /output
CMD     rpmbuild -bb /root/rpmbuild/SPECS/aws-cfn-bootstrap.spec && mv /root/rpmbuild/RPMS/noarch/aws-cfn-bootstrap-*.noarch.rpm /output/
