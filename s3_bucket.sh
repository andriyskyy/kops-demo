#!/bin/bash
export KOPS_STATE_STORE="INSERT THE NAME OF THE S3 BUCKET HERE"
export REGION=us-east-1

# Create the bucket using awscli
aws s3api create-bucket \
    --bucket ${KOPS_STATE_STORE} \
    --region ${REGION}

# Add versioning to the bucket!
aws s3api put-bucket-versioning \
--bucket ${KOPS_STATE_STORE} \
--versioning-configuration Status=Enabled \
--region ${REGION}
