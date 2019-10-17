#!/bin/bash

istioimages=(\
  sidecar_initializer:0.4.0 \
  proxy_init:1.1.3 \
  proxy:0.8.0 \
  mixer:1.1.3 \
  pilot:1.1.3 \
  proxy_debug:1.1.3 \
  istio-ca:0.7.1 \
  grafana:1.0.2 \
  servicegraph:1.1.3 \
)
zipkin=(\
  openzipkin/zipkin:latest \
)

for image in ${istioimages[@]} ; do
  docker pull istio/$image
  docker tag  istio/$image registry.cn-shanghai.aliyuncs.com/chongyi/$image
  docker push registry.cn-shanghai.aliyuncs.com/chongyi/$image
  docker rmi istio/$image
  docker rmi registry.cn-shanghai.aliyuncs.com/chongyi/$image
done