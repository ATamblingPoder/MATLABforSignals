% --- Problem 1
a = 10
b = 2.5 * (10 ^ 23)
c = 2 + (3 * i)
d = exp((j * 2 * pi)/3)

% --- Problem 2
aVec = [3.14 15 9 26]
bVec = [2.71; 8; 28; 182]
cVec = 5:-0.2:-5
dVec = logspace(1, 10)
eVec = "Hello"

% --- Problem 3
aMat = 2 * ones(9, 9) 
bDiag = [1 2 3 4 5 4 3 2 1];
bMat = diag(bDiag)
cFirst = 1:1:100;
cMat = reshape(cFirst, [10, 10])
dMat = NaN(3,4)
eMat = [13 -1 5; -22 10 -87]
fMat = -3 + (6)* rand(5, 3)

% --- Problem 4
cSum = sum(cMat)
eMean = mean(eMat, 2)
eMat(1,:) = [1 1 1]
cSub = cMat(2:9, 2:9)
lin = 1:1:20
lin = -1 * lin
r = rand(1, 5)
r(r(:,:) < 0.5) = 0
