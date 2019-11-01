function varargout = main(varargin)
% MAIN MATLAB code for main.fig
%      MAIN, by itself, creates a new MAIN or raises the existing
%      singleton*.
%
%      H = MAIN returns the handle to a new MAIN or the handle to
%      the existing singleton*.
%
%      MAIN('CALLBACK',hObject,eventData,handles,...) calls the local
%      function named CALLBACK in MAIN.M with the given input arguments.
%
%      MAIN('Property','Value',...) creates a new MAIN or raises the
%      existing singleton*.  Starting from the left, property value pairs are
%      applied to the GUI before main_OpeningFcn gets called.  An
%      unrecognized property name or invalid value makes property application
%      stop.  All inputs are passed to main_OpeningFcn via varargin.
%
%      *See GUI Options on GUIDE's Tools menu.  Choose "GUI allows only one
%      instance to run (singleton)".
%
% See also: GUIDE, GUIDATA, GUIHANDLES

% Edit the above text to modify the response to help main

% Last Modified by GUIDE v2.5 26-Jul-2017 22:30:14

% Begin initialization code - DO NOT EDIT
gui_Singleton = 1;
gui_State = struct('gui_Name',       mfilename, ...
                   'gui_Singleton',  gui_Singleton, ...
                   'gui_OpeningFcn', @main_OpeningFcn, ...
                   'gui_OutputFcn',  @main_OutputFcn, ...
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


% --- Executes just before main is made visible.
function main_OpeningFcn(hObject, eventdata, handles, varargin)
% This function has no output args, see OutputFcn.
% hObject    handle to figure
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)
% varargin   command line arguments to main (see VARARGIN)

% Choose default command line output for main
handles.output = hObject;

% Update handles structure
guidata(hObject, handles);

% UIWAIT makes main wait for user response (see UIRESUME)
% uiwait(handles.figure1);


% --- Outputs from this function are returned to the command line.
function varargout = main_OutputFcn(hObject, eventdata, handles) 
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
srcFiles= dir('E:\Tugas Akhir\Gambar\target\*.png');
% open gambar
[fn pn] = uigetfile('*.png','select dicom file');
img=imread([pn fn]);
imshow(img,'parent',handles.axes9);

% ekstrasi ciri
cropimage=crop(img);
normalize=imresize(cropimage,[64 64]);

%contour extraction
hasil_contour_extraction=contour_extraction(normalize); 

%%menenetukan kode arah
hasil_Dot_orientation=Dot_orientation(hasil_contour_extraction);

%%menentukan vektor
hasil_vector_construction=vector_construction(hasil_Dot_orientation); 
ekstrasi_ciri=hasil_vector_construction;
set(handles.uitable2, 'data', ekstrasi_ciri);

% masuk ke lvq tunggal
for i=1:7
    hasil_ensemble(i,:)=test_tunggal(i,ekstrasi_ciri);
    filename = strcat('E:\Tugas Akhir\Gambar\target\',srcFiles(hasil_ensemble(i,2)).name);
    if i==1
            imshow(filename,'parent',handles.axes1);
            set(handles.text11, 'String', hasil_ensemble(i,1));
    elseif i==2
            imshow(filename,'parent',handles.axes2);
            set(handles.text12, 'String', hasil_ensemble(i,1));
    elseif i==3
            imshow(filename,'parent',handles.axes3);
            set(handles.text13, 'String', hasil_ensemble(i,1));
    elseif i==4
            imshow(filename,'parent',handles.axes4);
            set(handles.text14, 'String', hasil_ensemble(i,1));
    elseif i==5
            imshow(filename,'parent',handles.axes5);
            set(handles.text15, 'String', hasil_ensemble(i,1));
    elseif i==6
            imshow(filename,'parent',handles.axes6);
            set(handles.text16, 'String', hasil_ensemble(i,1));
    elseif i==7
            imshow(filename,'parent',handles.axes7);
            set(handles.text17, 'String', hasil_ensemble(i,1));
    end   
end

% hasil lvq ensemble
[nilai urutan]=sort(hasil_ensemble(:,1),'ascend');
prediksi=hasil_ensemble(urutan(1),2);
hasil_ensemble = strcat('E:\Tugas Akhir\Gambar\target\',srcFiles(prediksi).name);
imshow(hasil_ensemble,'parent',handles.axes8);



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
