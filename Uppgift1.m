clear all; 
close all; 
clc;
FD=input('Ange födelsedatum och tid på formen[YYYY MM DD hh mm ss]')
DD=input('Ange nuvarande datum och tid på formen[YYYY MM DD hh mm ss]')
S=input('Hur många skottår har du varit med om?')
dY=DD(1)-FD(1)
dM=DD(2)-FD(2)
dD=DD(3)-FD(3)
dh=DD(4)-FD(4)
dm=DD(5)-FD(5)
ds=DD(6)-FD(6)

A=dY*365*24*60*60+dM*30*24*60*60+(dD+S)*24*60*60+dh*60*60+dm*60+ds
