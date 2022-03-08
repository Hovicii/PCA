

%%

R = randn(150,21);


%%
%1-a)

var = cov(R)
sig  =corrcov(var)
mu = 
e = eig(sig); %eigenvalue of sig
[V,D] = eig(sig); % V is eigen vetors of sig(correlation matrix)

%%
Z=zeros([21,21]);

for i = 1:21
Z(i,:)= V(i,1)*R(i,:);
end

%%
Cov_Z  = cov(Z);

%%
%B)

lamda = zeros([1,21]);

for  i=1:21
    lamda(1,i) = Cov_Z(i,i);
    
end

%%
lamda_sort = sort(lamda);
lamda_sort_tr  = lamda_sort'


%%

%b)

%first three largest PCA component means three largest variability
%[0.1382, 0.0886, 0.0837]  = [Z11, Z20, Z06] 


%C) proportion of K reaches to 99% of variability

%%

%total variability is sum of lamda

total_var = sum(lamda_sort); %1.0648

ninty_nine = total_var*0.99 
difference = total_var-ninty_nine % minmum variablity is greater than the difference
% Therefore we need all K
%%










