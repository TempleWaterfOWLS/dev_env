dev_env
=======

Vagrant files to setup the standard dev environment 



To Install
=========

First step is to install VirtualBox and Vagrant

Next, run:
  
  
  $vagrant box add ubuntu/trusty64

  
This will add the needed base box.

Next, git clone this repo.

Once clone, cd into dev_env and run the command vagrant up. 

Your development environment is now up.

To Use
======
Vagrant supplies no GUI. You can SSH into the Virtual Machine (VM) using:
	$vagrant ssh
if you are on a Unix host. If on a windows host, use Putty or other suitable ssh client.
The IP and Port of the VM can be found in the output of $vagrant ssh
