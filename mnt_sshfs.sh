#!/bin/bash
SUBNET='192.168.9'
PORT='2278'
USER='root'
IP=("151" "155" "156" "159")
DST_DIR=("Portainer" "Proxy" "PrivateVPN" "Logs")

#To unmount and re-mount all item in $DST_DIR
function mount_sshfs(){
	for i in "${!DST_DIR[@]}"
	do
		fusermount -u /mnt/${DST_DIR[$i]}
		sshfs -p ${PORT} ${USER}@${SUBNET}."${IP[$i]}":/${USER}/ /mnt/"${DST_DIR[$i]}"/ 
	done
}
mount_sshfs
