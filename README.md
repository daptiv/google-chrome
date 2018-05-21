[![Build Status](https://secure.travis-ci.org/daptiv/google-chrome.png)](http://travis-ci.org/daptiv/google-chrome)

# google-chrome cookbook

Installs Google Chrome for Windows, Fedora Ubuntu

# DEPRECATION

This cookbook is deprecated.

# Requirements

# Usage

# Attributes

* `['google-chrome']['track']` - The version of Chrome to track, defaults to stable. Can be set to 'beta' etc.

# Recipes

default
-------
Installs Google Chrome for the current platform

windows
-------
Install Google Chrome for Windows

ubuntu
-------
Install Google Chrome (Chromium) for Ubuntu

fedora
-------
Install Google Chrome (Chromium) for Fedora

# Authors

Author::Shawn Neal

# Contributors

Contributor::Rilindo Foster <rilindo.foster@monzell.com>

# TODO

* Update code to support requirements per https://support.google.com/chrome/answer/95411?hl=en
* Add RHEL/CentOS support once that is availabe. Monitoring https://code.google.com/p/chromium/issues/detail?id=227320
* OpenSUSE and Debian support coming as soon as I can get my VMs up and running. :)
