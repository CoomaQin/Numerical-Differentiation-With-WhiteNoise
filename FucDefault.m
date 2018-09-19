xx=1:0.05:3
yy=fff(xx)
noise=randn(1,length(yy)).*0.5
yyNoise=yy+noise
yyfilter=Gaussianfilter(3,1,yyNoise)
plot(xx,yy);
hold on;
plot(xx,yyNoise);
hold on;
plot(xx,yyfilter);
grid on