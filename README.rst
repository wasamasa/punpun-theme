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

Not on the usual places yet.  Install it manually for the time being.

Usage
-----

Either load the theme interactively with ``M-x load-theme RET punpun
RET`` or in your init file with:

.. code:: elisp

    (load-theme 'punpun t)

If you prefer the dark variant, customize ``punpun-dark-p``.
Alternatively, toggle between both variants with ``M-x punpun-toggle``.

Contributing
------------

If you find bugs, have suggestions or any other problems, feel free to
report an issue on the issue tracker or hit me up on IRC, I'm always on
``#emacs``.  Patches are welcome, too, just fork, work on a separate
branch and open a pull request with it.

.. _base16: https://chriskempson.github.io/base16/#grayscale
