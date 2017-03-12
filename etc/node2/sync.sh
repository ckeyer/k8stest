#!/bin/bash

set -ex;

NODE=138.197.205.183

scp flanneld root@$NODE:/etc/sysconfig/flanneld
scp config root@$NODE:/etc/kubernetes/config
scp kubelet root@$NODE:/etc/kubernetes/kubelet
