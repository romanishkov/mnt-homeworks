docker compose up -d
ansible-playbook ./playbook/site.yml -i ./playbook/inventory/prod.yml --vault-password-file ./playbook/vault-password
docker compose down
