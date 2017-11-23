clear all; 
close all; 
clc;
R=input('Vad väger pumpan')
l=1; %lägre gräns för slumpmässigt tal
h=100; %högre gräns
S=randi([l,h])
Vek=[]
i=1
while S~=R
    if S>R
        h=(S-1)
        Vek(i)=S
        i=i+1
        S=randi([l,h])
        %slump är större än rätt
        %byter ut den övre gränsen med slumptalet minus ett, då datorn kan annars plocka slumptalet igen
    
    elseif S<R
        l=(S+1) 
        Vek(i)=S
        i=i+1
        S=randi([l,h])
      
    end
end
plot([1:1:length(Vek)],Vek,'-+r')
xlabel('Gissningar')
ylabel('Gissad vikt')

if S==R
    disp('Datorn har funnit vikten på pumpan')
end

