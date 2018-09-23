# vagrant-docker-images

## Docker images that are Vagrant ready

* These images are intended for development and testing purposes, and should not be considered secure for use in a production environment.
* This borrows heavily from the work done by Jeff Geerling \[1\] \[2\] and others \[3\].

## Docker info

* 'rebuild.sh' destroys the existing images, pulls the latest base Ubuntu images, then rebuilds the Vagrant images.
* locales for en_US.UTF-8 have been added
* dumb-init \[4\] is used for the init system for 14.04
* systemd is the init system for 16.04 and 18.04

## Vagrant info

* The vagrant-hostmanager plugin \[5\] is necessary for multiple hosts to communicate by hostname

### Vagrantfile

* There are examples for all images. You will need to uncomment the section relevant to the OS you are testing against.
* "--privileged" is in this default Vagrantfile when launching the Docker containers. This is not secure, but often necessary if you are trying to "replace" certain features available in a full VM.

\[1\] [dockrun oneshot - quick local environments for testing infrastructure](https://www.jeffgeerling.com/blog/2017/dockrun-oneshot-quick-local-environments)

\[2\] [Geerlingguy](https://github.com/geerlingguy)

\[3\] [vagrant-docker-example](https://github.com/bubenkoff/vagrant-docker-example)

\[4\] [dumb-init](https://github.com/Yelp/dumb-init)

\[5\] [vagrant-hostmanager](https://github.com/devopsgroup-io/vagrant-hostmanager)

