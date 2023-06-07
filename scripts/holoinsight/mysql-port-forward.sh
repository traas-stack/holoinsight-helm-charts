#!/usr/bin/env bash
set -e

echo MySQL at tcp://localhost:3306
kubectl -n holoinsight-server port-forward pod/holoinsight-mysql-0 3306:3306
