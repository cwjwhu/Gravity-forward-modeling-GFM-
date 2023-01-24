function varargout = Gravity_Forward_Modeling(varargin)
% GRAVITY_FORWARD_MODELING MATLAB code for Gravity_Forward_Modeling.fig
%      GRAVITY_FORWARD_MODELING, by itself, creates a new GRAVITY_FORWARD_MODELING or raises the existing
%      singleton*.
%
%      H = GRAVITY_FORWARD_MODELING returns the handle to a new GRAVITY_FORWARD_MODELING or the handle to
%      the existing singleton*.
%
%      GRAVITY_FORWARD_MODELING('CALLBACK',hObject,eventData,handles,...) calls the local
%      function named CALLBACK in GRAVITY_FORWARD_MODELING.M with the given input arguments.
%
%      GRAVITY_FORWARD_MODELING('Property','Value',...) creates a new GRAVITY_FORWARD_MODELING or raises the
%      existing singleton*.  Starting from the left, property value pairs are
%      applied to the GUI before Gravity_Forward_Modeling_OpeningFcn gets called.  An
%      unrecognized property name or invalid value makes property application
%      stop.  All inputs are passed to Gravity_Forward_Modeling_OpeningFcn via varargin.
%
%      *See GUI Options on GUIDE's Tools menu.  Choose "GUI allows only one
%      instance to run (singleton)".
%
% See also: GUIDE, GUIDATA, GUIHANDLES

% Edit the above text to modify the response to help Gravity_Forward_Modeling

% Last Modified by GUIDE v2.5 27-Nov-2022 21:18:39

% Begin initialization code - DO NOT EDIT
gui_Singleton = 1;
gui_State = struct('gui_Name',       mfilename, ...
                   'gui_Singleton',  gui_Singleton, ...
                   'gui_OpeningFcn', @Gravity_Forward_Modeling_OpeningFcn, ...
                   'gui_OutputFcn',  @Gravity_Forward_Modeling_OutputFcn, ...
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


% --- Executes just before Gravity_Forward_Modeling is made visible.
function Gravity_Forward_Modeling_OpeningFcn(hObject, eventdata, handles, varargin)
% This function has no output args, see OutputFcn.
% hObject    handle to figure
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)
% varargin   command line arguments to Gravity_Forward_Modeling (see VARARGIN)

% Choose default command line output for Gravity_Forward_Modeling
handles.output = hObject;

% Update handles structure
guidata(hObject, handles);

% UIWAIT makes Gravity_Forward_Modeling wait for user response (see UIRESUME)
% uiwait(handles.figure1);


% --- Outputs from this function are returned to the command line.
function varargout = Gravity_Forward_Modeling_OutputFcn(hObject, eventdata, handles) 
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


% --- Executes on button press in pushbutton3.
function pushbutton3_Callback(hObject, eventdata, handles)
% hObject    handle to pushbutton3 (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)

global startx;
global endx;
global intervalx;
global starty;
global endy;
global intervaly;
global observation_h;
% global dx;
% global dy;
% observation=data_analysis(xyz);
startx=str2double(get(handles.edit1,'string'));
endx=str2double(get(handles.edit2,'string'));
intervalx=str2double(get(handles.edit3,'string'));
starty=str2double(get(handles.edit4,'string'));
endy=str2double(get(handles.edit5,'string'));
intervaly=str2double(get(handles.edit6,'string'));
observation_h=str2double(get(handles.edit7,'string'));
% dx=observation(3);
% dy=observation(6);
h=main_prism;
set(h,'visible','on');


% --- Executes on button press in pushbutton4.
function pushbutton4_Callback(hObject, eventdata, handles)
% hObject    handle to pushbutton4 (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)

global startx;
global endx;
global intervalx;
global starty;
global endy;
global intervaly;
global observation_h;
% global dx;
% global dy;
% observation=data_analysis(xyz);
startx=str2double(get(handles.edit1,'string'));
endx=str2double(get(handles.edit2,'string'));
intervalx=str2double(get(handles.edit3,'string'));
starty=str2double(get(handles.edit4,'string'));
endy=str2double(get(handles.edit5,'string'));
intervaly=str2double(get(handles.edit6,'string'));
observation_h=str2double(get(handles.edit7,'string'));
% dx=observation(3);
% dy=observation(6);
h=main_tesseroid;
set(h,'visible','on');

% --- Executes on button press in pushbutton5.
function pushbutton5_Callback(hObject, eventdata, handles)
% hObject    handle to pushbutton5 (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)
% global xyz;
global startx;
global endx;
global intervalx;
global starty;
global endy;
global intervaly;
global observation_h;
% global dx;
% global dy;
% observation=data_analysis(xyz);
startx=str2double(get(handles.edit1,'string'));
endx=str2double(get(handles.edit2,'string'));
intervalx=str2double(get(handles.edit3,'string'));
starty=str2double(get(handles.edit4,'string'));
endy=str2double(get(handles.edit5,'string'));
intervaly=str2double(get(handles.edit6,'string'));
observation_h=str2double(get(handles.edit7,'string'));
% dx=observation(3);
% dy=observation(6);
h=main_spherical_prism;
set(h,'visible','on');

% --- Executes on button press in pushbutton1.
function pushbutton1_Callback(hObject, eventdata, handles)
% hObject    handle to pushbutton1 (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)
h=data_transfer;
set(h,'visible','on');

% --- Executes on button press in pushbutton2.
function pushbutton2_Callback(hObject, eventdata, handles)
% hObject    handle to pushbutton2 (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)
global xyz;
   [filename,pathname,c]=uigetfile('*.txt');
if c==1
 file=[pathname,filename];
 try
 xyz=textread(file);
 catch
 xyz=csvread(file);
 end
 set(handles.uitable1,'data',xyz);
end 

% --- Executes on button press in pushbutton6.
function pushbutton6_Callback(hObject, eventdata, handles)
% hObject    handle to pushbutton6 (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)
global gc_xyz;
global a1;
a1=get(handles.radiobutton1,'value');
 [filename,pathname,c]=uigetfile('*.txt');
if c==1
 file=[pathname,filename];
 try
 observation=textread(file);
 catch
 observation=csvread(file);
 end
end
if a1==1
set(handles.edit1,'string',num2str(observation(1,1)));
set(handles.edit2,'string',num2str(observation(1,2)));
set(handles.edit3,'string',num2str(observation(1,3)));
set(handles.edit4,'string',num2str(observation(2,1)));
set(handles.edit5,'string',num2str(observation(2,2)));
set(handles.edit6,'string',num2str(observation(2,3)));
set(handles.edit7,'string',num2str(observation(3,1)));
set(handles.edit1,'enable','off');
set(handles.edit2,'enable','off');
set(handles.edit3,'enable','off');
set(handles.edit4,'enable','off');
set(handles.edit5,'enable','off');
set(handles.edit6,'enable','off');
set(handles.edit7,'enable','off');
else
    set(handles.uitable2,'data',observation)
    gc_xyz=observation;
end
set(handles.pushbutton3,'enable','on');
set(handles.pushbutton4,'enable','on');
set(handles.pushbutton5,'enable','on');


% --- Executes on button press in pushbutton7.
function pushbutton7_Callback(hObject, eventdata, handles)
% hObject    handle to pushbutton7 (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)
set(handles.edit1,'string','');
set(handles.edit2,'string','');
set(handles.edit3,'string','');
set(handles.edit4,'string','');
set(handles.edit5,'string','');
set(handles.edit6,'string','');
set(handles.edit7,'string','');

% --- Executes on button press in pushbutton8.
function pushbutton8_Callback(hObject, eventdata, handles)
% hObject    handle to pushbutton8 (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)
set(handles.edit1,'enable','on');
set(handles.edit2,'enable','on');
set(handles.edit3,'enable','on');
set(handles.edit4,'enable','on');
set(handles.edit5,'enable','on');
set(handles.edit6,'enable','on');
set(handles.edit7,'enable','on');
set(handles.pushbutton3,'enable','on');
set(handles.pushbutton4,'enable','on');
set(handles.pushbutton5,'enable','on');
