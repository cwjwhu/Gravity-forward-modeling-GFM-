function varargout = main_tesseroid(varargin)
% MAIN_TESSEROID MATLAB code for main_tesseroid.fig
%      MAIN_TESSEROID, by itself, creates a new MAIN_TESSEROID or raises the existing
%      singleton*.
%
%      H = MAIN_TESSEROID returns the handle to a new MAIN_TESSEROID or the handle to
%      the existing singleton*.
%
%      MAIN_TESSEROID('CALLBACK',hObject,eventData,handles,...) calls the local
%      function named CALLBACK in MAIN_TESSEROID.M with the given input arguments.
%
%      MAIN_TESSEROID('Property','Value',...) creates a new MAIN_TESSEROID or raises the
%      existing singleton*.  Starting from the left, property value pairs are
%      applied to the GUI before main_tesseroid_OpeningFcn gets called.  An
%      unrecognized property name or invalid value makes property application
%      stop.  All inputs are passed to main_tesseroid_OpeningFcn via varargin.
%
%      *See GUI Options on GUIDE's Tools menu.  Choose "GUI allows only one
%      instance to run (singleton)".
%
% See also: GUIDE, GUIDATA, GUIHANDLES

% Edit the above text to modify the response to help main_tesseroid

% Last Modified by GUIDE v2.5 07-Dec-2022 22:02:25

% Begin initialization code - DO NOT EDIT
gui_Singleton = 1;
gui_State = struct('gui_Name',       mfilename, ...
                   'gui_Singleton',  gui_Singleton, ...
                   'gui_OpeningFcn', @main_tesseroid_OpeningFcn, ...
                   'gui_OutputFcn',  @main_tesseroid_OutputFcn, ...
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


% --- Executes just before main_tesseroid is made visible.
function main_tesseroid_OpeningFcn(hObject, eventdata, handles, varargin)
% This function has no output args, see OutputFcn.
% hObject    handle to figure
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)
% varargin   command line arguments to main_tesseroid (see VARARGIN)

% Choose default command line output for main_tesseroid
handles.output = hObject;

% Update handles structure
guidata(hObject, handles);

% UIWAIT makes main_tesseroid wait for user response (see UIRESUME)
% uiwait(handles.figure1);


% --- Outputs from this function are returned to the command line.
function varargout = main_tesseroid_OutputFcn(hObject, eventdata, handles) 
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


% --- Executes on button press in pushbutton1.
function pushbutton1_Callback(hObject, eventdata, handles)
% hObject    handle to pushbutton1 (see GCBO)
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

% --- Executes on button press in pushbutton2.
function pushbutton2_Callback(hObject, eventdata, handles)
% hObject    handle to pushbutton2 (see GCBO)
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
cla reset
axis off
axes(handles.axes1);
xy=size(xyz);
n=xy(1,1);
result=[];
g1=get(handles.radiobutton1,'value');
g2=get(handles.radiobutton2,'value');
g3=get(handles.radiobutton3,'value');
g4=get(handles.radiobutton4,'value');
g5=get(handles.radiobutton5,'value');
g6=get(handles.radiobutton6,'value');
g7=get(handles.radiobutton7,'value');
g8=get(handles.radiobutton8,'value');
g9=get(handles.radiobutton9,'value');
g10=get(handles.radiobutton10,'value');
g11=get(handles.radiobutton11,'value');
glq1=str2num(get(handles.edit5,'string'));
glq2=str2num(get(handles.edit6,'string'));
glq3=str2num(get(handles.edit7,'string'));
if a1==1
a=size(startx:intervalx:endx);
b=size(starty:intervaly:endy);
s=a(1,2)*b(1,2);
if g8==0
h=waitbar(0,'waiting');
m=1;
for y=starty:intervaly:endy
    lat =y;
    for x=startx:intervalx:endx
     lon =x;
    r=observation_h+6378137.0;
    mn=0;
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
          tesee=[density,x1,x2,y1,y2,z1+6378137.0,z2+6378137.0];
        if g1==1
       mn=tess_gz_field(tesee,glq1,glq2,glq3,lon,lat,r)+ mn;
        elseif g2==1
            mn=tess_gxx_field(tesee,glq1,glq2,glq3,lon,lat,r)+ mn;
        elseif g3==1
            mn=tess_gxy_field(tesee,glq1,glq2,glq3,lon,lat,r)+ mn;
        elseif g4==1
            mn=tess_gxz_field(tesee,glq1,glq2,glq3,lon,lat,r)+ mn;
        elseif g5==1
            mn=tess_gyy_field(tesee,glq1,glq2,glq3,lon,lat,r)+ mn;
        elseif g6==1
            mn=tess_gyz_field(tesee,glq1,glq2,glq3,lon,lat,r)+ mn;
        elseif g7==1
            mn=tess_gzz_field(tesee,glq1,glq2,glq3,lon,lat,r)+ mn;
        elseif g9==1
             mn=tess_potential_field(tesee,glq1,glq2,glq3,lon,lat,r)+ mn;
        elseif g10==1
             mn=tess_gx_field(tesee,glq1,glq2,glq3,lon,lat,r)+ mn;
        elseif g11==1
             mn=tess_gy_field(tesee,glq1,glq2,glq3,lon,lat,r)+ mn;
        end
    end
    result(m,1)=x;
    result(m,2)=y;
    if g7==1
        g(m)=mn; 
    result(m,3)=mn;
    else
    g(m)=mn; 
    result(m,3)=mn;
    end
     waitbar(m/s,h,['computation progress finish ',num2str(100*(m/s)),'%','...'])
     m=m+1;
    end
end
set(handles.uitable1,'data',result);
close(h);
data=feature_data(g);
set(handles.uitable2,'data',data)
mn=reshape(g,a(1,2),b(1,2));
imagesc([startx endx],[starty endy],mn')
set(gca,'YDir','normal')
xlabel('X/Longitude');
ylabel('Y/Latitude');
cb=colorbar;
if g1==1||g10==1||g11==1
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
h=waitbar(0,'waiting');

for y=starty:intervaly:endy
    lat =y;
    for x=startx:intervalx:endx
     lon =x;
    r=6378137.0+observation_h;
    mgxx=0;mgxy=0;mgxz=0;mgyy=0;mgyz=0;mgzz=0;mgz=0;mgx=0;mgy=0;mpotential=0;
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
          tesee=[density,x1,x2,y1,y2,z1+6378137.0,z2+6378137.0];
            mgxx=tess_gxx_field(tesee,glq1,glq2,glq3,lon,lat,r)+ mgxx;
            mgxy=tess_gxy_field(tesee,glq1,glq2,glq3,lon,lat,r)+ mgxy;
            mgxz=tess_gxz_field(tesee,glq1,glq2,glq3,lon,lat,r)+ mgxz;
            mgyy=tess_gyy_field(tesee,glq1,glq2,glq3,lon,lat,r)+ mgyy;
            mgyz=tess_gyz_field(tesee,glq1,glq2,glq3,lon,lat,r)+ mgyz;
            mgzz=tess_gzz_field(tesee,glq1,glq2,glq3,lon,lat,r)+ mgzz;
            mgz=tess_gz_field(tesee,glq1,glq2,glq3,lon,lat,r)+ mgz;
            mgx=tess_gx_field(tesee,glq1,glq2,glq3,lon,lat,r)+ mgx;
            mgy=tess_gy_field(tesee,glq1,glq2,glq3,lon,lat,r)+ mgy;
            mpotential=tess_potential_field(tesee,glq1,glq2,glq3,lon,lat,r)+ mpotential;
    end
    result(m,1)=x;
    result(m,2)=y;
    potential(m)=mpotential;
    result(m,3)=mpotential;
    gx(m)=mgx;
    result(m,4)=mgx;
    gy(m)=mgy;
    result(m,5)=mgy;
    gz(m)=mgz;
    result(m,6)=mgz; 
    gxx(m)=mgxx; 
    result(m,7)=mgxx;
    gxy(m)=mgxy; 
    result(m,8)=mgxy;
    gxz(m)=mgxz; 
    result(m,9)=mgxz;
    gyy(m)=mgyy; 
    result(m,10)=mgyy;
    gyz(m)=mgyz; 
    result(m,11)=mgyz;
    gzz(m)=mgzz; 
    result(m,12)=mgzz;
    
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
set(handles.uitable2,'data',data)
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
%不规则观测格网
else
gc=size(gc_xyz);
c=gc(1,1);
if g8==0
cla reset
axis off
m=1;
h=waitbar(0,'waiting');

for j=1:c
    lat =gc_xyz(j,2);
    lon =gc_xyz(j,1);
    r=6378137.0+gc_xyz(j,3);
    mn=0;
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
          tesee=[density,x1,x2,y1,y2,z1+6378137.0,z2+6378137.0];
        if g1==1
            mn=tess_gz_field(tesee,glq1,glq2,glq3,lon,lat,r)+ mn;
        elseif g2==1
            mn=tess_gxx_field(tesee,glq1,glq2,glq3,lon,lat,r)+ mn;
        elseif g3==1
            mn=tess_gxy_field(tesee,glq1,glq2,glq3,lon,lat,r)+ mn;
        elseif g4==1
            mn=tess_gxz_field(tesee,glq1,glq2,glq3,lon,lat,r)+ mn;
        elseif g5==1
            mn=tess_gyy_field(tesee,glq1,glq2,glq3,lon,lat,r)+ mn;
        elseif g6==1
            mn=tess_gyz_field(tesee,glq1,glq2,glq3,lon,lat,r)+ mn;
        elseif g7==1
            mn=tess_gzz_field(tesee,glq1,glq2,glq3,lon,lat,r)+ mn;
            elseif g9==1
             mn=tess_potential_field(tesee,glq1,glq2,glq3,lon,lat,r)+ mn;
        elseif g10==1
             mn=tess_gx_field(tesee,glq1,glq2,glq3,lon,lat,r)+ mn;
        elseif g11==1
             mn=tess_gy_field(tesee,glq1,glq2,glq3,lon,lat,r)+ mn;
        end
    end
    result(m,1)=lon;
    result(m,2)=lat;
    if g7==1
    g(m)=mn; 
    result(m,3)=mn;
    else
    g(m)=mn; 
    result(m,3)=mn;
    end
     waitbar(m/c,h,['computation progress finish ',num2str(100*(m/c)),'%','...'])
     m=m+1;
end
set(handles.uitable1,'data',result);
close(h);
data=feature_data(g);
set(handles.uitable2,'data',data)
axes(handles.axes2)
hist(g)
else
m=1;
h=waitbar(0,'waiting');

for j=1:c
    lat =gc_xyz(j,2);
    lon =gc_xyz(j,1);
    r=6378137.0+gc_xyz(j,3);
    mgxx=0;mgxy=0;mgxz=0;mgyy=0;mgyz=0;mgzz=0;mgz=0;potential=0;mgx=0;mgy=0;
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
          tesee=[density,x1,x2,y1,y2,z1+6378137.0,z2+6378137.0];
            mgxx=tess_gxx_field(tesee,glq1,glq2,glq3,lon,lat,r)+ mgxx;
            mgxy=tess_gxy_field(tesee,glq1,glq2,glq3,lon,lat,r)+ mgxy;
            mgxz=tess_gxz_field(tesee,glq1,glq2,glq3,lon,lat,r)+ mgxz;
            mgyy=tess_gyy_field(tesee,glq1,glq2,glq3,lon,lat,r)+ mgyy;
            mgyz=tess_gyz_field(tesee,glq1,glq2,glq3,lon,lat,r)+ mgyz;
            mgzz=tess_gzz_field(tesee,glq1,glq2,glq3,lon,lat,r)+ mgzz;
            mgz=tess_gz_field(tesee,glq1,glq2,glq3,lon,lat,r)+ mgz;
            mgx=tess_gx_field(tesee,glq1,glq2,glq3,lon,lat,r)+ mgx;
            mgy=tess_gy_field(tesee,glq1,glq2,glq3,lon,lat,r)+ mgy;
            potential=tess_potential_field(tesee,glq1,glq2,glq3,lon,lat,r)+ potential;
    end
    result(m,1)=lon;
    result(m,2)=lat;
    mpotential(m)=potential;
    result(m,3)=potential;
    gx(m)=mgx;
    result(m,4)=mgx;
    gy(m)=mgy;
    result(m,5)=mgy;
    gz(m)=mgz;
    result(m,6)=mgz; 
    gxx(m)=mgxx; 
    result(m,7)=mgxx;
    gxy(m)=mgxy; 
    result(m,8)=mgxy;
    gxz(m)=mgxz; 
    result(m,9)=mgxz;
    gyy(m)=mgyy; 
    result(m,10)=mgyy;
    gyz(m)=mgyz; 
    result(m,11)=mgyz;
    gzz(m)=mgzz; 
    result(m,12)=mgzz;
     waitbar(m/c,h,['computation progress finish ',num2str(100*(m/c)),'%','...'])
     m=m+1;
end
close(h)
set(handles.uitable1,'data',result);
data(1,:)=feature_data(mpotential);
data(2,:)=feature_data(gx);
data(3,:)=feature_data(gy);
data(4,:)=feature_data(gz);
data(5,:)=feature_data(gxx);
data(6,:)=feature_data(gxy);
data(7,:)=feature_data(gxz);
data(8,:)=feature_data(gyy);
data(9,:)=feature_data(gyz);
data(10,:)=feature_data(gzz);
set(handles.uitable2,'data',data)    
end    
end

% --- Executes on button press in pushbutton3.
function pushbutton3_Callback(hObject, eventdata, handles)
% hObject    handle to pushbutton3 (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)
new_f_handle=figure('visible','off');
new_axes=copyobj(handles.axes1,new_f_handle); %picture是GUI界面绘图的坐标系句柄
set(new_axes,'units','default','Position','default');
cb = colorbar;
g1=get(handles.radiobutton1,'value');
if g1==1
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



% --- Executes on button press in pushbutton4.
function pushbutton4_Callback(hObject, eventdata, handles)
% hObject    handle to pushbutton4 (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)
output=get(handles.uitable2,'data');
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

% --- Executes on button press in pushbutton5.
function pushbutton5_Callback(hObject, eventdata, handles)
% hObject    handle to pushbutton5 (see GCBO)
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



function edit5_Callback(hObject, eventdata, handles)
% hObject    handle to edit5 (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)

% Hints: get(hObject,'String') returns contents of edit5 as text
%        str2double(get(hObject,'String')) returns contents of edit5 as a double


% --- Executes during object creation, after setting all properties.
function edit5_CreateFcn(hObject, eventdata, handles)
% hObject    handle to edit5 (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    empty - handles not created until after all CreateFcns called

% Hint: edit controls usually have a white background on Windows.
%       See ISPC and COMPUTER.
if ispc && isequal(get(hObject,'BackgroundColor'), get(0,'defaultUicontrolBackgroundColor'))
    set(hObject,'BackgroundColor','white');
end



function edit6_Callback(hObject, eventdata, handles)
% hObject    handle to edit6 (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)

% Hints: get(hObject,'String') returns contents of edit6 as text
%        str2double(get(hObject,'String')) returns contents of edit6 as a double


% --- Executes during object creation, after setting all properties.
function edit6_CreateFcn(hObject, eventdata, handles)
% hObject    handle to edit6 (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    empty - handles not created until after all CreateFcns called

% Hint: edit controls usually have a white background on Windows.
%       See ISPC and COMPUTER.
if ispc && isequal(get(hObject,'BackgroundColor'), get(0,'defaultUicontrolBackgroundColor'))
    set(hObject,'BackgroundColor','white');
end



function edit7_Callback(hObject, eventdata, handles)
% hObject    handle to edit7 (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)

% Hints: get(hObject,'String') returns contents of edit7 as text
%        str2double(get(hObject,'String')) returns contents of edit7 as a double


% --- Executes during object creation, after setting all properties.
function edit7_CreateFcn(hObject, eventdata, handles)
% hObject    handle to edit7 (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    empty - handles not created until after all CreateFcns called

% Hint: edit controls usually have a white background on Windows.
%       See ISPC and COMPUTER.
if ispc && isequal(get(hObject,'BackgroundColor'), get(0,'defaultUicontrolBackgroundColor'))
    set(hObject,'BackgroundColor','white');
end
