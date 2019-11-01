====
Norm
====

Norm is a tiny command-line utility to compute the norm of the difference
between two images. It is written in `Nim <https://nim-lang.org>`_.

Installation
------------

You can download prebuilt binaries for Linux and macOS from
`GitHub releases <https://github.com/jonasrauber/norm/releases>`_.

Example
-------

.. code-block:: bash

   norm example/original.png example/perturbed.png
   norm example/original.png example/perturbed.png -n l2
   norm example/original.png example/perturbed.png -n linf
