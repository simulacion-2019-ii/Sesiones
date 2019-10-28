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

% Last Modified by GUIDE v2.5 28-Oct-2019 07:42:58

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
x = [.5,2,2,.5,.5];
y = [0,0,1,1,0];
plot(x,y,'rsq-','LineWidth',2); grid;
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
