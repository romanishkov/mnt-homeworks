## Clickhouse+Vector Ansible-Playbook

For Netology 08-ansible-02-playbook

## Version and Branching
As of now, this ansible-playbook repository maintains 2 branches:
* _main_ (Version is 2.x.x for both `os_version` and `os_dashboards_version` in `inventories/opensearch/group_vars/all/all.yml`)
* _1.x_ (Version is 1.x.x for both `os_version` and `os_dashboards_version` in `inventories/opensearch/group_vars/all/all.yml`)
<br>

Contributors should choose the corresponding branch(es) when commiting their change(s):
* If you have a change for a specific version, only open PR to specific branch
* If you have a change for all available versions, first open a PR on `main`, then open a backport PR with `[backport 1.x]` in the title, with label `backport 1.x`, etc.

## OpenSearch Installation with Dashboards

This ansible playbook supports the following,

- Can be deployed on baremetal and VMs
- Supports **RPM distributions**(tested on Fedora 35)
- Install and configure the Clickhouse
- Install and configure the Vector

### Prerequisite

- **Ansible 2.14+**

### Configure

Refer the file `group_vars/clickhouse/vars.yml` to change the default Clickhouse version:
    clickhouse_version: "22.3.3.44"

Refer the file `group_vars/vector/vars.yml` to change the default Vector version:
    vector_version: "0.36.1-1"

In `inventory/prod.yml` file, you can configure the node details.
`ansible_host` is used for ansible to connect the nodes to run this playbook.

### Custom configuration files

To override the default configuration for Vector, you must change the file `templates/vector.j2` 

## Getting Help

For more information, see [Help](https://www.youtube.com/watch?v=JHiqGqoIGII).
