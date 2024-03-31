## Lighthouse+Clickhouse+Vector Ansible-Playbook

For Netology 08-ansible-03-yandex

This ansible playbook supports the following,

- Can be deployed on baremetal and VMs
- Supports **RPM distributions**(tested on Fedora 35)
- Install and configure the Lighthouse
- Install and configure the Clickhouse
- Install and configure the Vector

### Prerequisite

- **Ansible 2.14+**

### Configure

Refer the file `group_vars/lighthouse/vars.yml` to change the default Lighthouse install dir:
    lighthouse_dir: "/etc/nginx/lighthouse"

Refer the file `group_vars/clickhouse/vars.yml` to change the default Clickhouse version:
    clickhouse_version: "22.3.3.44"

Refer the file `group_vars/vector/vars.yml` to change the default Vector version:
    vector_version: "0.36.1-1"

In `inventory/prod.yml` file, you can configure the node details.
`ansible_host` is used for ansible to connect the nodes to run this playbook.

### Custom configuration files

To override the default configuration for NGINX for Lighthouse, you must change files `templates/nginx.conf.j2` and `templates/lighthouse.nginx.j2`

To override the default configuration for Vector, you must change the file `templates/vector.j2` 

## Getting Help

For more information, see [Help](https://www.youtube.com/watch?v=JHiqGqoIGII).
