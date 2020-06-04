function  [MSE] = Mse(m,n,x)

mse_m = zeros(size(x,1));
s = 0;
for i = 1:x
    for j = 1: x
        mse_m(i,j) = (n(i,j)- m(i,j)).^2;
        s = s+mse_m;
    end
    mse_row = s/x;
    mse(i,1) = mse_row;
end
MSE = mean(mse);

end