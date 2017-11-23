clear all; 
close all; 
clc;
R=input('Vad väger pumpan')
l=1; %lägre gräns för slumpmässigt tal
h=100; %högre gräns
S=randi([l,h])
while S~=R
    if S>R
        h=S
        S=randi([l,h])
        %slump är större än rätt
        %byter ut den övre gränsen med slumptalet
    
    elseif S<R
        l=S    
        S=randi([l,h])
      
    end

end
if S==R
    disp('Datorn har funnit vikten på pumpan')
end


     

