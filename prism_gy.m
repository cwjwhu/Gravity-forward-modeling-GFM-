function [dg] = prism_gy(density,x1,x2,y1,y2,z1,z2,x0,y0,z0)
p=density;
G=6.67e-11;
dg=0;
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
            dg=-(-1).^(i+j+k).*G.*p.*((yn(:,j).*log(zn(:,k) + r) + zn(:,k).*log(yn(:,j) + r) ...
                           - xn(:,i).*atan(zn(:,k).*yn(:,j)./xn(:,i)./r)))+dg;
          end
      end
   end
end

