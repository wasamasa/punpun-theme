#!/bin/bash

version=$(cut -d\" -f4 punpun-theme-pkg.el)
tar -cf punpun-theme-$version.tar punpun-theme.el punpun-theme-pkg.el punpun-dark-theme.el  punpun-light-theme.el
