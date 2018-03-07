# vagrant-ansible-docker-helloworld
Use Vagrant, Ansible, Docker and Nginx to setup a HelloWorld webpage

Prerequisites:
* You should have Virtual box setup.
* You should have Vagrant installed.
* You should have Ansible installed.

Execution:
* Navigate to the directory where the Vagrantfile is.
* Run these commands to setup the external roles:  
`ansible-galaxy install angstwad.docker_ubuntu`  
`ansible-galaxy install geerlingguy.ruby`
* Run this command to build a VM, deploy the packages required for running the container and setup the Docker environment:  
`vagrant up`

Usage:
  * Request the URL of your browser:
    `http://192.168.99.99:80/`

Expected result:
  * You should be greeted with:
    `Hello World!`

Tests:  
Some serverspec tests will run automatically at the end of the Ansible run to verify:
 * The correct OS (library/alpine) has been deployed to the Docker container
 * The Docker container is listening on port 80  

If for some reason any of the tests fails then the Ansible deploy will also fail and the reason will be given in the logs.
