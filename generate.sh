#!/bin/bash

images=(\
  k8s.gcr.io/kube-apiserver:v1.14.1 \
  k8s.gcr.io/kube-controller-manager:v1.14.1 \
  k8s.gcr.io/kube-scheduler:v1.14.1 \
  k8s.gcr.io/kube-proxy:v1.14.1 \
  k8s.gcr.io/pause:3.1 \
  k8s.gcr.io/etcd:3.3.10 \
  k8s.gcr.io/coredns:1.3.1 \
i=0
for image in ${images[@]} ; do
  echo "FROM gcr.io/google_containers/$image" > Dockerfile_$i
  echo "MAINTAINER veia" >> Dockerfile_$i 
  i=`expr $i + 1`
done