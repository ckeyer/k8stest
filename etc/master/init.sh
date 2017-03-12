#!/bin/bash

## 128.199.240.216

yum update -y

yum -y install etcd kubernetes-master vim

for SERVICES in etcd kube-apiserver kube-controller-manager kube-scheduler; do systemctl restart $SERVICES;systemctl enable $SERVICES;systemctl status $SERVICES ; done

etcdctl mk /atomic.io/network/config '{"Network":"172.17.0.0/16"}'
