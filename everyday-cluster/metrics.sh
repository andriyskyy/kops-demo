#!/bin/bash
# Pretty metrics for dashboard
# They will or will not work out of the box :) 
kubectl apply -f https://github.com/kubernetes-sigs/metrics-server/releases/download/v0.3.6/components.yaml

# If you realy want to see cool metrics - https://github.com/kubernetes-sigs/metrics-server/issues/212#issuecomment-629596576
# maybe it will help :)