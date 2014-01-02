################################################################################
## File:   magFactors.r
## Author: Brian J Smith <brian-j-smith@uiowa.edu>
##
## This file is part of the magma R package.
##
## magma is free software: you can redistribute it and/or modify
## it under the terms of the GNU General Public License as published by
## the Free Software Foundation, either version 3 of the License, or
## any later version.
##
## magma is distributed in the hope that it will be useful,
## but WITHOUT ANY WARRANTY; without even the implied warranty of
## MERCHANTABILITY or FITNESS FOR A PARTICULAR PURPOSE.  See the
## GNU General Public License for more details.
##
## You should have received a copy of the GNU General Public License
## along with magma.  If not, see <http://www.gnu.org/licenses/>.
################################################################################

################################################################################
# Matrix Factorizations
################################################################################


#################### Cholesky Factorization ####################

setMethod("chol", signature(x = "magma"),
   function(x) .Call("magChol", x)
)


#################### LU Factorization ####################

setMethod("lu", signature(x = "magma"),
   function(x, ...) .Call("magLU", x)
)


#################### QR Factorization ####################

setMethod("qr", signature(x = "magma"),
   function(x, ...) .Call("magQR", x)
)
