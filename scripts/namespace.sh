#!/bin/bash

namespace=${1:-"default"}

kubectl get namespaces | grep $namespace > /dev/null
check=$?

if [[ $check -ne 0 ]]; then 
    kubectl create namespace $namespace
fi
