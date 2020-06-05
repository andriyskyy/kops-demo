#!/bin/bash
kops edit ig --name=${NAME} nodes

kops update cluster --name ${NAME} --yes

kops rolling-update cluster --name ${NAME} --yes