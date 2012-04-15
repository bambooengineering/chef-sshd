# Description #

Installs and configures SSH.

# Requirements #

## Platforms ##

* Ubuntu 11.10 (Oneiric)

# Attributes #

* `node["sshd"]["dir"]` - Directory for SSH configuration.
* `node["sshd"]["port"]` - Port to run SSH on.
* `node["sshd"]["permit_root_login"]` - Permit root login via SSH.
* `node["sshd"]["password_authentication"]` - Allow password authentication.

# Recipes #

* `recipe[sshd]` will install SSH.

# Usage #

Currently only supports a small subset of configuration options.
