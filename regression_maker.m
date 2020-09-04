load regression
plot(X, Y, '.')
hold on
XAug = [X, ones(length(X), 1)];
p = 2; %the greater p, the more the data points outside of the normal range have influence.
%this is because their error squared is much greater. Eventually, I suppose
%that the line will get to the exact point where it is in between the data
%sets
squaredCostReduced = @(beta) absoluteCost(beta, XAug, Y, p);

initialValues = [0;0];
betaVector = fminsearch(squaredCostReduced, initialValues) %using our method
plot(X, betaVector(1).*X+betaVector(2))