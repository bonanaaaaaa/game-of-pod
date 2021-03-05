#!/bin/bash

for i in {1..6}
do

FILE_NAME="redis0$i.yaml"

cat >$FILE_NAME <<EOL
apiVersion: v1
kind: PersistentVolume
metadata:
  name: redis0${i}
spec:
  capacity:
    storage: 1Gi
  volumeMode: Filesystem
  accessModes:
    - ReadWriteOnce
  persistentVolumeReclaimPolicy: Retain
  hostPath:
    path: /redis0${i}
EOL

kubectl apply -f $FILE_NAME

done