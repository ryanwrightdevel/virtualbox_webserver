#!/usr/bin/env bash
#changed this to the name of your virtualBox folder
#NOTE: this is the name entered in the virtualBox UI, not the name or path of the folder on the hosts system
#for example, your folder may be "c:/website" but in your virtualbox UI, you can call this anything, ex. "myWebShare"
vboxSharedFolder=dev

#please make sure this folder exists
mountPath=/media/sf_dev #change this to the path where the shared folder should be mounted

if [ ! -d "$mountPath" ]; then
  echo -n "The mount folder '$mountPath' does not exists. Please create it first or modify this script to to use a different path."
  exit 1;
fi


sudo usermod -a -G www-data vboxsf

sudo mount -t vboxsf -o rw,uid=33,gid=33 $vboxSharedFolder $mountPath

sudo echo "$vboxSharedFolder $mountPath   vboxsf  rw,uid=33,gid=33    0   0" >> /etc/fstab