# Generation of primal solution plot for transport problem
x <- seq(0,600)
y <- seq(0,600)
plot(x,y=600-x,ylim=c(0,600),main="Primal solution",xaxs = "i",yaxs="i",type="l",xlab="seattle",ylab="san-diego")
lines(x,y=400+x-x,col="blue")
lines(x,y=1E06*(x-300),col="blue")
lines(x,y=1700/3-2.5*x/3,lty=2,col="red")
lines(x,y=550-2.5*x/3,lty=1,col="red")
legend("topright",xpd=TRUE,legend=c("demand","capacity","z=153,000","z=148,500"),col=c("black","blue","red","red"),lwd=1,lty=c(1,1,2,1))

# Generation of dual solution plot for transport problem
x <- seq(0,300)
y <- seq(-300,300)
plot(x,y=x-225,main="Dual solution",xaxs = "i",yaxs="i",type="l",xlab="u1",ylab="u2")
lines(x,y=1E06*(x-270),col="blue")
lines(x,y=2*x-510,lty=2,col="red")
lines(x,y=2*x-1480/3,lty=1,col="red")
legend("topleft",xpd=TRUE,legend=c("seattle","san-diego","w=153,000","w=148,000"),col=c("black","blue","red","red"),lwd=1,lty=c(1,1,2,1))