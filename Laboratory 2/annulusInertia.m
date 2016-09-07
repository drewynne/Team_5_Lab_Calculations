function [ I ] = annulusInertia(m, r, R)
%UNTITLED3 Summary of this function goes here
%   Detailed explanation goes here

    I = 0.5.*m.*(R.^2 + r.^2);
end

