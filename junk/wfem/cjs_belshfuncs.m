close all
clc
% CJS belshfunc
% Project 1
%~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~
%% Derive Shape functions for quadratic beam element
% For all points, the polynomials N and N' are evaluated.
% w=a+bx+cx^2+dx^3

b = [1 -1  1 -1; % w(-1) x^n
     1  1  1  1; % w(1) x^n
     0  1 -2  3; % w'(-1) x^n
     0  1  2  3];% w'(1) x^n 

b=fliplr(b);
disp('b flipped to decreasing power order')
% For N1
a=[1 0 0 0]';
c1=(b\a)'
c1d=polyderiv(c1)
c1dd=polyderiv(polyderiv(c1))
% For N2
a=[0 0 1 0]';
c2=(b\a)'
c2d=polyderiv(c2)
c2dd=polyderiv(polyderiv(c2))
% For N3
a=[0 1 0 0]';
c3=(b\a)'
c3d=polyderiv(c3)
c3dd=polyderiv(polyderiv(c3))
% For N4
a=[0 0 0 1]';
c4=(b\a)'
c4d=polyderiv(c4)
c4dd=polyderiv(polyderiv(c4))

i=-1:.01:1;
plot(i,polyval(c1,i),i,polyval(c2,i),i,polyval(c3,i),...
    i,polyval(c4,i))
title('SHAPE FUNCTIONS')


