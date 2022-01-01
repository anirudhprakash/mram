function dm = SimPairFun(t, m)
    %UNTITLED3 Summary of this function goes here
    %   Detailed explanation goes here
    dm = zeros(6, 1);
    alpha = 0.2;
    ha = 1.2;
    hx = 0.0;
    hy = 0.0;
    %Magnetic pole 1
    hz = m(3, 1) - ha;
    mdh = m(1, 1) * hx + m(2, 1) * hy + m(3, 1) * hz;
    dm(1, 1) = -(m(2, 1) * hz - m(3, 1) * hy) - alpha * (mdh * m(1, 1) - hx);
    dm(2, 1) = -(m(3, 1) * hx - m(1, 1) * hz) - alpha * (mdh * m(2, 1) - hy);
    dm(3, 1) = -(m(1, 1) * hy - m(2, 1) * hx) - alpha * (mdh * m(3, 1) - hz);
    %Magnetic pole 2
    hz = m(6, 1) - 1.2;
    mdh = m(4, 1) * hx + m(5, 1) * hy + m(6, 1) * hz;
    dm(4, 1) = -(m(5, 1) * hz - m(6, 1) * hy) - alpha * (mdh * m(4, 1) - hx);
    dm(5, 1) = -(m(6, 1) * hx - m(4, 1) * hz) - alpha * (mdh * m(5, 1) - hy);
    dm(6, 1) = -(m(4, 1) * hy - m(5, 1) * hx) - alpha * (mdh * m(6, 1) - hz);
end