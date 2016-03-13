#!/bin/bash

version=$(cut -d\" -f4 punpun-theme-pkg.el)
basename="punpun-theme-$version"

rm -rf $basename
mkdir $basename
cp punpun-common.el punpun-theme-pkg.el punpun-dark-theme.el punpun-light-theme.el LICENSE README.rst $basename
tar -cf $basename.tar $basename
rm -rf $basename
