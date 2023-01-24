function [tess_gx] = tess_gx_field(tesee,glq_lat_order,glq_lon_order,glq_r_order,lonp,latp,rp)
%tesee为球棱柱的基本参数，格式与内容包括有tesee=[density;w;e;s;n;r1;r2]
%density:密度值、w(西):球棱柱左子午线经度值、e(东):右子午线经度值、s(南):下平行线纬度值、n(北):上平行线纬度值、r1 and r2:spheres of radii
%glq_lat_order:高斯勒让德积分对纬度阶数
%glq_lon_order:高斯勒让德积分对经度阶数
%glq_r_order:高斯勒让德积分对距离阶数
%lonp:P点在全球坐标系下的经度值
%latp:P点在全球坐标系下的纬度值
%rp:P点到坐标系原点的距离
%Tesee是计算(lonp,latp,rp)点效应的信号Tesee
%阶是Gauss-Legdren的阶，正常值是2
d2r = pi/180;
G = 6.67e-11;
SI2MGAL = 1e+5;
coslatp = cos(d2r*latp);
sinlatp = sin(d2r*latp);
%求解出经度、纬度、距离的节点和对应的权重值(利用gauleg函数)
[glq_lon_nodes,glq_lon_weights] = gauleg(tesee(2),tesee(3),glq_lon_order);
[glq_lat_nodes,glq_lat_weights] = gauleg(tesee(4),tesee(5),glq_lat_order);
[glq_r_nodes,glq_r_weights] = gauleg(tesee(6),tesee(7),glq_r_order);
glq_lat_nodes_sin = sin(d2r*glq_lat_nodes);
glq_lat_nodes_cos = cos(d2r*glq_lat_nodes);
res = 0;
for k = 1:1:glq_lon_order
    coslon = cos(d2r*(lonp - glq_lon_nodes(k))) ;
    wlon = glq_lon_weights(k);
    for j = 1:1:glq_lat_order
        sinlatc = glq_lat_nodes_sin(j);
        coslatc = glq_lat_nodes_cos(j);
        kphi = coslatp*sinlatc - coslatc*sinlatp.*coslon;
        cospsi = sinlatp*sinlatc + coslatc*coslatp.*coslon;
        wlat = glq_lat_weights(j) ;
        for i=1:1:glq_r_order
            wr = glq_r_weights(i);
            rc = glq_r_nodes(i);
            l_sqr = rp.^2 + rc.^2 - 2*rp.*rc.*cospsi;
            kappa = rc.^2*coslatc;
            res =res+ wlon*wlat*wr*kappa*(rc*kphi)./(l_sqr.^(1.5)) ;
        end
    end
end
scale = d2r*(tesee(3) - tesee(2))*d2r*(tesee(5) - tesee(4))*(tesee(7) - tesee(6))/8;
tess_gx = res*SI2MGAL*G*tesee(1)*scale;
end



