andrewrothstein.trident
=========
[![Build Status](https://travis-ci.org/andrewrothstein/ansible-trident.svg?branch=master)](https://travis-ci.org/andrewrothstein/ansible-trident)

Installs NetApp [tridentctl](https://github.com/NetApp/trident/releases).

Requirements
------------

See [meta/main.yml](meta/main.yml)

Role Variables
--------------

See [defaults/main.yml](defaults/main.yml)

Dependencies
------------

See [meta/main.yml](meta/main.yml)

Example Playbook
----------------

```yml
- hosts: servers
  roles:
    - andrewrothstein.trident
```

License
-------

MIT

Author Information
------------------

Andrew Rothstein <andrew.rothstein@gmail.com>
