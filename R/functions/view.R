# ========================== #
# Partie 3.7 - Visualisation #
# ========================== #

# Il faut charger d'abord la librairie polynome:
library("polynom")

dessiner <- function(p,x) {
	dp <- deriv(p)
	pp <- integ(p)
	## Evaluate p
	yp <- sapply(x, polyval, p=p)
	ydp <- sapply(x, polyval, p=dp)
	ypp <- sapply(x, polyval, p=pp)
	## Visualization
	cols <- c("blue","red", "green")
	matplot(x, cbind(yp,ydp,ypp),t="l", lwd=2, lty=1,col=cols, xlab="x",ylab="P(X),DerivP(X),IntegP(x)")
	#legend("topleft", inset=.05, legend=c("Naive", "Horner"), horiz=TRUE, lwd=2, lty=1, col=cols)
}
