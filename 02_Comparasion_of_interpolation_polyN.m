for i  = 0:3
    Nx = 10*3^i;
    dx = 1/Nx;
    x = [1:dx:2]';
    
    V = vander(x);
    C = V\sin(x);
    
    y = x+0.1*dx*rand(size(x));
    subplot(2,2,i+1)
    plot(y,polyval(C,y)-sin(y));
    xlabel('x')
    ylabel('Pn(x)-f(x)')
    title(['Nx = ',num2str(Nx)])
end
figure(gcf)
    