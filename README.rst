punpun-theme
============

About
-----

I do absolutely adore `Solarized Dark`_, so much that I've forked
`bbatsov's version`_ and keep maintaining it myself.  I've been much
less happy with Solarized Light though, so here's my attempt at
creating a light theme.

Screenshots
-----------

.. image:: https://raw.github.com/wasamasa/punpun-theme/master/img/light.png
.. image:: https://raw.github.com/wasamasa/punpun-theme/master/img/dark.png

Usage
-----

Either load the theme interactively with ``M-x load-theme RET punpun
RET`` or in your init file with:

.. code:: elisp

    (load-theme 'punpun t)

If you prefer the dark variant, customize ``punpun-dark-p``.
Alternatively, toggle between both variants with ``M-x punpun-toggle``.

Design ideas
------------

The theme does incorporate both ideas from the design of `my favourite
manga`_ and the `Grayscale base16 theme`_.  The base shades are taken
from the standard 256-color terminal palette and are limited to shades
of gray.  If emphasis is necessary, it's preferably done by switching
to another shade, increasing the font weight or altering the slant.
Color is used sparingly, like for the display of errors or when it is
absolutely necessary (like, representing a color palette).  The
specific color shades haven't been determined yet, but will probably
come in the same colors as the highly saturated merchandise of the
aforementioned manga.

.. _Solarized Dark: http://ethanschoonover.com/solarized
.. _bbatsov's version: https://github.com/bbatsov/solarized-emacs
.. _my favourite manga: https://en.wikipedia.org/wiki/Oyasumi_Punpun
.. _Grayscale base16 theme: https://chriskempson.github.io/base16/#grayscale
