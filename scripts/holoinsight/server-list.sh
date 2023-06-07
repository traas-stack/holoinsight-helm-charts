#!/usr/bin/env bash
set -e -x

ns=holoinsight-server

kubectl -n $ns get pods -o wide
