# Ubuntu - Basic Dev Environment

## Description
Created this to easily recreate a base environment in WSL (running Ubuntu) -- This could work for other distributions and/or non-WSL environments, but has not been tested.

In summary, this project performs the following actions:
* Initially installs Ansible and zsh via APT (within bootstrap.sh script)
* Installs zsh, and [oh-my-zsh](https://ohmyz.sh/) using [Antigen](https://antigen.sharats.me/) via a pre-made Ansible role [gantsign/ansible_role_antigen](https://github.com/gantsign/ansible_role_antigen)
  * Creates a `~/.env.d` directory that will be auto-sourced within `~/.zshrc`
  * Sets up PATH and other environment variables for Homebrew in a later step
* Silently installs [Homebrew](https://brew.sh/) for Linux, with the following latest packages:
  * [ansible](https://github.com/ansible/ansible)
  * [warrensbox/tap/tfswitch](https://tfswitch.warrensbox.com/)
  * [tflint](https://github.com/terraform-linters/tflint)
  * [pre-commit](https://pre-commit.com/)
  * [tfsec](https://github.com/aquasecurity/tfsec)
  * [checkov](https://www.checkov.io/)
  * [nvm](https://github.com/nvm-sh/nvm)
  * [virtualenv](https://formulae.brew.sh/formula/virtualenv)
  * [virtualenvwrapper](https://formulae.brew.sh/formula/virtualenvwrapper)

## Requirements
```
- User account with 'sudo' access
- Ubuntu 20.0.4 (LTS) or equivalent
```

## Installation
From a clean terminal, clone this repository, and then simply run the included [bootstrap.sh](./bootstrap.sh) script.

You will be prompted for your password twice -- once for the initial package installation, and once for running the included playbook with sudo permissions.

![Demo](./demo.gif)
