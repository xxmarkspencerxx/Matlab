function Fx = NormalCdf(x,Mu,SigmaSq)

% Returns the Cdf of Normal(Mu, SigmaSq), at x,

% where Mu=mean and SigmaSq = Variance using

% MATLAB's error function erf

%

% Usage: Fx = NormalCdf(x,Mu,SigmaSq)

if SigmaSq <= 0

error('Variance must be > 0')

end
% e is the value to calculate for the error function
e = (x-Mu)/sqrt(SigmaSq*2);

Fx = 0.5*erf(Arg2Erf)+0.5;