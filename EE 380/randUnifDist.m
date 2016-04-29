function [ r ] = randUnifDist( a,b,n )
%   This function will return n random numbers that are uniformly distributed
%   over an interval (a,b).
    r = (rand(n,1))*(b-a)+a;
end

