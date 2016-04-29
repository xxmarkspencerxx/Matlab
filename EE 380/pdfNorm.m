function f = pdfNorm(x,mu,variance)

% Returns the Pdf of Normal(mu, variance), at x,
% where mu=mean and variance is given
% Usage: fx = pdfNorm(x,mu,variance)

if (variance > 0)
    e = -.5*((x-mu).^2)/variance;
    c = 1/sqrt(variance*2*pi);
    f = c * exp(e);
end

return
