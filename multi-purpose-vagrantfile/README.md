# What
This folder contains a general multi-provider Vagrantfile. The default provider is Virtualbox. 

More details about changing the provider can be found below.

# How to run
There are 2 ways to specify the provider.
1. Changing the default provider in the Vagrantfile.
2. Using the 'vagrant up' command:
    - Virtualbox (default):

        vagrant up
    - Hyper-V:

        vagrant up --provider="hyperv"
    - VMware Desktop:

        vagrant up --provider="vmware_desktop"

Note: the provider plugin needs to be installed, Vagrant will show an erro message when the provider plugin isn't installed.
