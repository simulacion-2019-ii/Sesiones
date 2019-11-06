function varargout = taller_gui(varargin)
% TALLER_GUI MATLAB code for taller_gui.fig
%      TALLER_GUI, by itself, creates a new TALLER_GUI or raises the existing
%      singleton*.
%
%      H = TALLER_GUI returns the handle to a new TALLER_GUI or the handle to
%      the existing singleton*.
%
%      TALLER_GUI('CALLBACK',hObject,eventData,handles,...) calls the local
%      function named CALLBACK in TALLER_GUI.M with the given input arguments.
%
%      TALLER_GUI('Property','Value',...) creates a new TALLER_GUI or raises the
%      existing singleton*.  Starting from the left, property value pairs are
%      applied to the GUI before taller_gui_OpeningFcn gets called.  An
%      unrecognized property name or invalid value makes property application
%      stop.  All inputs are passed to taller_gui_OpeningFcn via varargin.
%
%      *See GUI Options on GUIDE's Tools menu.  Choose "GUI allows only one
%      instance to run (singleton)".
%
% See also: GUIDE, GUIDATA, GUIHANDLES

% Edit the above text to modify the response to help taller_gui

% Last Modified by GUIDE v2.5 06-Nov-2019 07:22:36

% Begin initialization code - DO NOT EDIT
gui_Singleton = 1;
gui_State = struct('gui_Name',       mfilename, ...
                   'gui_Singleton',  gui_Singleton, ...
                   'gui_OpeningFcn', @taller_gui_OpeningFcn, ...
                   'gui_OutputFcn',  @taller_gui_OutputFcn, ...
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


% --- Executes just before taller_gui is made visible.
function taller_gui_OpeningFcn(hObject, eventdata, handles, varargin)
global x0 y0
clc;
limite = 5;
set(handles.slider1,'Min',-limite);  set(handles.slider1,'Max',limite);
set(handles.slider2,'Min',-limite);  set(handles.slider2,'Max',limite);
set(handles.slider3,'Min',0);  set(handles.slider3,'Max',360);
x0 = [.5,2,2,.5,.5];
y0 = [0,0,1,1,0];
plot(x0,y0,'rsq-','LineWidth',2); grid;
axis([-10,10,-8,8]);

% This function has no output args, see OutputFcn.
% hObject    handle to figure
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)
% varargin   command line arguments to taller_gui (see VARARGIN)

% Choose default command line output for taller_gui
handles.output = hObject;

% Update handles structure
guidata(hObject, handles);

% UIWAIT makes taller_gui wait for user response (see UIRESUME)
% uiwait(handles.figure1);


% --- Outputs from this function are returned to the command line.
function varargout = taller_gui_OutputFcn(hObject, eventdata, handles) 
% varargout  cell array for returning output args (see VARARGOUT);
% hObject    handle to figure
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)

% Get default command line output from handles structure
varargout{1} = handles.output;


% --- Executes on slider movement.
function slider1_Callback(hObject, eventdata, handles)
global x0 y0
valorx = get(hObject,'Value');
valory = get(handles.slider2,'Value');
valor_ang = get(handles.slider3,'Value');
set(handles.campo_x,'String',num2str(valorx));
x = x0+valorx;
y = y0+valory;
[x1,y1] = rotar(x,y,valor_ang);
graficar(x1,y1);
% hObject    handle to slider1 (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)

% Hints: get(hObject,'Value') returns position of slider
%        get(hObject,'Min') and get(hObject,'Max') to determine range of slider


% --- Executes during object creation, after setting all properties.
function slider1_CreateFcn(hObject, eventdata, handles)
% hObject    handle to slider1 (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    empty - handles not created until after all CreateFcns called

% Hint: slider controls usually have a light gray background.
if isequal(get(hObject,'BackgroundColor'), get(0,'defaultUicontrolBackgroundColor'))
    set(hObject,'BackgroundColor',[.9 .9 .9]);
end



function campo_x_Callback(hObject, eventdata, handles)
% hObject    handle to campo_x (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)

% Hints: get(hObject,'String') returns contents of campo_x as text
%        str2double(get(hObject,'String')) returns contents of campo_x as a double


% --- Executes during object creation, after setting all properties.
function campo_x_CreateFcn(hObject, eventdata, handles)
% hObject    handle to campo_x (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    empty - handles not created until after all CreateFcns called

% Hint: edit controls usually have a white background on Windows.
%       See ISPC and COMPUTER.
if ispc && isequal(get(hObject,'BackgroundColor'), get(0,'defaultUicontrolBackgroundColor'))
    set(hObject,'BackgroundColor','white');
end



function campo_y_Callback(hObject, eventdata, handles)
% hObject    handle to campo_y (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)

% Hints: get(hObject,'String') returns contents of campo_y as text
%        str2double(get(hObject,'String')) returns contents of campo_y as a double


% --- Executes during object creation, after setting all properties.
function campo_y_CreateFcn(hObject, eventdata, handles)
% hObject    handle to campo_y (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    empty - handles not created until after all CreateFcns called

% Hint: edit controls usually have a white background on Windows.
%       See ISPC and COMPUTER.
if ispc && isequal(get(hObject,'BackgroundColor'), get(0,'defaultUicontrolBackgroundColor'))
    set(hObject,'BackgroundColor','white');
end


% --- Executes on slider movement.
function slider2_Callback(hObject, eventdata, handles)
global x0 y0
valory = get(hObject,'Value');
valorx = get(handles.slider1,'Value');
valor_ang = get(handles.slider3,'Value');
set(handles.campo_y,'String',num2str(valory));
x = x0+valorx;
y = y0+valory;
[x1,y1] = rotar(x,y,valor_ang);
graficar(x1,y1);
% hObject    handle to slider2 (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)

% Hints: get(hObject,'Value') returns position of slider
%        get(hObject,'Min') and get(hObject,'Max') to determine range of slider


% --- Executes during object creation, after setting all properties.
function slider2_CreateFcn(hObject, eventdata, handles)
% hObject    handle to slider2 (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    empty - handles not created until after all CreateFcns called

% Hint: slider controls usually have a light gray background.
if isequal(get(hObject,'BackgroundColor'), get(0,'defaultUicontrolBackgroundColor'))
    set(hObject,'BackgroundColor',[.9 .9 .9]);
end

function [x1,y1] = rotar(x,y,theta)
    [ang,radio] = cart2pol(x,y);
    ang = ang+(theta*pi/180);
     [x1,y1] = pol2cart(ang,radio);

function graficar(x,y)
    global x0 y0
    plot(x,y,'rsq-','LineWidth',2); grid;
    hold on
    % dibujar líneas de proyección
    
    plot(x0,y0,'bsq-','LineWidth',2);
    hold off
    axis([-10,10,-8,8]);


% --- Executes on slider movement.
function slider3_Callback(hObject, eventdata, handles)
global x0 y0
valor_ang = get(hObject,'Value');
valorx = get(handles.slider1,'Value');
valory = get(handles.slider2,'Value');
set(handles.campo_ang,'String',num2str(valor_ang));
x = x0+valorx;
y = y0+valory;
[x1,y1] = rotar(x,y,valor_ang);
graficar(x1,y1);
% hObject    handle to slider3 (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)

% Hints: get(hObject,'Value') returns position of slider
%        get(hObject,'Min') and get(hObject,'Max') to determine range of slider


% --- Executes during object creation, after setting all properties.
function slider3_CreateFcn(hObject, eventdata, handles)
% hObject    handle to slider3 (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    empty - handles not created until after all CreateFcns called

% Hint: slider controls usually have a light gray background.
if isequal(get(hObject,'BackgroundColor'), get(0,'defaultUicontrolBackgroundColor'))
    set(hObject,'BackgroundColor',[.9 .9 .9]);
end



function campo_ang_Callback(hObject, eventdata, handles)
% hObject    handle to campo_ang (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)

% Hints: get(hObject,'String') returns contents of campo_ang as text
%        str2double(get(hObject,'String')) returns contents of campo_ang as a double


% --- Executes during object creation, after setting all properties.
function campo_ang_CreateFcn(hObject, eventdata, handles)
% hObject    handle to campo_ang (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    empty - handles not created until after all CreateFcns called

% Hint: edit controls usually have a white background on Windows.
%       See ISPC and COMPUTER.
if ispc && isequal(get(hObject,'BackgroundColor'), get(0,'defaultUicontrolBackgroundColor'))
    set(hObject,'BackgroundColor','white');
end
