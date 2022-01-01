function dm = youfun(t, m)
    %UNTITLED3 Summary of this function goes here
    %   Detailed explanation goes here
    dm = zeros(3, 1);
    alpha = 0.2;
    ha = 1.2;
    hx = 0.0;
    hy = 0.0;
    %Magnetic pole 1
    hz = m(3) - ha;
    mdh = m(1) * hx + m(2) * hy + m(3) * hz;
    dm(1) = -(m(2) * hz - m(3) * hy) - alpha * (mdh * m(1) - hx);
    dm(2) = -(m(3) * hx - m(1) * hz) - alpha * (mdh * m(2) - hy);
    dm(3) = -(m(1) * hy - m(2) * hx) - alpha * (mdh * m(3) - hz);
end