# Vagrant Image-Builder Ansible Integration

This repo intends to allow the usage of Ansible custom roles for compliance tests
after having the default IB roles installed in the VM.

## How to add a custom role?

Add a `node_custom_roles_pre` extra-vars and add your roles under the `ansible/roles` folder.

## Default compliance roles

Both `stig` and `cis` (level 2) Ansible custom roles are from [OpenSCAP project](https://www.open-scap.org/).

## Running compliance with CINC Auditor

```
STIG_BASELINE="../cis-baseline" SSH_HOST=vagrant@localhost:2222 make audit
```
