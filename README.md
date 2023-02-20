# Conventional Commit format validator for bash

The purpose of this project is to implement a pure shell implementation of conventional commit format enforcement that does not require any additional third party tools to be installed.

The reasons for this include, but are not limited to
* Avoid sudden/unexpected requirement to wait for components to be updated, such as node version changing via another project
* Avoid supply chain attacks
** Relying on opaque code written by third parties that are really only doing simple string tokenization and matching can leave development teams vulnerable to supply chain attacks where there is a risk of IP being stolen
