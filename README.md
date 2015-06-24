# grails-ember-dev-setup
A shell script repo to setup grails and ember cli on a ubuntu dev box.
You'll need to have vagrant installed.

Clone this repo, naviagte to this repos root folder and ensure that a Vagrantfile exists.
Key in 
```
vagrant up
```

and you are on your way.

Vagrant will download Ubuntu trusty 64 and install - 
git, nodejs, java, groovy, grails and ember-cli - in that order.

Use
```
vagrant ssh
```
to access the VM
