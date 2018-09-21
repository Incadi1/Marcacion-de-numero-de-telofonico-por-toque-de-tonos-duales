
function varargout = teclado(varargin)
gui_Singleton = 1;
gui_State = struct('gui_Name',       mfilename, ...
                   'gui_Singleton',  gui_Singleton, ...
                   'gui_OpeningFcn', @teclado_OpeningFcn, ...
                   'gui_OutputFcn',  @teclado_OutputFcn, ...
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


%-----------------------------------------------------------------------------------------------------------------------
function teclado_OpeningFcn(hObject, eventdata, handles, varargin)
handles.output = hObject
guidata(hObject, handles);
handles.counter=0 %Asignas el valor inicial a tu contador de 0
guidata(hObject, handles) %Guardas el handle 
handles.A=[]; %Creas el handle de A en forma de vector vac�o para concatenarle horizontalmente los valores del contador
guidata(hObject, handles)

%-----------------------------------------------------------------------------------------------------------------------
function varargout = teclado_OutputFcn(hObject, eventdata, handles) 
varargout{1} = handles.output;

%-----------------------------------------------------------------------------------------------------------------------
function bt1_Callback(hObject, eventdata, handles)
  fprintf('\n 1 \n')

%-----------------------------------------------------------------------------------------------------------------------
function bt2_Callback(hObject, eventdata, handles)
%fprintf('\n 2')
handles.counter = handles.counter + 1;
guidata(hObject, handles)
fprintf("cont: " + handles.counter)


switch mod(handles.counter, 4);
    case 1
        fprintf('\n a \n');
        r= 697;
        c = 1209;
%         suma(r,c)
         sonido(c);
    case 2
        fprintf('\n b \n');
     
    case 3
        fprintf('\n c \n');
     
    case 0
        fprintf('\n 2 \n');
end

%-----------------------------------------------------------------------------------------------------------------------
function bt3_Callback(hObject, eventdata, handles)
%fprintf('\n 3 \n')
handles.counter = handles.counter + 1;
guidata(hObject, handles)

switch mod(handles.counter,4)
    case 1
        fprintf('\n d \n');
    case 2
        fprintf('\n e \n');
    case 3
        fprintf('\n f \n');
    case 0
        fprintf('\n 3 \n');

end 

%-----------------------------------------------------------------------------------------------------------------------
function bt4_Callback(hObject, eventdata, handles)
%fprintf('\n 4 \n')
handles.counter = handles.counter + 1;
guidata(hObject, handles)

switch mod(handles.counter,4)
    case 1
        fprintf('\n g \n');
    case 2
        fprintf('\n h \n');
    case 3
        fprintf('\n i \n');
    case 0
        fprintf('\n 4 \n');
end

%-----------------------------------------------------------------------------------------------------------------------.
function bt5_Callback(hObject, eventdata, handles)
%fprintf('\n 5 \n')
handles.counter = handles.counter + 1;
guidata(hObject, handles)

switch mod(handles.counter,4)
    case 1
        fprintf('\n j \n');
    case 2
        fprintf('\n k \n');
    case 3
        fprintf('\n l \n');
    case 0
        fprintf('\n 5 \n');
end

%-----------------------------------------------------------------------------------------------------------------------
function bt6_Callback(hObject, eventdata, handles)
%fprintf('\n b6 \n')
handles.counter = handles.counter + 1;
guidata(hObject, handles)

switch mod(handles.counter,4)
    case 1
        fprintf('\n m \n');
        handles.counter = 0;
    case 2
        fprintf('\n n \n');
        handles.counter = 0;
    case 3
        fprintf('\n o \n');
       handles.counter = 0;
    case 0
        fprintf('\n 6 \n');
        handles.counter = 0;

end

%-----------------------------------------------------------------------------------------------------------------------
function bt7_Callback(hObject, eventdata, handles)
%fprintf('\n 7 \n')
handles.counter = handles.counter + 1;
guidata(hObject, handles)

switch mod(handles.counter,5)
    case 1
        fprintf('\n p \n');
        handles.counter = 0;
    case 2
        fprintf('\n q \n');
        handles.counter = 0;
    case 3
        fprintf('\n r \n');
       handles.counter = 0;
        case 4
        fprintf('\n s \n');
       handles.counter = 0;
    case 0
        fprintf('\n 7 \n');
        handles.counter = 0;
end

%-----------------------------------------------------------------------------------------------------------------------
function bt8_Callback(hObject, eventdata, handles)
%fprintf('\n 8 \n')
handles.counter = handles.counter + 1;
guidata(hObject, handles)

switch mod(handles.counter,4)
    case 1
        fprintf('\n t \n');
        handles.counter = 0;
    case 2
        fprintf('\n u \n');
        handles.counter = 0;
    case 3
        fprintf('\n v \n');
       handles.counter = 0;
    case 0
        fprintf('\n 8 \n');
        handles.counter = 0;
end

%-----------------------------------------------------------------------------------------------------------------------
function bt9_Callback(hObject, eventdata, handles)
%fprintf('\n 9 \n')
handles.counter = handles.counter + 1;
guidata(hObject, handles)

switch mod(handles.counter,5)
    case 1
        fprintf('\n w \n');
        handles.counter = 0;
    case 2
        fprintf('\n x \n');
        handles.counter = 0;
    case 3
        fprintf('\n y \n');
       handles.counter = 0;
     case 4
        fprintf('\n z \n');
       handles.counter = 0;
    case 0
        fprintf('\n 9 \n');
        handles.counter = 0;
end

%-----------------------------------------------------------------------------------------------------------------------
function btAste_Callback(hObject, eventdata, handles)
fprintf('\n * \n')

%-----------------------------------------------------------------------------------------------------------------------
function bt0_Callback(hObject, eventdata, handles)
fprintf('\n 0 \n')

%-----------------------------------------------------------------------------------------------------------------------
function btNum_Callback(hObject, eventdata, handles)
fprintf('\n # \n')

%-----------------------------------------------------------------------------------------------------------------------
function  figure1_CloseRequestFcn(hObject, eventdata, handles)
opc=questdlg('�Desea salir del programa?','SALIR','Si','No','No'); 
if strcmp(opc,'No') 
return; 
end
delete(hObject); 


% --- Executes on button press in informacion.
%function msg_Callback(hObject, eventdata, handles)
%msgbox({'Marcacion de numeros telefonicos por:         .','Ingrid Carmona Diaz','Daniela Diaz Bejarano','Marlon Marin Barco','Alejandro Oyuela Bolanos'},'Bienvenido');

%-----------------------------------------------------------------------------------------------------------------------

function comunicaSimulink()
%Codigo para comunicar simulink con matlab
%load_system('Nombre de la guide')
%Carga el modelo mdl
%setparam('Nombre de la guide/Step','After', get(handles.edit3, 'Strin'))//Campo de texto//Asigna el valor del campo de texto al valor final
%save_system('Nombre de la guide');guarda el mdl
%close_system('Nombre de la guide');//Cierra el mdl




function tbTextInput_Callback(hObject, eventdata, handles)
% hObject    handle to tbTextInput (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)

% Hints: get(hObject,'String') returns contents of tbTextInput as text
%        str2double(get(hObject,'String')) returns contents of tbTextInput as a double


% --- Executes during object creation, after setting all properties.
function tbTextInput_CreateFcn(hObject, eventdata, handles)
% hObject    handle to tbTextInput (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    empty - handles not created until after all CreateFcns called

% Hint: edit controls usually have a white background on Windows.
%       See ISPC and COMPUTER.
if ispc && isequal(get(hObject,'BackgroundColor'), get(0,'defaultUicontrolBackgroundColor'))
    set(hObject,'BackgroundColor','white');
end



function txTextIng_Callback(hObject, eventdata, handles)
% hObject    handle to txTextIng (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)

% Hints: get(hObject,'String') returns contents of txTextIng as text
%        str2double(get(hObject,'String')) returns contents of txTextIng as a double


% --- Executes during object creation, after setting all properties.
function txTextIng_CreateFcn(hObject, eventdata, handles)
% hObject    handle to txTextIng (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    empty - handles not created until after all CreateFcns called

% Hint: edit controls usually have a white background on Windows.
%       See ISPC and COMPUTER.
if ispc && isequal(get(hObject,'BackgroundColor'), get(0,'defaultUicontrolBackgroundColor'))
    set(hObject,'BackgroundColor','white');
end



function txRutaAudioInp_Callback(hObject, eventdata, handles)
% hObject    handle to txRutaAudioInp (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)

% Hints: get(hObject,'String') returns contents of txRutaAudioInp as text
%        str2double(get(hObject,'String')) returns contents of txRutaAudioInp as a double


% --- Executes during object creation, after setting all properties.
function txRutaAudioInp_CreateFcn(hObject, eventdata, handles)
% hObject    handle to txRutaAudioInp (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    empty - handles not created until after all CreateFcns called

% Hint: edit controls usually have a white background on Windows.
%       See ISPC and COMPUTER.
if ispc && isequal(get(hObject,'BackgroundColor'), get(0,'defaultUicontrolBackgroundColor'))
    set(hObject,'BackgroundColor','white');
end


% --- Executes on button press in btExaminar.
function btExaminar_Callback(hObject, eventdata, handles)
% hObject    handle to btExaminar (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)


% --- Executes on button press in btSubir.
function btSubir_Callback(hObject, eventdata, handles)
% hObject    handle to btSubir (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)


% --- Executes on button press in btMic.
function btMic_Callback(hObject, eventdata, handles)
% hObject    handle to btMic (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)


% --- If Enable == 'on', executes on mouse press in 5 pixel border.
% --- Otherwise, executes on mouse press in 5 pixel border or over btMic.
function btMic_ButtonDownFcn(hObject, eventdata, handles)
% hObject    handle to btMic (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)

function sonido(fC)
clear; %limpiamos listado de variables usadas
clc;   %limpiamos pantalla

fs=32768; %definimos variable frecuencia de sampleo
fC; %definimos variable frecuecnia de nuestro sonido
 
duracion_segundos=0.2; %definimos la duracion de nuestro sonido
 
b=fC*2*pi; %definimos variable b a utilizar en nuesta funcion a�sin(bt+c)
%a=1; % a debe ser 1 para que la funcion no se distorcione al reproducirse
%c=0;
 
t=0:1/44100:duracion_segundos;
 
x=sin(b*t);
 
soundsc(x,fs); %reproducir el sonido
 
% para hacer un grafico de la onda de sonido
sub_t=(1:100); % tomamos los 100 primeros puntos del vector t
 
sub_x=x(1:100); % tomamos los 100 primeros puntos del vector x
 
stem(sub_t,sub_x); %graficamos
 
%wavwrite(x,fs,'sonido_1'); %guardamos el sonido en .wav
% clear all
% close all
% 
% %Teclado 
% % keypad = ['1','2','3','4','5','6','7','8','9','*','#']
% 
% %DTMF rows frequency 
% %Frow = [697 770 852 941] %22.304 24.64 27.264 30.112
% Frow =row;
% %DTMF Columns frequency
% %Fc = [1209 1336 1477 ] %38.688 42.752 47.264 52.265
% Fc = colum;
% %Sampling rate
% Fs = 32768
% 
% %Samples
% N = 256;
% 
% %Energy of signal (low(1) and high (2))
% %Power1 = 0;
% %Power2 = 0;
% 
% %Index of signal(row(1) and columns (2))
% Index1 = 0;
% Index2 = 0;
% 
% %Generate DTMF tone
% lo = 0.999969*sin(2*pi*Frow*(0:N-1)/Fs);
% hi = 0.999969*sin(2*pi*Fc*(0:N-1)/Fs);
% data = (lo + hi)/2;
% 
% %Play DTMF signal
% soundsc(data, Fs);
% 
% %Fft of DTMF tone
% fft_data = fft(data);
%     
% %Magnitude of goertzel (DFT) value
% mag_data = abs(fft_data);
% 
% %Graphs the magnitude of high and low DTMF signal
% %Stem(mag_data)
% %Xlabel('Samples'); YLabel('Magnitude'); Tittle('DFT Magnitude');
% 
% %Find index of low and high DTMF tone
% k = find(mag_data > 80,2);
% index_low = k(1);
% index_high = k(2);
% 
% %Finds low frequency foe DTMF signal 
% for  n= 1:length(Fc)
%     detected_tone = (index_low - 0.5)*Fs/N;
%     
%     if((detected_tone > Frow(n)) && (detected_tone < Frow(n) + 40))
%         Power1 = detected_tone;
%         Index1 = n;
%         
%     else
%         Power1 = Index1;
%     end
% end
% 
%     
% %Finds high frequency foe DTMF signal 
% for  n= 1:length(Fc)
%     detected_tone = (index_high - 0.5)*Fs/N;
%     
%     if((detected_tone >fHigh(n)) && (detected_tone < fHigh(n) + 40))
%         Power2 = detected_tone;
%         Index2 = n;
%         
%     else
%         Power2 = Power2;
%     end
% end
% 
% fprintf('El primer tono es %Hz\n', FLow(index1), Fc(Index2));
% fprintf('El teclado es presionado si: %s\n', keypad(Index1,Index2));

function [z] = suma (x,y)
%Esta funci�n suma dos n�meros x e y
%y devuelve el resultado de la suma en z
    w =x;
    z=w+y; %efect�a la suma

