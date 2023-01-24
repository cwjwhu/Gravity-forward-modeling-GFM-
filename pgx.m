function [gx] = pgx(density_p,x1,x2,y1,y2,z1,z2,prism_lon,prism_lat,prism_r,xp,yp,zp)
G=6.67e-11;
p=density_p;
d2r = pi/180;
gx=0;
xn(1,1)=x1-xp;
xn(1,2)=x2-xp;
yn(1,1)=y1-yp;
yn(1,2)=y2-yp;
zn(1,1)=z1-zp;
zn(1,2)=z2-zp;
   for i=1:2
      for j=1:2
          for k=1:2
            r=sqrt(xn(1,i).*xn(1,i)+yn(1,j).*yn(1,j)+zn(1,k).*zn(1,k));
           gx=(-1).^(i+j+k).*G.*p.*((yn(:,j).*log(zn(:,k) + r) + zn(:,k).*log(yn(:,j) + r) ...
                           - xn(:,i).*atan(zn(:,k).*yn(:,j)./xn(:,i)./r)))+gx;
          end
      end 
    end
end

