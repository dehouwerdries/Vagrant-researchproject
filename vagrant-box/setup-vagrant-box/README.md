# Create a Vagrant base box
## Folder content
vagrant-setup.sh: this file contains all the necessary commands to install the needed software and make the configuration that is needed to allow Vagrant to connect to the base box.
## Note
This script is meant for operating systems that use the APT package manager and use VMware Desktop as the Vagrant provider. 
## How to create a base box
Run this script on the Virtual Machine.

Install extra software on the Virtual Machine if necessary. 

Add a "metadata.json" to the folder that contains all the files of the Virtual Machine. The metadata.json file should contain info about the provider. An example of a metadata.json file meant for VMware Desktop looks like the following

    {"provider": "vmware_desktop"}

Create an archive of the folder that contains all the files of the Virtual Machine. This can be done by using the tar command. 

    tar cvzf [name of my box].box [location of all files]

