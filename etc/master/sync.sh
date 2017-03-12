#!/bin/bash

set -ex;

MASTER=138.68.239.50

scp etcd.conf root@$MASTER:/etc/etcd/etcd.conf
scp apiserver root@$MASTER:/etc/kubernetes/apiserver