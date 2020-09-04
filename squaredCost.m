
function cost = squaredCost(beta, dataAug, labels)

J = (labels-dataAug*beta).^2;
cost = sum(J);

end