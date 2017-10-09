x = [1:1:100]; 
s = zeros(length(x), 1);
n = zeros(length(x), 1);

for i = 1:length(x)
        a = randi(100, x(i));
       % disp(a);
        b = randi(100, x(i));
       % disp(b);
        temp = 2^nextpow2(x(i))-x(i);
        [duumy s(i)] = strassen(padarray(a, [temp, temp], 'post'), padarray(b, [temp, temp], 'post'), 0);
        n(i) = x(i)^3;
end
plot(x, s, x, n);
legend('Strassen', 'Normal');
