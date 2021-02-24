# Dockerfile of Ansible image

This docker image is availabe on my Docker Hub page https://hub.docker.com/r/rajdeol/ansible
You can build this image by running the following command:
```
Docker build --force-rm --pull -t ansible-local .
```
We have tagged the build image as ansible-local
Once build you can run the image and use the ansible command to see the version of ansible:
```
docker run --rm ansible-local ansible --version
```
Command to run a playbook
```
docker run --rm rajdeol/ansible ansible-playbook my-playbook-path.yml
```