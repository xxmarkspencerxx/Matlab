function f = cdfNorm(x,mu,variance)

% Returns the Cdf of Normal(mu, variance), at x,
% where mu=mean and variance = Variance using
% Usage: Fx = NormalCdf(x,mu,variance)

if (variance > 0)
    % e is the value to calculate for the error function
    e = (x-mu)/sqrt(variance*2);
    f = 0.5*(1+erf(e)); % erf is an error function of matlab
end

return