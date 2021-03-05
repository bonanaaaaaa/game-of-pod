!#/bin/bash

kubectl config set-context developer \
--user=drogo \
--cluster=kubernetes

kubectl config set-credentials drogo \
--client-key=/root/drogo.key \
--client-certificate=/root/drogo.crt

kubectl config use-context developer