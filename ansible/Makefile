branch=latest

.PHONY: service
service:
	ansible-playbook -i ./hosts.ini service.yml -f 1 --extra-vars "branch=$(branch)"

.PHONY: setup
setup:
	ansible-playbook -i ./hosts.ini setup.yml -f 1
