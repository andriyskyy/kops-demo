#!/bin/bash
kops create cluster \
    --name ${NAME} \
    --state ${KOPS_STATE_STORE} \
    --node-count 3 \
    --master-count=3 \
    --zones us-east-1a,us-east-1b,us-east-1c \
    --master-zones us-east-1a,us-east-1b,us-east-1c \
    --node-size t2.small \
    --master-size t2.small \
    --master-volume-size=20 \
    --node-volume-size=20 \
    --networking flannel \
    --yes