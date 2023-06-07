#!/usr/bin/env bash
set -e

script_dir=`dirname $0`

export ns=holoinsight-server
pod=holoinsight-mysql-0

echo
echo [database] wait for [holoinsight-mysql] to be ready
kubectl -n $ns rollout status statefulset/holoinsight-mysql
echo

echo [database] wait for [holoinsight-server] to be ready
kubectl -n $ns rollout status statefulset/holoinsight-server
echo

function mysql_exec() {
    kubectl -n $ns exec -i holoinsight-mysql-0 -- mysql -uholoinsight -pholoinsight -Dholoinsight < $1
}

echo [database] populate init data
mysql_exec $script_dir/init.sql

echo done
