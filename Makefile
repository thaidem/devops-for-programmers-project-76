ping:
	ansible webservers -i inventory.ini -m ping

install-role:
	ansible-galaxy install -r requirements.yml

install-pip:
	ansible-playbook playbook.yml -i inventory.ini -u root -v

create-vault:
	ansible-vault encrypt group_vars/all/vault.yml

edit-vault:
	ansible-vault edit group_vars/all/vault.yml

setup:
	ansible-playbook setup.yml -i inventory.ini --vault-password-file .pass -v

deploy:
	ansible-playbook playbook.yml -i inventory.ini -t deploy --vault-password-file .pass -v

