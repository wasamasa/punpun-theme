punpun-theme
============

.. image:: https://raw.github.com/wasamasa/punpun-theme/master/img/banner.png

About
-----

Yowdy!  This theme is an experiment.  While there's plenty of
gorgeous-looking dark themes, I've had less luck with light themes, so
here's my own take on that.  There's a strong emphasis on shades of
gray, variations in font weight/slant and sometimes a bit of color.
For symmetry's sake a dark version is included.  As a bonus this theme
will work in 256-color terminal emulators as well.  Enjoy!

Screenshots
-----------

.. image:: https://raw.github.com/wasamasa/punpun-theme/master/img/light.png
.. image:: https://raw.github.com/wasamasa/punpun-theme/master/img/dark.png

Installation
------------

Set up the `Marmalade <https://marmalade-repo.org/>`_ or `MELPA
(stable) <http://melpa.org/>`_ repository if you haven't already and
install with ``M-x package-install RET punpun-theme RET``.

Usage
-----

Either load the theme interactively with ``M-x load-theme RET
punpun-light RET`` or in your init file with:

.. code:: elisp

    (load-theme 'punpun-light t)

Replace ``punpun-light`` with ``punpun-dark`` for the dark version.

Contributing
------------

If you find bugs, have suggestions or any other problems, feel free to
report an issue on the issue tracker or hit me up on IRC, I'm always on
``#emacs``.  Patches are welcome, too, just fork, work on a separate
branch and open a pull request with it.

.. _base16: https://chriskempson.github.io/base16/#grayscale
