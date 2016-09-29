#! /bin/sh

mkdir -p /mnt/shared

infinit-network --fetch --as $INFINI_USER
infinit-volume --fetch --as $INFINIT_USER

infinit-network --link --as $INFINIT_USER --name $INFINIT_NETWORK_CLUSTER

infinit-volume --mount --as $INFINIT_USER --name $INFINIT_VOLUME_NAME --async --cache --publish --mountpoint /mnt/shared/
