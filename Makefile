_TEXT_PACKER='Insert a pattern ("*" for all): '

_PATH_PACKER=packer/$(PATTERN).json

_PACKER_BUILD=packer build $(file);

_packer:
	$(eval PATTERN=$(shell read -p $(_TEXT_PACKER) pattern; echo "$$pattern"))
	$(foreach file,$(sort $(wildcard $(_PATH_PACKER))),$(_PACKER_BUILD))

.PHONY: php-docker
php-docker:
	packer build -var-file=php.json packer/docker_ansible_template.json

.PHONY: php-vagrant
php-vagrant:
	packer build -var-file=php.json packer/vagrant_ansible_template.json


.PHONY: init
init:
	ansible-galaxy install -p ansible/galaxy -r ansible/requirements.yml
