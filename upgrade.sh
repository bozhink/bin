#!/bin/bash
mkdir /etc/zypp/repos.d/old
mv /etc/zypp/repos.d/*.repo /etc/zypp/repos.d/old


zypper ar -f -c http://download.opensuse.org/tumbleweed/repo/oss repo-oss
zypper ar -f -c http://download.opensuse.org/tumbleweed/repo/non-oss repo-non-oss
zypper ar -f -c http://download.opensuse.org/tumbleweed/repo/debug repo-debug
zypper ar -f -c http://download.opensuse.org/update/tumbleweed/ repo-update

zypper ar -f -d -c http://download.opensuse.org/tumbleweed/repo/src-oss repo-src-oss
zypper ar -f -d -c http://download.opensuse.org/tumbleweed/repo/src-non-oss repo-src-non-oss

# Show current repos
zypper lr -u

# zypper refresh
# zypper dist-upgrade
# or
# zypper dup

