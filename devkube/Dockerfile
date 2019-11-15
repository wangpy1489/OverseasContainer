#-------------------------------------------------------------------------------------------------------------
# Copyright (c) Microsoft Corporation. All rights reserved.
# Licensed under the MIT License. See https://go.microsoft.com/fwlink/?linkid=2090316 for license information.
#-------------------------------------------------------------------------------------------------------------

FROM golang:1.13.4
ENV GO111MODULE=on

# Install Go tools

WORKDIR /kube 
RUN git clone https://github.com/kubernetes/kubernetes
WORKDIR /kube/kubernetes
RUN apt update && apt install -y rsync
RUN make
