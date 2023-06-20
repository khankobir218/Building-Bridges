i = 0;
j = 0;
k = 0;
l = 0;
a = zeros(20,20);
b = zeros(20,20);
c = zeros(20,20);
d = zeros(20,20);
for i = 1:20
    for j = 1:20
        if (i == 1 || j == 1 || i == 20 || j == 20)
            a(i, j) = 0;
            b(i, j) = 0;
            c(i, j) = 0;
            d(i, j) = 0;
        else
            a(i, j) = randi([0 1]);
            b(i, j) = randi([0 1]);
            c(i, j) = randi([0 1]);
            d(i, j) = randi([0 1]);
        end
    end
end

up = zeros(20,20);
down = zeros(20,20);
left = zeros(20,20);
right = zeros(20,20);

for i = 1:20
    for j = 2:19
        left(i, j) = b(i, j-1);
        right(i, j) = b(i, j+1);
    end
end

for i = 2:19
    for j = 1:20
        up(i, j) = a(i-1, j);
        down(i, j) = a(i+1, j);
    end
end

total = zeros(20,20);

for i = 2:19
    for j = 2:19
        count = left(i, j) + right(i, j) + up(i, j) + down(i, j);
        if (count == 3 || count == 2)
            total(i, j) = 1;
        end
    end
end

for i = 1:20
    for j = 1:20
        a(i, j) = total(i, j);
    end
end

for i = 1:20
    for j = 1:20
        if (i == 1 || j == 1 || i == 20 || j == 20)
            b(i, j) = 0;
            c(i, j) = 0;
            d(i, j) = 0;
        else
            b(i, j) = randi([0 1]);
            c(i, j) = randi([0 1]);
            d(i, j) = randi([0 1]);
        end
    end
end

up = zeros(20,20);
down = zeros(20,20);
left = zeros(20,20);
right = zeros(20,20);

for i = 1:20
    for j = 2:19
        left(i, j) = b(i, j-1);
        right(i, j) = b(i, j+1);
    end
end

for i = 2:19
    for j = 1:20
        up(i, j) = a(i-1, j);
        down(i, j) = a(i+1, j);
    end
end

total = zeros(20,20);

for i = 2:19
    for j = 2:19
        count = left(i, j) + right(i, j) + up(i, j) + down(i, j);
        if (count == 3 || count == 2)
            total(i, j) = 1;
        end
    end
end

for i = 1:20
    for j = 1:20
        b(i, j) = total(i, j);
    end
end

for i = 1:20
    for j = 1:20
        if (i == 1 || j == 1 || i == 20 || j == 20)
            c(i, j) = 0;
            d(i, j) = 0;
        else
            c(i, j) = randi([0 1]);
            d(i, j) = randi([0 1]);
        end
    end
end

up = zeros(20,20);
down = zeros(20,20);
left = zeros(20,20);
right = zeros(20,20);

for i = 1:20
    for j = 2:19
        left(i, j) = c(i, j-1);
        right(i, j) = c(i, j+1);
    end
end

for i = 2:19
    for j = 1:20
        up(i, j) = b(i-1, j);
        down(i, j) = b(i+1, j);
    end
end

total = zeros(20,20);

for i = 2:19
    for j = 2:19
        count = left(i, j) + right(i, j) + up(i, j) + down(i, j);
        if (count == 3 || count == 2)
            total(i, j) = 1;
        end
    end
end

for i = 1:20
    for j = 1:20
        c(i, j) = total(i, j);
    end
end

for i = 1:20
    for j = 1:20
        if (i == 1 || j == 1 || i == 20 || j == 20)
            d(i, j) = 0;
        else
            d(i, j) = randi([0 1]);
        end
    end
end

up = zeros(20,20);
down = zeros(20,20);
left = zeros(20,20);
right = zeros(20,20);

for i = 1:20
    for j = 2:19
        left(i, j) = d(i, j-1);
        right(i, j) = d(i, j+1);
    end
end

for i = 2:19
    for j = 1:20
        up(i, j) = c(i-1, j);
        down(i, j) = c(i+1, j);
    end
end

total = zeros(20,20);

for i = 2:19
    for j = 2:19
        count = left(i, j) + right(i, j) + up(i, j) + down(i, j);
        if (count == 3 || count == 2)
            total(i, j) = 1;
        end
    end
end

for i = 1:20
    for j = 1:20
        d(i, j) = total(i, j);
    end
end

% Display the result
disp(d);