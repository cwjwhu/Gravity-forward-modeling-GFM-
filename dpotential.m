function  [potential] = dpotential(density_t,xx1,xx2,yy1,yy2,z1,z2,lon,lat,r)
%������ת���ɵ�����ľ����⾵���������Ķ���������
%%teseeΪ������ģ�͵Ļ�����������ʽ�����ݰ�����tesee=[density;w;e;s;n;r1;r2]
%density:�ܶ�ֵ��w(��):�������������߾���ֵ��e(��):�������߾���ֵ��s(��):��ƽ����γ��ֵ��n(��):��ƽ����γ��ֵ��r1 and r2:spheres of radii
%prismΪ������ģ�����ݣ����������ʽΪprism=[density;x1;x2;y1;y2;z1;z2;prism_lon;prism_lat;prism_r]
%prism_lon��prism_lat��prism_rΪ�����嶥�����ĵĴ������
%prism(1)=density��prism(2)=x1��......prism(8)=prism_lon��prism(9)=prism_lat��prism(10)=prism_r��
d2r = pi/180;
density_p = density_t;
prism_lon=(xx1+xx2)/2;
prism_lat=(yy1+yy2)/2;
dx=xx2-xx1;
dy=yy2-yy1;
prism_r=(z1+z2)/2;
prism_r=prism_r+6378137.0;
x1 = -(dx/2)*6378137.0*d2r;
x2 = (dx/2)*prism_r*d2r;
y1 = -(dy/2)*6378137.0*d2r;
y2 = (dy/2)*prism_r*d2r;


%%
%��������ת��Ϊ������ľֲ��ѿ�������
%����P������ת��������������ϵ��
%��P(lon,lat,r)
%prismΪ������ģ�����ݣ����������ʽΪprism=[density;x1;x2;y1;y2;z1;z2;prism_lon;prism_lat;prism_r]
%prism_lon��prism_lat��prism_rΪ�����嶥�����ĵĴ������
%prism(1)=density��prism(2)=x1��......prism(8)=prism_lon��prism(9)=prism_lat��prism(10)=prism_r��
X = r*cos(d2r*lat)*cos(d2r*lon)-prism_r*cos(d2r*prism_lat)*cos(d2r*prism_lon) ;
Y = r*cos(d2r*lat)*sin(d2r*lon)-prism_r*cos(d2r*prism_lat)*sin(d2r*prism_lon) ;
Z = r*sin(d2r*lat) - prism_r*sin(d2r*prism_lat) ;
cosa = cos(d2r*(90 - prism_lat));
sina = sin(d2r*(90 - prism_lat));
cosb = cos(d2r*(180 - prism_lon));
sinb = sin(d2r*(180 - prism_lon));
xp = X*cosa*cosb - Y*cosa*sinb + Z*sina;
yp = -X*sinb - Y*cosb;
zp = -1*(-X*sina*cosb + Y*sina*sinb + Z*cosa);
%%
potential = p_potential(density_p,x1,x2,y1,y2,z1,z2,prism_lon,prism_lat,prism_r,xp,yp,zp);
end



