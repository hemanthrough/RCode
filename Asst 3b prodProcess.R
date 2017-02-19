#prob of getting a part between 11 and 12 is difference betwn 2 pnorms
print(pnorm(q=12,mean = 12,sd = .4) - pnorm(q=11,mean = 12,sd = .4))
#2sigma
print(pnorm(q=11.2,mean = 12,sd = .4) - pnorm(q=12.8,mean = 12,sd = .4))
#3 sigma (1+.99)/2 get the sigma of std function ie qnorm(.995) multiply bt sd and add mean
# then add and sub this value to get the range
print(pnorm(q=10.8,mean = 12,sd = .4) - pnorm(q=13.2,mean = 12,sd = .4))