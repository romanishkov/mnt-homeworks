Lighthouse
=========

This role install Lighthouse on EL


Role Variables
--------------

| vars | description |
|------------|-------------|
| lighthouse_dir | Directory for Lighthouse to be installed |

Dependencies
------------

  - geerlingguy.nginx
  - geerlingguy.git

Example Playbook
----------------

Including an example of how to use your role (for instance, with variables passed in as parameters) is always nice for users too:

    - hosts: servers
      roles:
         - { role: lighthouse }

License
-------

MIT

Author Information
------------------

Roman Ishkov