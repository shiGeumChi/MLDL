clc;clear;

n = linspace(0,20,20);
h= 0.25.*(n<=3); 
x= 1.*(n<=9);

% convolution
m=length(h);
n=length(x);
X=[h,zeros(1,n)];
H=[x,zeros(1,m)];
for i=1:n+m-1
    y(i)=0;
    for j=1:m
        if(i-j+1>0)
            y(i)=y(i)+X(j)*H(i-j+1);
        else
        end
    end
end

% plot results
figure;
subplot(3,1,1); stem(h, '-b^');
xlabel('n'); ylabel('h[n]'); grid on;

subplot(3,1,2); stem(x, '-ms');
xlabel('n'); ylabel('x[n]'); grid on;

subplot(3,1,3); stem(y, '-ro');
ylabel('y[n]'); xlabel('----->n'); grid on;
title('Convolution of Two Signals without conv function');
