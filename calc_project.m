function varargout = calc_project(varargin)
% CALC_PROJECT MATLAB code for calc_project.fig
%      CALC_PROJECT, by itself, creates a new CALC_PROJECT or raises the existing
%      singleton*.
%
%      H = CALC_PROJECT returns the handle to a new CALC_PROJECT or the handle to
%      the existing singleton*.
%
%      CALC_PROJECT('CALLBACK',hObject,eventData,handles,...) calls the local
%      function named CALLBACK in CALC_PROJECT.M with the given input arguments.
%
%      CALC_PROJECT('Property','Value',...) creates a new CALC_PROJECT or raises the
%      existing singleton*.  Starting from the left, property value pairs are
%      applied to the GUI before calc_project_OpeningFcn gets called.  An
%      unrecognized property name or invalid value makes property application
%      stop.  All inputs are passed to calc_project_OpeningFcn via varargin.
%
%      *See GUI Options on GUIDE's Tools menu.  Choose "GUI allows only one
%      instance to run (singleton)".

% See also: GUIDE, GUIDATA, GUIHANDLES

% Edit the above text to modify the response to help calc_project

% Last Modified by GUIDE v2.5 29-Mar-2019 09:30:14

% Begin initialization code - DO NOT EDIT
gui_Singleton = 1;
gui_State = struct('gui_Name',       mfilename, ...
                   'gui_Singleton',  gui_Singleton, ...
                   'gui_OpeningFcn', @calc_project_OpeningFcn, ...
                   'gui_OutputFcn',  @calc_project_OutputFcn, ...
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



% --- Executes just before calc_project is made visible.
function calc_project_OpeningFcn(hObject, eventdata, handles, varargin)
% This function has no output args, see OutputFcn.
% hObject    handle to figure
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)
% varargin   command line arguments to calc_project (see VARARGIN)

% Choose default command line output for calc_project
handles.output = hObject;

% Update handles structure
guidata(hObject, handles);

% UIWAIT makes calc_project wait for user response (see UIRESUME)
% uiwait(handles.figure1);



% --- Outputs from this function are returned to the command line.
function varargout = calc_project_OutputFcn(hObject, eventdata, handles) 
% varargout  cell array for returning output args (see VARARGOUT);
% hObject    handle to figure
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)

% Get default command line output from handles structure
varargout{1} = handles.output;



% --- Executes on button press in num0.
function num0_Callback(hObject, eventdata, handles)
% hObject    handle to num0 (see GCBO)
var on;
on = get(handles.isItOn, 'String');
if strcmpi(on,'yes')
    string myString;

    myString = get(handles.textScreen, 'String');
    
    if strcmpi(myString, '0')
        set(handles.textScreen,'String','0');
    else
        myNewString = strcat(myString ,'0');
        myString = myNewString;
        set(handles.textScreen,'String',myString);
    end
end
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)


% --- Executes on button press in num1.
function num1_Callback(hObject, eventdata, handles)
% hObject    handle to num1 (see GCBO)
var on;
on = get(handles.isItOn, 'String');
if strcmpi(on,'yes')  
    string myString;

    myString = get(handles.textScreen, 'String');
    
    if strcmpi(myString, '0')
        set(handles.textScreen,'String','1');
    else
        myNewString = strcat(myString ,'1');
        myString = myNewString;
        set(handles.textScreen,'String',myString);
    end
end
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)



% --- Executes on button press in num2.
function num2_Callback(hObject, eventdata, handles)
% hObject    handle to num2 (see GCBO)
var on;
on = get(handles.isItOn, 'String');
if strcmpi(on,'yes')
    string myString;

    myString = get(handles.textScreen, 'String');
    if strcmpi(myString, '0')
        set(handles.textScreen,'String','2');
    else
        myNewString = strcat(myString ,'2');
        myString = myNewString;
        set(handles.textScreen,'String',myString);
    end
end
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)


% --- Executes on button press in num3.
function num3_Callback(hObject, eventdata, handles)
% hObject    handle to num3 (see GCBO)
var on;
on = get(handles.isItOn, 'String');
if strcmpi(on,'yes') 
    string myString;

    myString = get(handles.textScreen, 'String');

    if strcmpi(myString, '0')
        set(handles.textScreen,'String','3');
    else
        myNewString = strcat(myString ,'3');
        myString = myNewString;
        set(handles.textScreen,'String',myString);
    end
end
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)


% --- Executes on button press in num4.
function num4_Callback(hObject, eventdata, handles)
% hObject    handle to num4 (see GCBO)
var on;
on = get(handles.isItOn, 'String');
if strcmpi(on,'yes')  
    var modeOn;
    modeOn = get(handles.textMODE,'String');
    if strcmpi(modeOn,'MODE')
        set(handles.Angle,'String','deg');
        set(handles.textMODE, 'String','');
    else
        string myString;
        myString = get(handles.textScreen, 'String');
        
        if strcmpi(myString, '0')
            set(handles.textScreen,'String','4');
        else
            myNewString = strcat(myString ,'4');
            myString = myNewString;
            set(handles.textScreen,'String',myString);
        end
    end
end
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)


% --- Executes on button press in num5.
function num5_Callback(hObject, eventdata, handles)
% hObject    handle to num5 (see GCBO)
var on;
on = get(handles.isItOn, 'String');
if strcmpi(on,'yes')
    var modeOn;
    modeOn = get(handles.textMODE,'String');
    if strcmpi(modeOn,'MODE')
        set(handles.Angle,'String','rad');
        set(handles.textMODE, 'String','');
    else
        string myString;

        myString = get(handles.textScreen, 'String');
        
        if strcmpi(myString, '0')
            set(handles.textScreen,'String','5');
        else

            myNewString = strcat(myString ,'5');
            myString = myNewString;
            set(handles.textScreen,'String',myString);
        end
    end
end
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)


% --- Executes on button press in num6.
function num6_Callback(hObject, eventdata, handles)
% hObject    handle to num6 (see GCBO)
var on;
on = get(handles.isItOn, 'String');
if strcmpi(on,'yes')
    
    string myString;

    myString = get(handles.textScreen, 'String');
    
    if strcmpi(myString, '0')
        set(handles.textScreen,'String','6');
    else
        myNewString = strcat(myString ,'6');
        myString = myNewString;
        set(handles.textScreen,'String',myString);
    end
end
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)


% --- Executes on button press in num7.
function num7_Callback(hObject, eventdata, handles)
% hObject    handle to num7 (see GCBO)
var on;
on = get(handles.isItOn, 'String');
if strcmpi(on,'yes') 
    string myString;

    myString = get(handles.textScreen, 'String');
    if strcmpi(myString, '0')
        set(handles.textScreen,'String','7');
    else
        myNewString = strcat(myString ,'7');
        myString = myNewString;
        set(handles.textScreen,'String',myString);
    end
end
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)


% --- Executes on button press in num8.
function num8_Callback(hObject, eventdata, handles)
% hObject    handle to num8 (see GCBO)
var on;
on = get(handles.isItOn, 'String');
if strcmpi(on,'yes')    
    string myString;

    myString = get(handles.textScreen, 'String');

    if strcmpi(myString, '0')
        set(handles.textScreen,'String','8');
    else
        myNewString = strcat(myString ,'8');
        myString = myNewString;
        set(handles.textScreen,'String',myString);
    end
end
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)


% --- Executes on button press in num9.
function num9_Callback(hObject, eventdata, handles)
% hObject    handle to num9 (see GCBO)
var on;
on = get(handles.isItOn, 'String');
if strcmpi(on,'yes')
    string myString;

    myString = get(handles.textScreen, 'String');

    if strcmpi(myString, '0')
        set(handles.textScreen,'String','9');
    else
        myNewString = strcat(myString ,'9');
        myString = myNewString;
        set(handles.textScreen,'String',myString);
    end
end
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)


% --- Executes on button press in buttonPoint.
function buttonPoint_Callback(hObject, eventdata, handles)
% hObject    handle to buttonPoint (see GCBO)
var on;
on = get(handles.isItOn, 'String');
if strcmpi(on,'yes')  
    string myString;

    myString = get(handles.textScreen, 'String');

    myNewString = strcat(myString ,'.');
    myString = myNewString;
    set(handles.textScreen,'String',myString);
end
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDAT
% --- Executes on button press in buttonEXP.
function buttonEXP_Callback(hObject, eventdata, handles)
var on;
on = get(handles.isItOn, 'String');
if strcmpi(on,'yes')
    var shift;
    shift = get(handles.Shift, 'String');
    if strcmpi(shift,'SHIFT')
       set(handles.textScreen,'String','3.14159265358979');
       set(handles.Shift,'String','');
    else 
        var string1;
        var string2;
        var operator;

        string1 = get(handles.textScreen, 'String');

        set(handles.savedNumber, 'String', string1);
        %This is similar to exponent but it is not so it is 7
        operator = '7';
        set(handles.operatorText, 'String', operator);
        set(handles.textScreen,'String','');
    end
end
% hObject    handle to buttonEXP (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)


% --- Executes on button press in buttonClear.
function buttonClear_Callback(hObject, eventdata, handles)
% hObject    handle to buttonClear (see GCBO)
var on;
on = get(handles.isItOn, 'String');
if strcmpi(on,'yes')  
    string clear;
    clear = '0';
    set(handles.textScreen,'String',clear);
end
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)

% --- Executes on button press in buttonAllClear.
function buttonAllClear_Callback(hObject, eventdata, handles)
var on;
on = get(handles.isItOn, 'String');
if strcmpi(on,'yes')
    var clr;
    clr = '';
    set(handles.textScreen,'String','0');
    set(handles.savedNumber,'String',clr);
    set(handles.operatorText, 'String',clr);
end
% hObject    handle to buttonAllClear (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)

% --- Executes on button press in buttonMultiply.
function buttonMultiply_Callback(hObject, eventdata, handles)
var on;
on = get(handles.isItOn, 'String');
if strcmpi(on,'yes')
    var string1;
    var string2;
    var operator;

    string1 = get(handles.textScreen, 'String');

    set(handles.savedNumber, 'String', string1);
    %using pemdas multiplication is 3rd so mult = 3
    operator = '3';
    set(handles.operatorText, 'String', operator);
    set(handles.textScreen,'String',''); 
    
end
% hObject    handle to buttonMultiply (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)


% --- Executes on button press in buttonAdd.
function buttonAdd_Callback(hObject, eventdata, handles)
% hObject    handle to buttonAdd (see GCBO)
var on;
on = get(handles.isItOn, 'String');
if strcmpi(on,'yes')
    
   var string1;
    var string2;
    var operator;

    string1 = get(handles.textScreen, 'String');

    set(handles.savedNumber, 'String', string1);
    %using pemdas addition is 5th so add = 5
    operator = '5';
    set(handles.operatorText, 'String', operator);
    set(handles.textScreen,'String','');
    
end
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)


% --- Executes on button press in buttonEquals.
function buttonEquals_Callback(hObject, eventdata, handles)
% hObject    handle to buttonEquals (see GCBO)
var on;
on = get(handles.isItOn, 'String');
if strcmpi(on,'yes')
var string1;
       var string2;
       var num1;
       var num2;
       var operator;
       var answer;
       var answerString;
        operator = get(handles.operatorText, 'String');

       string1 = get(handles.savedNumber, 'String');
       num1 = str2num(string1);

       string2 = get(handles.textScreen, 'String');
       num2 = str2num(string2);
       var shift;
       shift = get(handles.Shift, 'String');
       var shift;
       shift = get(handles.Shift, 'String');
       if strcmpi(shift,'SHIFT')
           switch operator
               case '2'
                  answer =  nthroot(num1,num2);
                  answerString = num2str(answer);
                  set(handles.textScreen,'String',answerString);
                  set(handles.Shift,'String','');
           end
       else
           switch operator
               case '2'
                   answer = num1^num2;
                   answerString = num2str(answer);
                   set(handles.textScreen,'String', answerString);
               case '3'
                   answer = num1 * num2;
                   answerString = num2str(answer);
                   set(handles.textScreen,'String', answerString);
               case '4'
                   if (num2 == 0)
                       answerString = '-E-';
                       set(handles.textScreen,'String', answerString);
                   else
                       answer = num1 / num2;
                       answerString = num2str(answer);
                       set(handles.textScreen,'String', answerString);
                   end
               case '5'
                   answer = num1 + num2;
                   answerString = num2str(answer);
                   set(handles.textScreen,'String', answerString);
               case '6'
                   answer = num1 - num2;
                   answerString = num2str(answer);
                   set(handles.textScreen,'String', answerString);
               case '7'
                   answer = num1*10^num2;
                   answerString = num2str(answer);
                   set(handles.textScreen,'String', answerString);
           end
       end

    
end
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)



% --- Executes on button press in buttonDivide.
function buttonDivide_Callback(hObject, eventdata, handles)
var on;
on = get(handles.isItOn, 'String');
if strcmpi(on,'yes')
    var string1;
    var string2;
    var operator;

    string1 = get(handles.textScreen, 'String');

    set(handles.savedNumber, 'String', string1);
    %using pemdas division is 4th so div = 4
    operator = '4';
    set(handles.operatorText, 'String', operator);
    set(handles.textScreen,'String',''); 
    
end
% hObject    handle to buttonDivide (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)


% --- Executes on button press in buttonSubtract.
function buttonSubtract_Callback(hObject, eventdata, handles)
var on;
on = get(handles.isItOn, 'String');
if strcmpi(on,'yes')
    var string1;
    var string2;
    var operator;

    string1 = get(handles.textScreen, 'String');

    set(handles.savedNumber, 'String', string1);
    %using pemdas subtraction is 6th so sub = 6
    operator = '6';
    set(handles.operatorText, 'String', operator);
    set(handles.textScreen,'String','');
    
    
end
% hObject    handle to buttonSubtract (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)


% --- Executes on button press in getMemory.
function getMemory_Callback(hObject, eventdata, handles)
var on;
on = get(handles.isItOn, 'String');
if strcmpi(on,'yes')
    var shift;
    shift = get(handles.Shift,'String');
    if strcmpi(shift, '')
    
        global C
        var string1;

        string1 = get(handles.textScreen,'String');
        C = str2num(string1)
    else
            set(handles.Shift, 'String', '');
            clear global C
    end
end
% hObject    handle to getMemory (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)


% --- Executes on button press in buttonMode.
function buttonMode_Callback(hObject, eventdata, handles)
% hObject    handle to buttonMode (see GCBO)
var on;
on = get(handles.isItOn, 'String');
if strcmpi(on,'yes')
    var modeOn;
    modeOn = get(handles.textMODE,'String');
    if strcmpi(modeOn,'')
        set(handles.textMODE,'String','MODE');
    else
        set(handles.textMODE,'String','');
    end

end
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)


% --- Executes on button press in buttonSquare.
function buttonSquare_Callback(hObject, eventdata, handles)
% hObject    handle to buttonSquare (see GCBO)
var on;
on = get(handles.isItOn, 'String');
if strcmpi(on,'yes')
    var string1;
    var string2;
    var num1;
    var num2;

    string1 = get(handles.textScreen, 'String');
    num1 = str2num(string1);
    
    var shift;
    shift = get(handles.Shift, 'String');
    if strcmpi(shift,'SHIFT')
        num2 = sqrt(num1);
        set(handles.Shift,'String','');
    else
        num2 = num1*num1;
    end

        string2 = num2str(num2);

    set(handles.textScreen,'String',string2);
end
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)


% --- Executes on button press in buttonLog10.
function buttonLog10_Callback(hObject, eventdata, handles)
var on;
on = get(handles.isItOn, 'String');
if strcmpi(on,'yes')
    var string1;
    var string2;
    var num1;
    var num2;
    
    string1 = get(handles.textScreen, 'String');
    num1 = str2num(string1);
    
    var shift;
    shift = get(handles.Shift, 'String');
    if strcmpi(shift,'SHIFT')
        num2 = 10^num1;
        string2 = num2str(num2);
        set(handles.Shift, 'String', '');
    else
        if (num1 <= 0)
            string2 = '-E-';
        else
            num2 = log10(num1);
            string2 = num2str(num2);
        end
    end
        set(handles.textScreen,'String',string2);
end
% hObject    handle to buttonLog10 (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)


% --- Executes on button press in buttonLn.
function buttonLn_Callback(hObject, eventdata, handles)
% hObject    handle to buttonLn (see GCBO)
var on;
on = get(handles.isItOn, 'String');
if strcmpi(on,'yes')
    var string1;
    var string2;
    var num1;
    var num2;

    string1 = get(handles.textScreen, 'String');
    num1 = str2num(string1);
    
    var shift;
    shift = get(handles.Shift, 'String');
    if strcmpi(shift,'SHIFT')
        num2 = 2.71828^num1;
        string2 = num2str(num2);
        set(handles.Shift, 'String', '');
    else
        if (num1 <= 0)
            string2 = '-E-';
        else
            num2 = log(num1);
            string2 = num2str(num2);
        end
    end
        set(handles.textScreen,'String',string2);
    
end
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)


% --- Executes on button press in buttonOn.
function buttonOn_Callback(hObject, eventdata, handles)
% hObject    handle to buttonOn (see GCBO)
 var On;
On = get(handles.isItOn, 'String');
if strcmpi(On,'no')

    var on;
    on = 'yes';
    set(handles.isItOn,'String',on);
    set(handles.textScreen,'String','0');
    set(handles.Angle,'String', 'deg');
end
var shift;
shift = get(handles.Shift, 'String');
if strcmpi(shift,'SHIFT')
    set(handles.isItOn,'String','no');
    set(handles.textScreen,'String','');
    set(handles.Angle, 'String', '');
    set(handles.Shift, 'String','');
    clear global C;
    
end
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)


% --- Executes on button press in buttonMixed.
function buttonMixed_Callback(hObject, eventdata, handles)
var on;
on = get(handles.isItOn, 'String');
if strcmpi(on,'yes')
    
end
% hObject    handle to buttonMixed (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)


% --- Executes on button press in buttonHyp.
function buttonHyp_Callback(hObject, eventdata, handles)
var on;
on = get(handles.isItOn, 'String');
if strcmpi(on,'yes')
    var Hyp;
    Hyp = get(handles.textHyp,'String');
    if strcmpi(Hyp,'')
        set(handles.textHyp,'String','HYP');
    else
        set(handles.textHyp,'String','');
    end
end
% hObject    handle to buttonHyp (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)


% --- Executes on button press in buttonCos.
function buttonCos_Callback(hObject, eventdata, handles)
% hObject    handle to buttonCos (see GCBO)
var on;
on = get(handles.isItOn, 'String');
if strcmpi(on,'yes') 
    
    var string1;
    var string2;
    var num1;
    var num2;
    var mode;

    string1 = get(handles.textScreen, 'String');
    num1 = str2num(string1);
    mode = get(handles.Angle, 'String');
    
    var shift;
    shift = get(handles.Shift, 'String');
    if strcmpi(shift,'SHIFT')
        if strcmpi(mode,'deg')
            num2 = acosd(num1);
        else
            num2 = acos(num1);
        end
        set(handles.Shift, 'String', '');
    else
        if strcmpi(mode,'deg')
            num2 = cosd(num1);
        else
            num2 = cos(num1);
        end
    end

    string2 = num2str(num2);

    set(handles.textScreen,'String',string2);
end
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)


% --- Executes on button press in buttonTan.
function buttonTan_Callback(hObject, eventdata, handles)
% hObject    handle to buttonTan (see GCBO)
var on;
on = get(handles.isItOn, 'String');
if strcmpi(on,'yes')
    var string1;
    var string2;
    var num1;
    var num2;
    var mode;

    string1 = get(handles.textScreen, 'String');
    num1 = str2num(string1);
    mode = get(handles.Angle, 'String');
    
    var shift;
    shift = get(handles.Shift, 'String');
    if strcmpi(shift,'SHIFT')
        if strcmpi(mode,'deg')
            num2 = atand(num1);
        else
            num2 = atan(num1);
        end
        set(handles.Shift, 'String', '');
    else 
        if strcmpi(mode,'deg')
            num2 = tand(num1);
        else
            num2 = tan(num1);
        end

        if (num2 == tand(90) || num2 == tand(-90))
            string2 = '-E-';
        else
            string2 = num2str(num2);
        end
    end
    set(handles.textScreen,'String',string2);
end
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)


% --- Executes on button press in buttonNegative.
function buttonNegative_Callback(hObject, eventdata, handles)
var on;
on = get(handles.isItOn, 'String');
if strcmpi(on,'yes')
    var string1;
    var string2;
    var num1;
    var num2;
       string1 = get(handles.textScreen, 'String');
       num1 = str2num(string1);
       
    var shift;
    shift = get(handles.Shift, 'String');
    if strcmpi(shift,'SHIFT')
       num2 = nthroot(num1,3);
       set(handles.Shift, 'String', '');
    else
           num2 = -num1;
    end
           string2 = num2str(num2);
           set(handles.textScreen, 'String', string2);

end
% hObject    handle to buttonNegative (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)


% --- Executes on button press in pushbutton31.
function pushbutton31_Callback(hObject, eventdata, handles)
var on;
on = get(handles.isItOn, 'String');
if strcmpi(on,'yes')
    
end
% hObject    handle to pushbutton31 (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)


% --- Executes on button press in closePar.
function closePar_Callback(hObject, eventdata, handles)
var on;
on = get(handles.isItOn, 'String');
if strcmpi(on,'yes')
    var num2;
    var num2;
    var string1;
    var string2;
    var shift;
    shift = get(handles.Shift, 'String');
    if strcmpi(shift,'SHIFT')
      string1 = get(handles.textScreen, 'String');
      num1 = str2num(string1);
      num2 = 1/(num1);
      string2 = num2str(num2);
      set(handles.textScreen,'String',string2);
      set(handles.Shift, 'String', '');
    end
end
% hObject    handle to closePar (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)


% --- Executes on button press in buttonExpont.
function buttonExpont_Callback(hObject, eventdata, handles)
var on;
on = get(handles.isItOn, 'String');
if strcmpi(on,'yes')
    var string1;
    var string2;
    var operator;

    string1 = get(handles.textScreen, 'String');

    set(handles.savedNumber, 'String', string1);
    %using pemdas exponent would be 2nd so x^y is 2
    operator = '2';
    set(handles.operatorText, 'String', operator);
    set(handles.textScreen,'String','');  
end
% hObject    handle to buttonExpont (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)


% --- Executes on button press in buttonMemory.
function buttonMemory_Callback(hObject, eventdata, handles)
var on;
on = get(handles.isItOn, 'String');
if strcmpi(on,'yes')
    var string1;
    var num2;
    global C
    num2 = C;
    string1 = num2str(num2);
    set(handles.textScreen, 'String', string1);
    
    
end
% hObject    handle to buttonMemory (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)


% --- Executes on button press in buttonSin.
function buttonSin_Callback(hObject, eventdata, handles)
% hObject    handle to buttonSin (see GCBO)
var on;
on = get(handles.isItOn, 'String');
if strcmpi(on,'yes')
  
    var string1;
    var string2;
    var num1;
    var num2;
    var mode;


    string1 = get(handles.textScreen, 'String');
    num1 = str2num(string1);
    mode = get(handles.Angle, 'String') ;   
    
    var Hyp;
    Hyp = get(handles.textHyp,'String');
    if strcmpi(Hyp,'')
        var shift;
        shift = get(handles.Shift, 'String');
        if strcmpi(shift,'SHIFT')
            if strcmpi(mode,'deg')
                num2 = asind(num1);
            else
                num2 = asin(num1);
            end
            set(handles.Shift, 'String', '');

        else
            if strcmpi(mode,'deg')
                num2 = sind(num1);
            else
                num2 = sin(num1);
            end
        end
    else
         var shift;
        shift = get(handles.Shift, 'String');
        if strcmpi(shift,'SHIFT')
            if strcmpi(mode,'deg')
                var num3
                num3 = deg2rad(num1);
                num2 = asinh(num3);
            else
                num2 = asinh(num1);
            end
            set(handles.Shift, 'String', '');

        else
            if strcmpi(mode,'deg')
                var num3;
                num3 = deg2rad(num1);
                num2 = sinh(num3);
            else
                num2 = sinh(num1);
            end
        end
    end

            string2 = num2str(num2);

            set(handles.textScreen,'String',string2);
end
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)


% --- Executes on button press in buttonShift.
function buttonShift_Callback(hObject, eventdata, handles)
var on;
on = get(handles.isItOn, 'String');
if strcmpi(on,'yes')
    var shift;
    shift = get(handles.Shift,'String');
    if strcmpi(shift,'SHIFT')
        set(handles.Shift,'String','');
    else
        set(handles.Shift,'String','SHIFT');
    end
% hObject    handle to buttonShift (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)
end

% --- Executes on button press in dms.
function dms_Callback(hObject, eventdata, handles)
% hObject    handle to dms (see GCBO)
var on;
on = get(handles.isItOn, 'String');
if strcmpi(on,'yes')
    var num1;
    var numDMS;
    var String1;
    var String2;
    var StrD;
    var StrM;
    var StrS;
    var angle;
    
    String1 = get(handles.textScreen, 'String');
    num1 = str2num(String1);
    angle = get(handles.Angle, 'String');
    
    if strcmpi(angle, 'deg')
    else
        num1 = rad2deg(num1);
    end
    
    numDMS = degrees2dms(num1);
    
    StrD = num2str(numDMS(1));
    StrM = num2str(numDMS(2));
    StrS = num2str(numDMS(3));
    
    String1 = strcat(String1 ,StrD);
    String1 = strcat(String1, '° ');
    String1 = strcat(String1, StrM);
    String1 = strcat(String1, ''' ');
    String1 = strcat(String1, StrS);
    String1 = strcat(String1, '"');
    
    set(handles.textScreen,'String',String1);
end
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)


% --- Executes on button press in buttonArrow.
function buttonArrow_Callback(hObject, eventdata, handles)
var on;
on = get(handles.isItOn, 'String');
if strcmpi(on,'yes')
    var num1;
    var num2;
    var string1;
    var string2;
    var shift;
    
    string1 = get(handles.textScreen, 'String');
    num1 = str2num(string1);
    shift = get(handles.Shift,'String');
    if strcmpi(shift,'SHIFT')
        set(handles.Shift,'String','');
        num2 = (num1)^3;
        string2 = num2str(num2);
    else
        string2 = string1(1:end-1);
    end
    set(handles.textScreen, 'String', string2);
end
% hObject    handle to buttonArrow (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)
