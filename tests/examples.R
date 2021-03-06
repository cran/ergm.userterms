#  File tests/examples.R in package ergm.userterms, part of the Statnet suite
#  of packages for network analysis, https://statnet.org .
#
#  This software is distributed under the GPL-3 license.  It is free,
#  open source, and has the attribution requirements (GPL Section 7) at
#  https://statnet.org/attribution
#
#  Copyright 2012-2019 Statnet Commons
#######################################################################
library(ergm.userterms)
data(florentine)
summary(flomarriage~mindegree(3))
summary(flomarriage~mindegree(1,by="priorates"))
fit <- ergm(flomarriage~edges+mindegree(1,by="priorates"))
summary(fit)
