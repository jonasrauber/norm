# Package

version       = "0.1.0"
author        = "Jonas Rauber"
description   = "Computes the L2 norm between two image files"
license       = "MIT"
srcDir        = "src"
bin           = @["norm"]



# Dependencies

requires "nim >= 1.0.2"
requires "cligen >= 0.9.40"
requires "imageman >= 0.6.3"
