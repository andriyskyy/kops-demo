#!/bin/bash
kops create cluster \
  --zones us-east-1a \
  --master-zones us-east-1a \
  --name ${NAME} \
  --state ${KOPS_STATE_STORE} \
  --master-size=t2.micro \
  --node-size=t2.small \
  --master-volume-size=20 \
  --node-volume-size=20 \
  --node-count 3 \
  --cloud aws \
  --yes
