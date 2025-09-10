ping:
	ansible webservers -i inventory.ini -m ping

install-role:
	ansible-galaxy install -r requirements.yml

create-vault:
	ansible-vault encrypt group_vars/webservers/vault.yml

edit-vault:
	ansible-vault edit group_vars/webservers/vault.yml

setup:
	ansible-playbook setup.yml -i inventory.ini --vault-password-file .pass -v

deploy:
	ansible-playbook playbook.yml -i inventory.ini --vault-password-file .pass -v

stop-app:
	ansible-playbook stop_app.yaml -i inventory.ini --vault-password-file .pass -v

delete-app:
	ansible-playbook remove_containers.yaml -i inventory.ini --vault-password-file .pass -v

