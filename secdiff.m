function [d2x,err]=secdiff(h)
d2x=zeros(11,1);
x=zeros(11,1);
for i=1:11
    x(i)=1+(2*(i-1))./10;
end
err=zeros(11,1);
function s=f(x)
s=exp(x).*sin(x);
end
function s=g(x)
s=2.*exp(x).*cos(x);
end
for i=1:11
    d2x(i)=(f(x(i)+h)-2.*f(x(i))+f(x(i)-h))./(h.^2);
end
err(1:11)=g(x(1:11))-d2x(1:11);
end

