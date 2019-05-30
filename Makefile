SHELL:=/bin/bash
ROLE=gcoop-libre.ansible_role_icedtea
SUDO ?=

role:
	mkdir -p tests/roles
	rm -f tests/roles/$(ROLE)
	cd tests/roles && ln -s ../../. $(ROLE)
	cd tests && ansible-playbook $(DEBUG) -i inventory $(SUDO) test.yml -K

plugins/lookup/pass/lookup_plugins/pass.py:
	mkdir -p tests/plugins/lookup
	cd tests && git clone https://github.com/gcoop-libre/ansible-lookup-plugin-pass.git plugins/lookup/pass

dependencies: dependencies.yml plugins/lookup/pass/lookup_plugins/pass.py
	ansible-galaxy install -r dependencies.yml
