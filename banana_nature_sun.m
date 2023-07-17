%Create Bridges 
%This code will show how to build a bridge out of a material of different
%weights 

%Initialize Bridge
L = 20; %length of bridge in m
W = 5; %width of bridge in m
V = L*W; %volume of bridge 

%Initialize Material
M1 = 'steel'; %material 1
M2 = 'wood'; %material 2
d1 = 800; %density of material 1 in kg/m^3
d2 = 600; %density of material 2 in kg/m^3

%Calculate Weight of Bridge
M1_weight = (d1*V)/1000; %weight of steel in tonnes 
M2_weight = (d2*V)/1000; %weight of wood in tonnes 

%Distribution of Weights 
w1 = 0.7; %percentage of weight of steel in bridge  
w2 = 0.3; %percentage of weight of wood in bridge 

%Calculate Weights of Each Material
final_M1_weight = (w1*M1_weight); %final weight of steel in tonnes
final_M2_weight = (w2*M2_weight); %final weight of wood in tonnes 

%Display Weight of Bridge 
disp('The total weight of the bridge is:') 
disp(M1_weight+M2_weight)
disp('The weight of steel in the bridge is:')  
disp(final_M1_weight) 
disp('The weight of wood in the bridge is:')
disp(final_M2_weight) 

%Build the Bridge 
disp('Building the Bridge made out of:') 
disp(M1) 
disp(M2)  
disp('The bridge has been built!')  

%Check Bridge 
disp('The bridge is being inspected...') 
disp('Checking the weight of the bridge...') 
bridge_weight = (final_M1_weight + final_M2_weight);
disp('The total weight of the bridge is:') 
disp(bridge_weight) 

if bridge_weight > 0
    disp('The bridge passes the weight test!')
else
    disp('The bridge does not pass the weight test')
end 

%Finish Bridge 
disp('The bridge has been completed!')