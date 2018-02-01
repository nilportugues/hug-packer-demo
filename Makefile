.PHONY: init
init:
	ansible-galaxy install -p provisioners/ansible/galaxy -r provisioners/ansible/requirements.yml

.PHONY: php-docker
php-docker:
	packer build -var-file=php.json packer/docker_ansible_template.json

.PHONY: php-vagrant
php-vagrant:
	packer build -var-file=php.json packer/vagrant_ansible_template.json

.PHONY: php-aws
php-aws:
	packer build -var-file=php.json packer/aws_ansible_template.json
