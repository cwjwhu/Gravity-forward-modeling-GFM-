function [atpoint_ggxyz] = ggt_prism2point(atprism_ggxyz,density_p,x1,x2,y1,y2,z1,z2,prism_lon,prism_lat,prism_r,lon,lat)
%����������ת���������P(lon,lat,r)������ϵ
%prismΪ������ģ�����ݣ����������ʽΪprism=[density;x1;x2;y1;y2;z1;z2;prism_lon;prism_lat;prism_r]
%prism_lon��prism_lat��prism_rΪ�����嶥�����ĵĴ������
%prism(1)=density��prism(2)=x1��......prism(8)=prism_lon��prism(9)=prism_lat��prism(10)=prism_r
%atprism_ggxyzΪ����������ϵ�µ�����ʸ����gxx��gxy��gzz��gyx��gyy��gyz��gzx��gzy��gzz��
%atprism_gxyz = [gxx gxy gxz gyx gyy gyz gzx gzy gzz]
%����atpoint_gxyzΪ�ڼ����P��������ϵ�µ�����ʸ����Pgxx Pgxy Pgzz Pgyx Pgyy Pgyz Pgzx Pgzy Pgzz��
%atpoint_gxyz = [Pgxx Pgxy Pgzz Pgyx Pgyy Pgyz Pgzx Pgzy Pgzz]
d2r = pi/180;
cosbeta = cos(d2r*(prism_lon - lon));
sinbeta = sin(d2r*(prism_lon - lon));
cosphi = cos(d2r*lat);
sinphi = sin(d2r*lat);
cosphil = cos(d2r*prism_lat);
sinphil = sin(d2r*prism_lat);
RR(1) = cosbeta*sinphi*sinphil + cosphi*cosphil;
RR(2) = sinbeta*sinphi;
RR(3) = -cosbeta*sinphi*cosphil + cosphi*sinphil;
RR(4) = -sinbeta*sinphil;
RR(5) = cosbeta;
RR(6) = sinbeta*cosphil;
RR(7) = -cosbeta*cosphi*sinphil + sinphi*cosphil;
RR(8) = -sinbeta*cosphi;
RR(9) = cosbeta*cosphi*cosphil + sinphi*sinphil;
%Multiply tmp = R*Tensor
for i = 1:1:3
    for j = 1:1:3
        tem(po_s(i,j,3)) = 0;
        for k = 1:1:3
            tem(po_s(i,j,3)) = tem(po_s(i,j,3))+RR(po_s(i,k,3))*atprism_ggxyz(po_s(k,j,3));
        end
    end
end
%Multiply tmp*R^T 
for i1 = 1:1:3
    for j1 = 1:1:3
        atpoint_ggxyz(po_s(i1,j1,3)) = 0;
        for k1 = 1:1:3
            atpoint_ggxyz(po_s(i1,j1,3)) = atpoint_ggxyz(po_s(i1,j1,3))+tem(po_s(i1,k1,3))*RR(po_s(j1,k1,3));
        end
    end
end
  
end

