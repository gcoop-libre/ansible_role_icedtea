Role Name
=========

This role allows you to install icedtea plugin in firefox

Requirements
------------

Role Variables
--------------

Dependencies
------------

Example Playbook
----------------

- hosts: servers
  roles:
    - role: gcoop-libre.ansible_role_icedtea
      version: 1.6.2-3.1ubuntu3
      firefox_custom_installation_dir: /opt/ffox52/firefox/

License
-------

GPLv3

Author Information
------------------

This role was created in 2019 by Francisco Alvarez, worker cooperative of [gcoop Cooperativa de Software Libre](http://www.gcoop.coop/).
An optional section for the role authors to include contact information, or a website (HTML is not allowed).
