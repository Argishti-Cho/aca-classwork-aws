#!/bin/bash

# create bucket 
aws s3 mb s3://$1
#remove bucket
aws s3 rb s3://$1
