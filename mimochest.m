
% no of Tx antennas
K = 2;

% no of Rx antennas
N = 2;

% no of multipaths
L = 2;

% period of the base sequence
Ptilda = 7;

% period of superimposed sequence
P = K*Ptilda;

% base sequence
c0bar = [1 -1 -1 1 1 1 -1];

% code to data power ratio
TIR = 0.2;

% length of data
Ldata = 10^3;

% data matrix of K users
x = zeros(K,Ldata);

% K users random data
for k=1:K
    x(k,:) = 2*rand(1,Ldata)-1;
end

% converting data to BPSK
x(x<0)=-1;
x(x>0)=1;