function varargout = data_transfer(varargin)
% DATA_TRANSFER MATLAB code for data_transfer.fig
%      DATA_TRANSFER, by itself, creates a new DATA_TRANSFER or raises the existing
%      singleton*.
%
%      H = DATA_TRANSFER returns the handle to a new DATA_TRANSFER or the handle to
%      the existing singleton*.
%
%      DATA_TRANSFER('CALLBACK',hObject,eventData,handles,...) calls the local
%      function named CALLBACK in DATA_TRANSFER.M with the given input arguments.
%
%      DATA_TRANSFER('Property','Value',...) creates a new DATA_TRANSFER or raises the
%      existing singleton*.  Starting from the left, property value pairs are
%      applied to the GUI before data_transfer_OpeningFcn gets called.  An
%      unrecognized property name or invalid value makes property application
%      stop.  All inputs are passed to data_transfer_OpeningFcn via varargin.
%
%      *See GUI Options on GUIDE's Tools menu.  Choose "GUI allows only one
%      instance to run (singleton)".
%
% See also: GUIDE, GUIDATA, GUIHANDLES

% Edit the above text to modify the response to help data_transfer

% Last Modified by GUIDE v2.5 06-Dec-2022 14:38:35

% Begin initialization code - DO NOT EDIT
gui_Singleton = 1;
gui_State = struct('gui_Name',       mfilename, ...
                   'gui_Singleton',  gui_Singleton, ...
                   'gui_OpeningFcn', @data_transfer_OpeningFcn, ...
                   'gui_OutputFcn',  @data_transfer_OutputFcn, ...
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


% --- Executes just before data_transfer is made visible.
function data_transfer_OpeningFcn(hObject, eventdata, handles, varargin)
% This function has no output args, see OutputFcn.
% hObject    handle to figure
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)
% varargin   command line arguments to data_transfer (see VARARGIN)

% Choose default command line output for data_transfer
handles.output = hObject;

% Update handles structure
guidata(hObject, handles);

% UIWAIT makes data_transfer wait for user response (see UIRESUME)
% uiwait(handles.figure1);


% --- Outputs from this function are returned to the command line.
function varargout = data_transfer_OutputFcn(hObject, eventdata, handles) 
% varargout  cell array for returning output args (see VARARGOUT);
% hObject    handle to figure
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)

% Get default command line output from handles structure
varargout{1} = handles.output;


% --- Executes on button press in pushbutton1.
function pushbutton1_Callback(hObject, eventdata, handles)
% hObject    handle to pushbutton1 (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)
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
handles.xyz=xyz;
guidata(hObject,handles);

% --- Executes on button press in pushbutton2.
function pushbutton2_Callback(hObject, eventdata, handles)
% hObject    handle to pushbutton2 (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)
xyz=handles.xyz;
   [filename,pathname,c]=uigetfile('*.txt');
if c==1
 file=[pathname,filename];
 try
 density_file=textread(file);
 catch
 density_file=csvread(file);
 end
 xyz(:,4)=density_file(:,3);
 set(handles.uitable1,'data',xyz);
end 
handles.xyz=xyz;
guidata(hObject,handles);

% --- Executes on button press in pushbutton3.
function pushbutton3_Callback(hObject, eventdata, handles)
% hObject    handle to pushbutton3 (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)
xyz=handles.xyz;
xy=size(xyz);
n=xy(1,1);
intervalx=abs(xyz(2,1)-xyz(1,1));
intervaly=intervalx;
for i=1:n
    new_xyz(i,1)=xyz(i,1)-intervalx/2;
    new_xyz(i,2)=xyz(i,1)+intervalx/2;
    new_xyz(i,3)=xyz(i,2)-intervaly/2;
    new_xyz(i,4)=xyz(i,2)+intervaly/2;
    new_xyz(i,5)=0;
    new_xyz(i,6)=xyz(i,3);
    new_xyz(i,7)=xyz(i,4);
end
set(handles.uitable2,'data',new_xyz)


% --- Executes on button press in pushbutton5.
function pushbutton5_Callback(hObject, eventdata, handles)
% hObject    handle to pushbutton5 (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)
[filename,pathname,c]=uiputfile('*.txt','±£´æ');
output=get(handles.uitable2,'data');
if c==1
file=[pathname,filename];
csvwrite(file,output);
end