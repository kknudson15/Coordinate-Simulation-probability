?rbeta
x= rbeta(5000, 3,1)
y= rbeta(5000,3,1)

x
hist(x)
hist(x, freq = FALSE)
curve(dbeta(x,3,1), add = TRUE, col=2)
curve(dbeta(x,3,1))
abline(v= c(0.8,0.9), lty=2)

n =50000
m = 20
counter = 0
x = rbeta(n,3,1)
y = rbeta(n,3,1)
for (i in 1:n)
{
  if((y[i]-x[i] >= 1/2))
  {
    counter = counter +1
  }
}
}
p = counter /n
p

n.range <- seq(100, 50000, 100)
p <- rep(NA, length(n.range))
for(n in n.range){
  x <-  rbeta(n,3,1)
  y <-  rbeta(n,3,1)
  p[n == n.range] <- mean(y - x > 1/2)
}
hist(p)
#plot(n.range, p)


