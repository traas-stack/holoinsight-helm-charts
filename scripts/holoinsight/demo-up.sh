#!/usr/bin/env bash
set -e

script_dir=`dirname $0`
kubectl apply -f $script_dir/demo.yaml
