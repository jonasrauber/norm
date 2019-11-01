====
Norm
====

Norm is a tiny command-line utility to compute the norm of the difference
between two images. It is written in `Nim <https://nim-lang.org>`_.

Example
-------

.. code-block:: bash

   norm example/original.png example/perturbed.png
   norm example/original.png example/perturbed.png -n l2
   norm example/original.png example/perturbed.png -n linf
