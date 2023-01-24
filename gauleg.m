function [x,w] = gauleg(x1,x2,n)
%�˺���Ϊ��˹���õ�������
% xΪ�����Ļ��ֵ�
% wΪx����Ӧ��Ȩ��
% x1��x2Ϊ��������
% nΪ����Ҫ�Ľ���ֵ
m = (n+1)/2;
xm = 0.5*(x2+x1);
xl = 0.5*(x2-x1);
for i=1:1:m
    z = cos(pi*(i-0.25)./(n+0.5));
    while 1
    p1 = 1;
    p2 = 0;
    for j=1:1:n
        p3 = p2;
        p2 = p1;
        p1 = ((2*j-1)*z*p2-(j-1)*p3)./j;
    end
    pp = n*(z*p1-p2)/(z^2-1);
    z1 = z;
    z = z1-p1/pp;
    if abs(z-z1)<=3e-14
        break
    end
    end
    x(i) = xm-xl*z;
    x(n+1-i) = xm+xl*z;
    w(i) = 2./((1-z*z)*pp*pp);
    w(n+1-i)=w(i);   
end

