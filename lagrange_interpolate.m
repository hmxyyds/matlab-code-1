function y = lagrange_interpolate(x0, y0, z)
    n = length(x0); % 已知数据点的数量
    y = 0; % 初始化插值结果

    for k = 1:n
        p = 1; % 初始化拉格朗日基多项式
        for j = 1:n
            if j ~= k
                p = p * (z - x0(j)) / (x0(k) - x0(j));
            end
        end
        y = y + p * y0(k); % 累加每个基多项式的贡献
    end
end

