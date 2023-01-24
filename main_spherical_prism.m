function varargout = main_spherical_prism(varargin)
% MAIN_SPHERICAL_PRISM MATLAB code for main_spherical_prism.fig
%      MAIN_SPHERICAL_PRISM, by itself, creates a new MAIN_SPHERICAL_PRISM or raises the existing
%      singleton*.
%
%      H = MAIN_SPHERICAL_PRISM returns the handle to a new MAIN_SPHERICAL_PRISM or the handle to
%      the existing singleton*.
%
%      MAIN_SPHERICAL_PRISM('CALLBACK',hObject,eventData,handles,...) calls the local
%      function named CALLBACK in MAIN_SPHERICAL_PRISM.M with the given input arguments.
%
%      MAIN_SPHERICAL_PRISM('Property','Value',...) creates a new MAIN_SPHERICAL_PRISM or raises the
%      existing singleton*.  Starting from the left, property value pairs are
%      applied to the GUI before main_spherical_prism_OpeningFcn gets called.  An
%      unrecognized property name or invalid value makes property application
%      stop.  All inputs are passed to main_spherical_prism_OpeningFcn via varargin.
%
%      *See GUI Options on GUIDE's Tools menu.  Choose "GUI allows only one
%      instance to run (singleton)".
%
% See also: GUIDE, GUIDATA, GUIHANDLES

% Edit the above text to modify the response to help main_spherical_prism

% Last Modified by GUIDE v2.5 30-Nov-2022 09:20:04

% Begin initialization code - DO NOT EDIT
gui_Singleton = 1;
gui_State = struct('gui_Name',       mfilename, ...
                   'gui_Singleton',  gui_Singleton, ...
                   'gui_OpeningFcn', @main_spherical_prism_OpeningFcn, ...
                   'gui_OutputFcn',  @main_spherical_prism_OutputFcn, ...
                   'gui_LayoutFcn',  [] , ...
                   'gui_Callback',   []);
if nargin && ischar(varargin{1})
    gui_State.gui_Callback = str2func(varargin{1});
end

if nargout
    [varargout{1:nargout}] = gui_mainfcn(gui_State, varargin{:});
else
    gui_mainfcn(gui_State, varargin{:});
end
% End initialization code - DO NOT EDIT


% --- Executes just before main_spherical_prism is made visible.
function main_spherical_prism_OpeningFcn(hObject, eventdata, handles, varargin)
% This function has no output args, see OutputFcn.
% hObject    handle to figure
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)
% varargin   command line arguments to main_spherical_prism (see VARARGIN)

% Choose default command line output for main_spherical_prism
handles.output = hObject;

% Update handles structure
guidata(hObject, handles);

% UIWAIT makes main_spherical_prism wait for user response (see UIRESUME)
% uiwait(handles.figure1);


% --- Outputs from this function are returned to the command line.
function varargout = main_spherical_prism_OutputFcn(hObject, eventdata, handles) 
% varargout  cell array for returning output args (see VARARGOUT);
% hObject    handle to figure
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)

% Get default command line output from handles structure
varargout{1} = handles.output;



function edit1_Callback(hObject, eventdata, handles)
% hObject    handle to edit1 (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)

% Hints: get(hObject,'String') returns contents of edit1 as text
%        str2double(get(hObject,'String')) returns contents of edit1 as a double


% --- Executes during object creation, after setting all properties.
function edit1_CreateFcn(hObject, eventdata, handles)
% hObject    handle to edit1 (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    empty - handles not created until after all CreateFcns called

% Hint: edit controls usually have a white background on Windows.
%       See ISPC and COMPUTER.
if ispc && isequal(get(hObject,'BackgroundColor'), get(0,'defaultUicontrolBackgroundColor'))
    set(hObject,'BackgroundColor','white');
end



function edit2_Callback(hObject, eventdata, handles)
% hObject    handle to edit2 (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)

% Hints: get(hObject,'String') returns contents of edit2 as text
%        str2double(get(hObject,'String')) returns contents of edit2 as a double


% --- Executes during object creation, after setting all properties.
function edit2_CreateFcn(hObject, eventdata, handles)
% hObject    handle to edit2 (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    empty - handles not created until after all CreateFcns called

% Hint: edit controls usually have a white background on Windows.
%       See ISPC and COMPUTER.
if ispc && isequal(get(hObject,'BackgroundColor'), get(0,'defaultUicontrolBackgroundColor'))
    set(hObject,'BackgroundColor','white');
end



function edit3_Callback(hObject, eventdata, handles)
% hObject    handle to edit3 (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)

% Hints: get(hObject,'String') returns contents of edit3 as text
%        str2double(get(hObject,'String')) returns contents of edit3 as a double


% --- Executes during object creation, after setting all properties.
function edit3_CreateFcn(hObject, eventdata, handles)
% hObject    handle to edit3 (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    empty - handles not created until after all CreateFcns called

% Hint: edit controls usually have a white background on Windows.
%       See ISPC and COMPUTER.
if ispc && isequal(get(hObject,'BackgroundColor'), get(0,'defaultUicontrolBackgroundColor'))
    set(hObject,'BackgroundColor','white');
end



function edit4_Callback(hObject, eventdata, handles)
% hObject    handle to edit4 (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)

% Hints: get(hObject,'String') returns contents of edit4 as text
%        str2double(get(hObject,'String')) returns contents of edit4 as a double


% --- Executes during object creation, after setting all properties.
function edit4_CreateFcn(hObject, eventdata, handles)
% hObject    handle to edit4 (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    empty - handles not created until after all CreateFcns called

% Hint: edit controls usually have a white background on Windows.
%       See ISPC and COMPUTER.
if ispc && isequal(get(hObject,'BackgroundColor'), get(0,'defaultUicontrolBackgroundColor'))
    set(hObject,'BackgroundColor','white');
end


% --- Executes on button press in pushbutton4.
function pushbutton4_Callback(hObject, eventdata, handles)
% hObject    handle to pushbutton4 (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)
[filename,pathname,c]=uiputfile('*.txt','保存');
output=get(handles.uitable1,'data');
if c==1
file=[pathname,filename];
csvwrite(file,output);
h=dialog('Name','Save data','Position',[200 200 200 70]);
uicontrol('Style','text','Units','pixels','Position',[50 40 120 20],'FontSize',10,...
    'Parent',h,'String','save done');  %创建文本内容
uicontrol('Units','pixels','Position',[80 10 50 20],'FontSize',10,...
    'Parent',h,'String','OK','Callback','delete(gcf)');

end

% --- Executes on button press in pushbutton5.
function pushbutton5_Callback(hObject, eventdata, handles)
% hObject    handle to pushbutton5 (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)
global xyz;
global startx;
global endx;
global intervalx;
global starty;
global endy;
global intervaly;
global observation_h;
global a1;
global gc_xyz;
axes(handles.axes1);
cla reset
axis off
g7=get(handles.radiobutton7,'value');%gz
%  user data (see GUIDATA)
g1=get(handles.radiobutton1,'value');%gxx
g2=get(handles.radiobutton2,'value');%gxy
g3=get(handles.radiobutton3,'value');%gxz
g4=get(handles.radiobutton4,'value');%gyy
g5=get(handles.radiobutton5,'value');%gyz
g6=get(handles.radiobutton6,'value');%gzz
g8=get(handles.radiobutton15,'value');%all
g9=get(handles.radiobutton16,'value');%potential
g10=get(handles.radiobutton17,'value');%gx
g11=get(handles.radiobutton18,'value');%gy
xy=size(xyz);
n=xy(1,1);
result=[];
if a1==1
a=size(startx:intervalx:endx);
b=size(starty:intervaly:endy);
s=a(1,2)*b(1,2);
if g8==0
m=1;
h=waitbar(0,'start');
for  y=starty:intervaly:endy
    lat=y;
    for x=startx:intervalx:endx
    lon=x;
    r=6378137.0+observation_h;
    gg1=0;
    for i=1:n
       density=xyz(i,7);
       x1=xyz(i,1);x2=xyz(i,2);
       y1=xyz(i,3);y2=xyz(i,4);
       z1=xyz(i,5);z2=xyz(i,6);
%        if z1>z2
%            sc=z1;
%            z1=z2;
%            z2=sc;
%        end
                if g7==1||g10==1||g11==1
        gg1=dg(density,x1,x2,y1,y2,z1,z2,lon,lat,r)+gg1;
                elseif g9==1
        gg1=dpotential(density,x1,x2,y1,y2,z1,z2,lon,lat,r)+gg1;   
                else
        gg1=ggt(density,x1,x2,y1,y2,z1,z2,lon,lat,r)+gg1;
                end          
    end
    result(m,1)=x;
    result(m,2)=y;
    if g7==1||g10==1||g11==1 
        gz(m)=gg1(3)*10^5;
        gx(m)=gg1(1)*10^5;
        gy(m)=gg1(2)*10^5;
        if g7==1
        result(m,3)=gz(m);
        g(m)=gz(m);
        elseif g10==1
        result(m,3)=gx(m);
        g(m)=gx(m);
        elseif g11==1
        result(m,3)=gy(m);
        g(m)=gy(m);
        end
    elseif g9==1
        g(m)=gg1;
        result(m,3)=g(m);
    else
    gxx(m)=gg1(1)*10^9;
    gxy(m)=gg1(2)*10^9;
    gxz(m)=gg1(3)*10^9;
    gyy(m)=gg1(4)*10^9;
    gyz(m)=gg1(5)*10^9;
    gzz(m)=gg1(6)*10^9; 
    if g1==1
         result(m,3)=gxx(m);
        g(m)=gxx(m);
    elseif g2==1
        result(m,3)=gxy(m);
        g(m)=gxy(m);
    elseif g3==1
        result(m,3)=gxz(m);
        g(m)=gxz(m);
    elseif g4==1
        result(m,3)=gyy(m);
        g(m)=gyy(m);
    elseif g5==1
        result(m,3)=gyz(m);
        g(m)=gyz(m);
    elseif g6==1
        result(m,3)=gzz(m);
        g(m)=gzz(m);
    end
    end
 waitbar(m/s,h,['computation progress finish ',num2str(100*(m/s)),'%','...'])
    m=m+1;
    end
end
close(h)
data=feature_data(g);
set(handles.uitable3,'data',data)
mn=reshape(g,a(1,2),b(1,2));
imagesc([startx endx],[starty endy],mn')
set(handles.uitable1,'data',result)
set(gca,'YDir','normal')
xlabel('X/Longitude');
ylabel('Y/Latitude');
cb=colorbar;
if g7==1||g10==1||g11==1
set(get(cb,'title'),'string','mGal');
elseif g9==1
  set(get(cb,'title'),'string','m^2/s^2');  
else
  set(get(cb,'title'),'string','E');
end
colormap(jet)
axes(handles.axes2)
hist(g)
xlabel('Gravity Parameters');
ylabel('Numbers'); 
else
   m=1;
h=waitbar(0,'start');
for  y=starty:intervaly:endy
    lat=y;
    for x=startx:intervalx:endx
    lon=x;
    r=6378137.0+observation_h;
    gg1=0;gg2=0;gg0=0;
    for i=1:n
       density=xyz(i,7);
       x1=xyz(i,1);x2=xyz(i,2);
       y1=xyz(i,3);y2=xyz(i,4);
       z1=xyz(i,5);z2=xyz(i,6);
%        if z1>z2
%            sc=z1;
%            z1=z2;
%            z2=sc;
%        end
       gg0=dpotential(density,x1,x2,y1,y2,z1,z2,lon,lat,r)+gg0;
        gg1=dg(density,x1,x2,y1,y2,z1,z2,lon,lat,r)+gg1;
        gg2=ggt(density,x1,x2,y1,y2,z1,z2,lon,lat,r)+gg2;         
    end
    result(m,1)=x;
    result(m,2)=y;
    potential(m)=gg0;
    gx(m)=gg1(1)*10^5;
    gy(m)=gg1(2)*10^5;
    gz(m)=gg1(3)*10^5;
    result(m,3)=potential(m);
    result(m,4)=gx(m);
    result(m,5)=gy(m);
    result(m,6)=gz(m);
    gxx(m)=gg2(1)*10^9;
    gxy(m)=gg2(2)*10^9;
    gxz(m)=gg2(3)*10^9;
    gyy(m)=gg2(4)*10^9;
    gyz(m)=gg2(5)*10^9;
    gzz(m)=gg2(6)*10^9; 
    result(m,7)=gxx(m);
    result(m,8)=gxy(m);
    result(m,9)=gxz(m);
    result(m,10)=gyy(m);
    result(m,11)=gyz(m);
    result(m,12)=gzz(m);
 waitbar(m/s,h,['computation progress finish ',num2str(100*(m/s)),'%','...'])
    m=m+1;
    end
end 
close(h)
set(handles.uitable1,'data',result);
data(1,:)=feature_data(potential);
data(2,:)=feature_data(gx);
data(3,:)=feature_data(gy);
data(4,:)=feature_data(gz);
data(5,:)=feature_data(gxx);
data(6,:)=feature_data(gxy);
data(7,:)=feature_data(gxz);
data(8,:)=feature_data(gyy);
data(9,:)=feature_data(gyz);
data(10,:)=feature_data(gzz);
set(handles.uitable3,'data',data)
figure(1);
subplot(4,3,1)
mn=reshape(gx,a(1,2),b(1,2));
imagesc([startx endx],[starty endy],mn')
set(gca,'YDir','normal')
title('Gx');
xlabel('X/Longitude');
ylabel('Y/Latitude');
cb=colorbar;
set(get(cb,'title'),'string','mGal');
colormap(jet)
subplot(4,3,2)
mn=reshape(gy,a(1,2),b(1,2));
imagesc([startx endx],[starty endy],mn')
set(gca,'YDir','normal')
title('Gy');
xlabel('X/Longitude');
ylabel('Y/Latitude');
cb=colorbar;
set(get(cb,'title'),'string','mGal');
colormap(jet)
subplot(4,3,3)
mn=reshape(gz,a(1,2),b(1,2));
imagesc([startx endx],[starty endy],mn')
set(gca,'YDir','normal')
title('Gz');
xlabel('X/Longitude');
ylabel('Y/Latitude');
cb=colorbar;
set(get(cb,'title'),'string','mGal');
colormap(jet)
subplot(4,3,4)
mn=reshape(gxx,a(1,2),b(1,2));
imagesc([startx endx],[starty endy],mn')
set(gca,'YDir','normal')
title('Gxx');
xlabel('X/Longitude');
ylabel('Y/Latitude');
cb=colorbar;
set(get(cb,'title'),'string','E');
colormap(jet)
subplot(4,3,5)
mn=reshape(gxy,a(1,2),b(1,2));
imagesc([startx endx],[starty endy],mn')
set(gca,'YDir','normal')
title('Gxy');
xlabel('X/Longitude');
ylabel('Y/Latitude');
cb=colorbar;
set(get(cb,'title'),'string','E');
colormap(jet)
subplot(4,3,6)
mn=reshape(gxz,a(1,2),b(1,2));
imagesc([startx endx],[starty endy],mn')
set(gca,'YDir','normal')
title('Gxz');
xlabel('X/Longitude');
ylabel('Y/Latitude');
cb=colorbar;
set(get(cb,'title'),'string','E');
colormap(jet)
subplot(4,3,8)
mn=reshape(gyy,a(1,2),b(1,2));
imagesc([startx endx],[starty endy],mn')
set(gca,'YDir','normal')
title('Gyy');
xlabel('X/Longitude');
ylabel('Y/Latitude');
cb=colorbar;
set(get(cb,'title'),'string','E');
colormap(jet)
subplot(4,3,9)
mn=reshape(gyz,a(1,2),b(1,2));
imagesc([startx endx],[starty endy],mn')
set(gca,'YDir','normal')
title('Gyz');
xlabel('X/Longitude');
ylabel('Y/Latitude');
cb=colorbar;
set(get(cb,'title'),'string','E');
colormap(jet)
subplot(4,3,10)
mn=reshape(potential,a(1,2),b(1,2));
imagesc([startx endx],[starty endy],mn')
set(gca,'YDir','normal')
title('Potential');
xlabel('X/Longitude');
ylabel('Y/Latitude');
cb=colorbar;
set(get(cb,'title'),'string','m^2/s^2');
colormap(jet)
subplot(4,3,12)
mn=reshape(gzz,a(1,2),b(1,2));
imagesc([startx endx],[starty endy],mn')
set(gca,'YDir','normal')
title('Gzz');
xlabel('X/Longitude');
ylabel('Y/Latitude');
cb=colorbar;
set(get(cb,'title'),'string','E');
colormap(jet)
figure(2)
subplot(4,3,1)
hist(gx)
title('Gx');
subplot(4,3,2)
hist(gy)
title('Gy');
subplot(4,3,3)
hist(gz)
title('Gz');
subplot(4,3,4)
hist(gxx)
title('Gxx');
subplot(4,3,5)
hist(gxy)
title('Gxy');
subplot(4,3,6)
hist(gxz)
title('Gxz');
subplot(4,3,8)
hist(gyy)
title('Gyy');
subplot(4,3,9)
hist(gyz)
title('Gyz');
subplot(4,3,10)
hist(potential)
title('Potential');
subplot(4,3,12)
hist(gzz)
title('Gzz');
end
%不规则格网
else
gc=size(gc_xyz);
c=gc(1,1);
if g8==0
m=1;
h=waitbar(0,'start');
for j=1:c
    lat =gc_xyz(j,2);
    lon =gc_xyz(j,1);
    r=6378137.0+gc_xyz(j,3);
    gg1=0;
    for i=1:n
        density=xyz(i,7);
       x1=xyz(i,1);x2=xyz(i,2);
       y1=xyz(i,3);y2=xyz(i,4);
       z1=xyz(i,5);z2=xyz(i,6);
%       if z1>z2
%            sc=z1;
%            z1=z2;
%            z2=sc;
%        end
                if g7==1
        gg1=dg(density,x1,x2,y1,y2,z1,z2,lon,lat,r)+gg1;
         elseif g9==1
        gg1=dpotential(density,x1,x2,y1,y2,z1,z2,lon,lat,r)+gg1;
                else
        gg1=ggt(density,x1,x2,y1,y2,z1,z2,lon,lat,r)+gg1;
                end          
    end
    result(m,1)=lon;
    result(m,2)=lat;
    if g7==1||g10==1||g11==1 
        gz(m)=gg1(3)*10^5;
        gx(m)=gg1(1)*10^5;
        gy(m)=gg1(2)*10^5;
        if g7==1
        result(m,3)=gz(m);
        g(m)=gz(m);
        elseif g10==1
        result(m,3)=gx(m);
        g(m)=gx(m);
        elseif g11==1
        result(m,3)=gy(m);
        g(m)=gy(m);
        end
    elseif g9==1
        g(m)=gg1;
        result(m,3)=g(m);
    else
    gxx(m)=gg1(1)*10^9;
    gxy(m)=gg1(2)*10^9;
    gxz(m)=gg1(3)*10^9;
    gyy(m)=gg1(4)*10^9;
    gyz(m)=gg1(5)*10^9;
    gzz(m)=gg1(6)*10^9; 
    if g1==1
         result(m,3)=gxx(m);
        g(m)=gxx(m);
    elseif g2==1
        result(m,3)=gxy(m);
        g(m)=gxy(m);
    elseif g3==1
        result(m,3)=gxz(m);
        g(m)=gxz(m);
    elseif g4==1
        result(m,3)=gyy(m);
        g(m)=gyy(m);
    elseif g5==1
        result(m,3)=gyz(m);
        g(m)=gyz(m);
    elseif g6==1
        result(m,3)=gzz(m);
        g(m)=gzz(m);
    end
    end
 waitbar(m/c,h,['computation progress finish ',num2str(100*(m/c)),'%','...'])
    m=m+1;
end
close(h)
data=feature_data(g);
set(handles.uitable3,'data',data)
axes(handles.axes2)
hist(g)
else
   m=1;
h=waitbar(0,'start');
for j=1:c
    lat =gc_xyz(j,2);
    lon =gc_xyz(j,1);
    r=6378137.0+gc_xyz(j,3);
    gg1=0;gg2=0;gg0=0;
    for i=1:n
        density=xyz(i,7);
       x1=xyz(i,1);x2=xyz(i,2);
       y1=xyz(i,3);y2=xyz(i,4);
       z1=xyz(i,5);z2=xyz(i,6);
%       if z1>z2
%            sc=z1;
%            z1=z2;
%            z2=sc;
%       end
       gg0=dpotential(density,x1,x2,y1,y2,z1,z2,lon,lat,r)+gg0;
        gg1=dg(density,x1,x2,y1,y2,z1,z2,lon,lat,r)+gg1;
        gg2=ggt(density,x1,x2,y1,y2,z1,z2,lon,lat,r)+gg2;         
    end
    result(m,1)=lon;
    result(m,2)=lat;
     potential(m)=gg0;
    gx(m)=gg1(1)*10^5;
    gy(m)=gg1(2)*10^5;
    gz(m)=gg1(3)*10^5;
    result(m,3)= potential(m);
    result(m,4)=gx(m);
    result(m,5)=gy(m);
    result(m,6)=gz(m);
    gxx(m)=gg2(1)*10^9;
    gxy(m)=gg2(2)*10^9;
    gxz(m)=gg2(3)*10^9;
    gyy(m)=gg2(4)*10^9;
    gyz(m)=gg2(5)*10^9;
    gzz(m)=gg2(6)*10^9; 
    result(m,7)=gxx(m);
    result(m,8)=gxy(m);
    result(m,9)=gxz(m);
    result(m,10)=gyy(m);
    result(m,11)=gyz(m);
    result(m,12)=gzz(m);
 waitbar(m/c,h,['computation progress finish ',num2str(100*(m/c)),'%','...'])
    m=m+1;
end 
close(h)
set(handles.uitable1,'data',result);
data(1,:)=feature_data(potential);
data(2,:)=feature_data(gx);
data(3,:)=feature_data(gy);
data(4,:)=feature_data(gz);
data(5,:)=feature_data(gxx);
data(6,:)=feature_data(gxy);
data(7,:)=feature_data(gxz);
data(8,:)=feature_data(gyy);
data(9,:)=feature_data(gyz);
data(10,:)=feature_data(gzz);
set(handles.uitable3,'data',data)    
end   
end
% --- Executes on button press in pushbutton6.
function pushbutton6_Callback(hObject, eventdata, handles)
% hObject    handle to pushbutton6 (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)
new_f_handle=figure('visible','off');
new_axes=copyobj(handles.axes1,new_f_handle); %picture是GUI界面绘图的坐标系句柄
set(new_axes,'units','default','Position','default');
cb = colorbar;
g7=get(handles.radiobutton7,'value');
if g7==1
set(get(cb,'title'),'string','mGal');
else
    set(get(cb,'title'),'string','E');
end
colormap(jet)
[filename,pathname]=uiputfile({'*.png'},'save picture as');
if ~filename
    return
else
    file=strcat(pathname,filename);
    print(new_f_handle,'-djpeg',file);
end
delete(new_f_handle);
h=dialog('Name','Save data','Position',[200 200 200 70]);
uicontrol('Style','text','Units','pixels','Position',[50 40 120 20],'FontSize',10,...
    'Parent',h,'String','save done');  %创建文本内容
uicontrol('Units','pixels','Position',[80 10 50 20],'FontSize',10,...
    'Parent',h,'String','OK','Callback','delete(gcf)');



% --- Executes on button press in pushbutton7.
function pushbutton7_Callback(hObject, eventdata, handles)
% hObject    handle to pushbutton7 (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)
output=get(handles.uitable3,'data');
[filename,pathname,c]=uiputfile('*.txt','保存');
if c==1
file=[pathname,filename];
csvwrite(file,output);
h=dialog('Name','Save data','Position',[200 200 200 70]);
uicontrol('Style','text','Units','pixels','Position',[50 40 120 20],'FontSize',10,...
    'Parent',h,'String','save done');  %创建文本内容
uicontrol('Units','pixels','Position',[80 10 50 20],'FontSize',10,...
    'Parent',h,'String','OK','Callback','delete(gcf)');

end

% --- Executes on button press in pushbutton9.
function pushbutton9_Callback(hObject, eventdata, handles)
% hObject    handle to pushbutton9 (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)
new_f_handle=figure('visible','off');
new_axes=copyobj(handles.axes2,new_f_handle); %picture是GUI界面绘图的坐标系句柄
set(new_axes,'units','default','Position','default');
[filename,pathname]=uiputfile({'*.png'},'save picture as');
if ~filename
    return
else
    file=strcat(pathname,filename);
    print(new_f_handle,'-djpeg',file);
end
delete(new_f_handle);
h=dialog('Name','Save data','Position',[200 200 200 70]);
uicontrol('Style','text','Units','pixels','Position',[50 40 120 20],'FontSize',10,...
    'Parent',h,'String','save done');  %创建文本内容
uicontrol('Units','pixels','Position',[80 10 50 20],'FontSize',10,...
    'Parent',h,'String','OK','Callback','delete(gcf)');
