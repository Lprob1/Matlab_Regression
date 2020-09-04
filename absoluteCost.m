
function cost = absoluteCost(beta, dataAug, labels, p)

cost = sum((abs(labels-dataAug*beta)).^p);

end