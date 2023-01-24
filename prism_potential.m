function [potential] = prism_potential(density,x1,x2,y1,y2,z1,z2,x0,y0,z0)
p=density;
G=6.67e-11;
potential=0;
xn(1,1)=(x1-x0)*110000;
xn(1,2)=(x2-x0)*110000;
yn(1,1)=(y1-y0)*110000;
yn(1,2)=(y2-y0)*110000;
zn(1,1)=(z1-z0);
zn(1,2)=(z2-z0);
   for i=1:2
      for j=1:2
          for k=1:2
            r=sqrt(xn(1,i).*xn(1,i)+yn(1,j).*yn(1,j)+zn(1,k).*zn(1,k));
            potential=(-1).^(i+j+k).*G.*p.*(xn(i).*yn(j).*safelog(zn(k) + r)+ yn(j).*zn(k).*safelog(xn(i) + r) + xn(i).*zn(k).*safelog(yn(j) + r)...
            - 0.5.*xn(i).*xn(i).*atan(zn(k).*yn(j)./xn(i)./r)...
            - 0.5.*yn(j).*yn(j).*atan(zn(k).*xn(i)./yn(j)./r)...
            - 0.5.*zn(k).*zn(k).*atan(xn(i).*yn(j)./zn(k)./r))+potential;
          end
      end
   end
end
