function varargout = Miniproject(varargin)
% MINIPROJECT MATLAB code for Miniproject.fig
%      MINIPROJECT, by itself, creates a new MINIPROJECT or raises the existing
%      singleton*.
%
%      H = MINIPROJECT returns the handle to a new MINIPROJECT or the handle to
%      the existing singleton*.
%
%      MINIPROJECT('CALLBACK',hObject,eventData,handles,...) calls the local
%      function named CALLBACK in MINIPROJECT.M with the given input arguments.
%
%      MINIPROJECT('Property','Value',...) creates a new MINIPROJECT or raises the
%      existing singleton*.  Starting from the left, property value pairs are
%      applied to the GUI before Miniproject_OpeningFcn gets called.  An
%      unrecognized property name or invalid value makes property application
%      stop.  All inputs are passed to Miniproject_OpeningFcn via varargin.
%
%      *See GUI Options on GUIDE's Tools menu.  Choose "GUI allows only one
%      instance to run (singleton)".
%
% See also: GUIDE, GUIDATA, GUIHANDLES

% Edit the above text to modify the response to help Miniproject

% Last Modified by GUIDE v2.5 08-Dec-2020 19:30:16

% Begin initialization code - DO NOT EDIT
gui_Singleton = 1;
gui_State = struct('gui_Name',       mfilename, ...
                   'gui_Singleton',  gui_Singleton, ...
                   'gui_OpeningFcn', @Miniproject_OpeningFcn, ...
                   'gui_OutputFcn',  @Miniproject_OutputFcn, ...
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


% --- Executes just before Miniproject is made visible.
function Miniproject_OpeningFcn(hObject, eventdata, handles, varargin)
% This function has no output args, see OutputFcn.
% hObject    handle to figure
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)
% varargin   command line arguments to Miniproject (see VARARGIN)

% Choose default command line output for Miniproject
H=waitbar(0,'WELCOME TO MINI-PROJECT');
for i=1:500,
    waitbar(i/500);
end
    close (H);
A=imread('D:\sharedfolder\New folder\960x0.jpg');
A=imresize(A,[400,400]);
axes(handles.axes4);
imshow(A);
A=imread('D:\sharedfolder\New folder\output.jpg');
A=imresize(A,[400,400]);
axes(handles.axes5);
imshow(A);
A=imread('D:\sharedfolder\New folder\101.png');
A=imresize(A,[400,800]);
axes(handles.axes6);
imshow(A);
A=imread('D:\sharedfolder\New folder\main.jpg');
A=imresize(A,[1920,4000]);
axes(handles.axes7);
imshow(A);
A=imread('D:\sharedfolder\New folder\101.png');
A=imresize(A,[400,400]);
axes(handles.axes8);
imshow(A);
handles.output = hObject;


% Update handles structure
guidata(hObject, handles);

% UIWAIT makes Miniproject wait for user response (see UIRESUME)
% uiwait(handles.figure1);


% --- Outputs from this function are returned to the command line.
function varargout = Miniproject_OutputFcn(hObject, eventdata, handles) 
% varargout  cell array for returning output args (see VARARGOUT);
% hObject    handle to figure
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)

% Get default command line output from handles structure
varargout{1} = handles.output;



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


% --- Executes on button press in Input1.
function Input1_Callback(hObject, eventdata, handles)
% hObject    handle to Input1 (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)

[fn1,pn1]=uigetfile({'*.bmp;*.jpg;*.tif;*.pnj;*.png'},'Input 1');
i1 = imread([pn1 fn1]); 
axes(handles.axes1);
imshow(i1);
handles.i1 = i1;
guidata(hObject, handles);

% --- Executes on button press in Reset.
function Reset_Callback(hObject, eventdata, handles)
% hObject    handle to Reset (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)

set(handles.edit5,'string','PSNR');
set(handles.edit6,'string','SNR');
set(handles.edit7,'string','SSIM');
set(handles.edit8,'string','CC');
cla(handles.axes1,'reset');
cla(handles.axes2,'reset');
cla(handles.axes3,'reset');
clear all;



% --- Executes on button press in Input2.
function Input2_Callback(hObject, eventdata, handles)
% hObject    handle to Input2 (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)

[fn1,pn1]=uigetfile({'*.bmp;*.jpg;*.tif;*.pnj;*.png'},'Input 1');
i2 = imread([pn1 fn1]); 
axes(handles.axes2);
imshow(i2);
handles.i2 = i2;
guidata(hObject, handles);

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


% --- Executes on button press in Output.
function Output_Callback(hObject, eventdata, handles)
% hObject    handle to Output (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)
  

i1 =handles.i1;
i2 =handles.i2;

i1 =imresize(i1,[260,260]);
i2 =imresize(i2,[260,260]);

[LL1 LH1 HL1 HH1] = dwt2(i1,'haar');
[LL2 LH2 HL2 HH2] = dwt2(i2,'haar');

LL1 = imguidedfilter(LL1);
LL2 = imguidedfilter(LL2);

LL3=(LL1+LL2)/2;

GE1 = sum(LH1(:))/(130*130);
GE2 = sum(LH2(:))/(130*130);
GE = (GE2-GE1);

for i=1:3:(128)
    for j=1:3:(128)
        s1=0;
        s2=0;
        for k=i:1:(i+3)
            for l=j:1:(j+3)
                s1 =s1+ LH1(k,l);
                s2 =s2+ LH2(k,l);        
            end
        end
        s1=s1/3;
        s2=s2/3;
        LE=s2-s1;
        if(LE>GE)
           for k=i:1:(i+3)
                for l=j:1:(j+3)
                  LH3(k,l)=max(LH1(k,l),LH2(k,l));        
                end
           end 
        else
            for k=i:1:(i+3)
                for l=j:1:(j+3)
                    LH3(k,l)=(LH1(k,l)+LH2(k,l))/2;
                end
            end
        end
    end
end

GE1 = sum(HL1(:))/(130*130);
GE2 = sum(HL2(:))/(130*130);
GE = (GE2-GE1);

for i=1:3:(128)
    for j=1:3:(128)
        s1=0;
        s2=0;
        for k=i:1:(i+3)
            for l=j:1:(j+3)
                s1 =s1+ HL1(k,l);
                s2 =s2+ HL2(k,l);        
            end
        end
        s1=s1/3;
        s2=s2/3;
        LE=s2-s1;
        if(LE>GE)
           for k=i:1:(i+3)
                for l=j:1:(j+3)
                  HL3(k,l)=max(HL1(k,l),HL2(k,l));        
                end
           end 
        else
            for k=i:1:(i+3)
                for l=j:1:(j+3)
                    HL3(k,l)=(HL1(k,l)+ HL2(k,l))/2;
                end
            end
        end
    end
end

GE1 = sum(HH1(:))/(130*130);
GE2 = sum(HH2(:))/(130*130);
GE = (GE2-GE1);

for i=1:3:(128)
    for j=1:3:(128)
        s1=0;
        s2=0;
        for k=i:1:(i+3)
            for l=j:1:(j+3)
                s1 =s1+ HH1(k,l);
                s2 =s2+ HH2(k,l);        
            end
        end
        s1=s1/3;
        s2=s2/3;
        LE=s2-s1;
        if(LE>GE)
           for k=i:1:(i+3)
                for l=j:1:(j+3)
                  HH3(k,l)=max(HH1(k,l),HH2(k,l));        
                end
           end 
        else 
            for k=i:1:(i+3)
                for l=j:1:(j+3)
                    HH3(k,l)=(HH1(k,l)+HH2(k,l))/2;
                end
            end
        end
    end
end

i3=idwt2(LL3,LH3,HL3,HH3,'haar');
i3=uint8(i3);

axes(handles.axes3);
imshow(i3);
handles.i3 = i3;
guidata(hObject, handles);
ref =i3;
A = imnoise(ref,'salt & pepper', 0.02);
[peaksnr, snr] = psnr(A, ref);

H = fspecial('Gaussian',[11 11],1.5);
A = imfilter(ref,H,'replicate');
ssimval = ssim(A,ref);

A = imnoise(ref,'salt & pepper', 0.02);
R = immse(A, ref);
R=sqrt(R);

set(handles.edit5,'string',peaksnr);
set(handles.edit6,'string',snr);
set(handles.edit7,'string',ssimval);
set(handles.edit8,'string',R);

% --- Executes on button press in gray1.
function gray1_Callback(hObject, eventdata, handles)
% hObject    handle to gray1 (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)

i1 =handles.i1;
i1=rgb2gray(i1);
axes(handles.axes1);
imshow(i1);


% --- Executes on button press in gray2.
function gray2_Callback(hObject, eventdata, handles)
% hObject    handle to gray2 (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)

i2 =handles.i2;
i2=rgb2gray(i2);
axes(handles.axes2);
imshow(i2);


% --- Executes on button press in filter.
function filter_Callback(hObject, eventdata, handles)
% hObject    handle to filter (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)

i3 =handles.i3;
a = 1.58;
b = 0;
i3 =  a*double(i3) + b;
i3 =  uint8(i3);
axes(handles.axes3);
imshow(i3);



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



function edit8_Callback(hObject, eventdata, handles)
% hObject    handle to edit8 (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)

% Hints: get(hObject,'String') returns contents of edit8 as text
%        str2double(get(hObject,'String')) returns contents of edit8 as a double


% --- Executes during object creation, after setting all properties.
function edit8_CreateFcn(hObject, eventdata, handles)
% hObject    handle to edit8 (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    empty - handles not created until after all CreateFcns called

% Hint: edit controls usually have a white background on Windows.
%       See ISPC and COMPUTER.
if ispc && isequal(get(hObject,'BackgroundColor'), get(0,'defaultUicontrolBackgroundColor'))
    set(hObject,'BackgroundColor','white');
end


% --- Executes on button press in black.
function black_Callback(hObject, eventdata, handles)
% hObject    handle to black (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)

i3 =handles.i3;
i3=im2bw(i3);
axes(handles.axes3);
imshow(i3);

% --- Executes on button press in save.
function save_Callback(hObject, eventdata, handles)
% hObject    handle to save (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)

i3 =handles.i3;
imwrite(i3,'newImage.jpg','jpg');
