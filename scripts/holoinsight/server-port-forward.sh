#!/usr/bin/env bash
set -e

echo Visit HoloInsight at http://localhost:8080
kubectl -n holoinsight-server port-forward service/home 8080:80
