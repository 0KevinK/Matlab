clear all; 
close all; 
clc;
R=input('Vad v�ger pumpan')
l=1; %l�gre gr�ns f�r slumpm�ssigt tal
h=100; %h�gre gr�ns
S=randi([l,h])
Vek=[]
i=1
while S~=R
    if S>R
        h=S
        Vek(i)=S
        i=i+1
        S=randi([l,h])
        %slump �r st�rre �n r�tt
        %byter ut den �vre gr�nsen med slumptalet
    
    elseif S<R
        l=S 
        Vek(i)=S
        i=i+1
        S=randi([l,h])
      
    end
end
plot([1:1:length(Vek)],Vek,'-+r')
if S==R
    disp('Datorn har funnit vikten p� pumpan')
end

