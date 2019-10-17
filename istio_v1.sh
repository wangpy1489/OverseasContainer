#!/bin/bash

istioimages=(\
  proxyv2:1.1.3 \
  galley:1.1.3 \
  citadel:1.1.3 \
  kubectl:1.1.3 \
)

for image in ${istioimages[@]} ; do
  docker pull istio/$image
  docker tag  istio/$image registry.cn-shanghai.aliyuncs.com/chongyi/$image
  docker push registry.cn-shanghai.aliyuncs.com/chongyi/$image
  docker rmi istio/$image
  docker rmi registry.cn-shanghai.aliyuncs.com/chongyi/$image
done