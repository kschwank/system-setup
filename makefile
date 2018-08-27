.PHONY: desktop

ANSIBLE_OPTS = --user karsten --ask-pass --ask-become-pass -i inventories/production

all:
	ansible-playbook ${ANSIBLE_OPTS} workstations.yml 

private-desktops:
	ansible-playbook ${ANSIBLE_OPTS} workstations.yml --limit private-desktops

private-all:
	ansible-playbook ${ANSIBLE_OPTS} workstations.yml --limit private-all

private-laptops:
	ansible-playbook ${ANSIBLE_OPTS} workstations.yml --limit private-laptops

iteratec-laptops:
	ansible-playbook ${ANSIBLE_OPTS} workstations.yml --limit iteratec-laptops
