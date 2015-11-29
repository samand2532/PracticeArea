clc; clear all;
tic

Limit = 100

CountA = 0;
for a = 1:Limit
for DiceRoll = 1:a
    CountA = CountA + 1;
    MatA(CountA,1) = CountA;
    MatA(CountA,2:3) = randi([1 6],1,2);
    MatA(CountA,4) = MatA(CountA,2) + MatA(CountA,3);
end
%plot(MatA(:,4),'DisplayName','MatA')
histogram(MatA(:,4))
title([num2str(a)])
pause(0)
end

for i = 1:10
end

toc