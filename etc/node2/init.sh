#!/bin/bash

## /etc/sysconfig/flanneld

yum update -y

yum -y install flannel kubernetes-node vim

for SERVICES in kube-proxy kubelet docker flanneld;do systemctl restart $SERVICES;systemctl enable $SERVICES;systemctl status $SERVICES; done
