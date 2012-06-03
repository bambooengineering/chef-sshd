# sshd [![Build Status](https://secure.travis-ci.org/hectcastro/chef-sshd.png?branch=master)](http://travis-ci.org/hectcastro/chef-sshd)

## Description

Installs and configures SSH.

## Requirements

### Platforms

* Ubuntu 11.10 (Oneiric)
* Ubuntu 12.04 (Precise)

## Attributes

* `node["sshd"]["dir"]` - Directory for SSH configuration.
* `node["sshd"]["port"]` - Port to run SSH on.
* `node["sshd"]["permit_root_login"]` - Permit root login via SSH.
* `node["sshd"]["password_authentication"]` - Allow password authentication.

## Recipes

* `recipe[sshd]` will install SSH.

## Usage

Currently only supports a small subset of configuration options.
