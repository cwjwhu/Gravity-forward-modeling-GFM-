function [ggt] = ggt(density_t,xx1,xx2,yy1,yy2,z1,z2,lon,lat,r)
%将曲面转换成等体积的矩形棱镜并附加中心顶面球坐标
%%tesee为球棱柱模型的基本参数，格式与内容包括有tesee=[density;w;e;s;n;r1;r2]
%density:密度值、w(西):球棱柱左子午线经度值、e(东):右子午线经度值、s(南):下平行线纬度值、n(北):上平行线纬度值、r1 and r2:spheres of radii
%prism为立方体模型数据，其数据与格式为prism=[density;x1;x2;y1;y2;z1;z2;prism_lon;prism_lat;prism_r]
%prism_lon、prism_lat、prism_r为立方体顶面中心的大地坐标
%prism(1)=density、prism(2)=x1、......prism(8)=prism_lon、prism(9)=prism_lat、prism(10)=prism_r。

d2r = pi/180;
density_p = density_t;
prism_lon=(xx1+xx2)/2;
prism_lat=(yy1+yy2)/2;
dx=xx2-xx1;
dy=yy2-yy1;
prism_r=(z1+z2)/2;
prism_r=prism_r+6371000;
x1 = -(dx/2)*6371000*d2r;
x2 = (dx/2)*prism_r*d2r;
y1 = -(dy/2)*6371000*d2r;
y2 = (dy/2)*prism_r*d2r;


%%
%将球坐标转换为立方体的局部笛卡尔坐标
%将点P的坐标转换到棱柱的坐标系下
%点P(lon,lat,r)
%prism为立方体模型数据，其数据与格式为prism=[density;x1;x2;y1;y2;z1;z2;prism_lon;prism_lat;prism_r]
%prism_lon、prism_lat、prism_r为立方体顶面中心的大地坐标
%prism(1)=density、prism(2)=x1、......prism(8)=prism_lon、prism(9)=prism_lat、prism(10)=prism_r。
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
g_xx = pgxx(density_p,x1,x2,y1,y2,z1,z2,prism_lon,prism_lat,prism_r,xp,yp,zp);
g_xy = pgxy(density_p,x1,x2,y1,y2,z1,z2,prism_lon,prism_lat,prism_r,xp,yp,zp);
g_xz = pgxz(density_p,x1,x2,y1,y2,z1,z2,prism_lon,prism_lat,prism_r,xp,yp,zp);
g_yy = pgyy(density_p,x1,x2,y1,y2,z1,z2,prism_lon,prism_lat,prism_r,xp,yp,zp);
g_yz = pgyz(density_p,x1,x2,y1,y2,z1,z2,prism_lon,prism_lat,prism_r,xp,yp,zp);
atprism_ggxyz(1) = g_xx;
atprism_ggxyz(2) = g_xy;
atprism_ggxyz(3) = -1*g_xz;
atprism_ggxyz(4) = g_xy;
atprism_ggxyz(5) = g_yy;
atprism_ggxyz(6) = -1*g_yz;
atprism_ggxyz(7) = atprism_ggxyz(3);
atprism_ggxyz(8) = atprism_ggxyz(6);
atprism_ggxyz(9) = -(atprism_ggxyz(1)+atprism_ggxyz(5));
atpoint_ggxyz = ggt_prism2point(atprism_ggxyz,density_p,x1,x2,y1,y2,z1,z2,prism_lon,prism_lat,prism_r,lon,lat);
ggt(1) = atpoint_ggxyz(1);
ggt(2) = atpoint_ggxyz(2);
ggt(3) = atpoint_ggxyz(3);
ggt(4) = atpoint_ggxyz(5);
ggt(5) = atpoint_ggxyz(6);
ggt(6) = atpoint_ggxyz(9);
end

