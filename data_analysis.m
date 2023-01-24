function [observation] = data_analysis(xyz)
xy=size(xyz);
startx=(xyz(1,1)+xyz(1,2))/2;
endx=xyz(xy(1,1),1);
intervalx=abs(xyz(2,1)-xyz(1,1));
starty=xyz(1,2);
endy=xyz(xy(1,1),2);
intervaly=intervalx;
if startx>endx
    a=startx;
    startx=endx;
    endx=a;
end
if starty>endy
    b=starty;
    starty=endy;
    endy=b;
end
observation=[startx,endx,intervalx,starty,endy,intervaly];

end

