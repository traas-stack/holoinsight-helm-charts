#!/usr/bin/env bash
set -e

kubectl -n holoinsight-demo delete deployment holoinsight-demo-client holoinsight-demo-server holoinsight-demo-redis || true
kubectl -n holoinsight-demo delete service demo-server demo-redis || true
