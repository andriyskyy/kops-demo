#!/bin/bash
kops create instancegroup bastions \
--role Bastion \
--subnet utility-us-east-1a \
--name ${NAME}

kops update cluster --name ${NAME} --yes

aws elb --region=us-east-1 --output=table describe-load-balancers|grep DNSName.\*bastion|awk '{print $4}'