# google-chrome cookbook

Installs Google Chrome for Windows, Fedora Ubuntu

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

Author::Rilindo Foster, originally Shawn Neal

# TODO

* Update code to support requirements per https://support.google.com/chrome/answer/95411?hl=en
* Add RHEL/CentOS support once that is availabe. Monitoring https://code.google.com/p/chromium/issues/detail?id=227320
