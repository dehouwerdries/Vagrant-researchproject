# Create Vagrant box based on base box
This README contains all the necessary steps to create a custom Vagrant box. This box uses Ubuntu20.10 as OS and has kubectl and minikube v1.25.2 installed. 
This folder contains a Vagrantfile that contains all the configuration of the VM that we'll use to create a new Vagrant box.


## How to create the box
Step 1: Run the virtual machine

    vagrant up

Step 1: Create the Vagrant box

    vagrant package

Note: The default name of the box file is 'package.box' this can be changed by using the 

    vagrant package --output my-own-vagrantbox.box

## Prerequisites
Install the following software:
1. [Vagrant](https://www.vagrantup.com/downloads)
2. [Vagrant VMware Utility](https://www.vagrantup.com/docs/providers/vmware/vagrant-vmware-utility)
3. Vagrant VMware plugin: <code>vagrant plugin install vagrant-vmware-desktop</code>
4. VMware Workstation

Note: Virtualbox can also be used as the default provider. Use Virtuablox as the default provider by changing line 5 in the Vagrantfile to "<code>ENV['VAGRANT_DEFAULT_PROVIDER'] = "virtualbox"</code>". (Make sure to have Virtualbox installed when commenting the default provider part)