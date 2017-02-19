#capability level
#the mean should be in the middle so that sigma is max
# mu = glo+gup /2 m = 12
#afor finding out the formlae we use std formalae
sigma = (13-12)/qnorm(.995)
paste("sd ",sigma)

#bcapability index 
cpl = (13-11)/(6*sigma)
paste("capabilty index = " , cpl)

#c if mu = 12
mu =12
clo = (mu-11)/(3*sigma)
cup = (13-mu)/(3*sigma)

paste(" clo =", clo," cup =",cup )

# d if mu moved to 11.8
mu = 11.8
clo = (mu-11)/(3*sigma)
cup = (13-mu)/(3*sigma)
paste("capability index = ",min(clo,cup))


#for cp =1.33 considering mu is moved to 11.8

sigma = (13-mu)/(3*1.333)
paste("if mu = 11.8 sigma =" , sigma)
#if mu =12 then
mu =12
sigma = (13-mu)/(3*1.333)
paste("if mu = 12 sigma =" , sigma)

##bhk