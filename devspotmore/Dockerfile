#-------------------------------------------------------------------------------------------------------------
# Copyright (c) Microsoft Corporation. All rights reserved.
# Licensed under the MIT License. See https://go.microsoft.com/fwlink/?linkid=2090316 for license information.
#-------------------------------------------------------------------------------------------------------------

FROM registry.cn-shanghai.aliyuncs.com/veia/devgo

# Install Go tools 
RUN go get -u \
	github.com/aliyun/alibaba-cloud-sdk-go/sdk \
	github.com/gophercloud/gophercloud \
        github.com/aws/aws-sdk-go \
        github.com/mitchellh/mapstructure \
	github.com/google/uuid \
	golang.org/x/crypto/ssh \
	gopkg.in/ini.v1 2>&1
