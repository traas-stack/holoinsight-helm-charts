#!/usr/bin/env bash
set -e

kubectl -n holoinsight-server exec -it holoinsight-mysql-0 -- mysql -uholoinsight -pholoinsight -Dholoinsight

