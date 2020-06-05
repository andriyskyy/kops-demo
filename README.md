# AWS-K8S-Jenkins Training Kops Demo

Demonstrating two situations for creating clusters plus an "everyday" cluster management scripts for next few weeks.

## Prerequisites
* Create an EC2 instance, make sure you add `kops-instance` role to it
* Copy your **PUBLIC** ssh key to that instance: `scp ~/.ssh/id_rsa.pub ec2-user@INSTANCE_IP:~/.ssh/`
* SSH to that instance
* Install `kops` and `kubectl`
* Create an S3 bucket. Script can be found in `s3_bucket.sh`.

## Setup
* public-single-master
  * Creates a cluster in one public zone
* private-multiple-masters
  * Creates a HA Kubernetes cluster across 3 Availability Zones in private networking.
