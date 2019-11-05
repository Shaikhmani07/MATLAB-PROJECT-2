function wordrecognizer(filename)
%Word Recognition Using Correlation Method
%Write Following Command On Command Window with desier file name insted of file name
%Speechrecognizer('test.wav')
voice=audioread(filename);
x=voice;         %voice variable to x variable%
x=x';            %Convert two coloum to row%
x=x(1,:);        %Convert two row and many coloum to one row & many coloum%
x=x'; %convert one row & many coloum to one coloum & many row%
L=length(x);
t=-((L-1)/2):1:((L-1)/2);
t=t';
subplot(6,1,1);
plot(t,x);
y1=audioread('aalif.wav');
y1=y1';
y1=y1(1,:);
y1=y1';
z1=xcorr(x,y1);
m1=max(z1); %Save Max Amplitude of sequence in m1%
l1=length(z1);
t1=-((l1-1)/2):1:((l1-1)/2);
t1=t1';
subplot(6,1,2);
plot(t1,z1);
y2=audioread('baa.wav');
y2=y2';
y2=y2(1,:);
y2=y2';
z2=xcorr(x,y2);
m2=max(z2);
l2=length(z2);
t2=-((l2-1)/2):1:((l2-1)/2);
t2=t2';
subplot(6,1,3);
plot(t2,z2);
y3=audioread('bee.wav');
y3=y3';
y3=y3(1,:);
y3=y3';
z3=xcorr(x,y3);
m3=max(z3);
l3=length(z3);
t3=-((l3-1)/2):1:((l3-1)/2);
t3=t3';
subplot(6,1,4);
plot(t3,z3);
y4=audioread('dsp.wav');
y4=y4';
y4=y4(1,:);
y4=y4';
z4=xcorr(x,y4);
m4=max(z4);
l4=length(z4);
t4=-((l4-1)/2):1:((l4-1)/2);
t4=t4';
subplot(6,1,5);
plot(t4,z4);
y5=audioread('dsp1.wav');
y5=y5';
y5=y5(1,:);
y5=y5';
z5=xcorr(x,y5);
m5=max(z5);
l5=length(z5);
t5=-((l5-1)/2):1:((l5-1)/2);
t5=t5';
subplot(6,1,6);
plot(t5,z5);
Amp=[m1 m2 m3 m4 m5];
m=max(Amp);
h=audioread('allow.wav.');
L=length(h);
if m<=m1
    soundsc(audioread('aalif.wav'),12*L)
        soundsc(h,2*L)
elseif m<=m2
    soundsc(audioread('baa.wav'),10*L)
        soundsc(h,2*L)
elseif m<=m3 
    soundsc(audioread('honey.wav'),11*L)
        soundsc(h,2*L)
elseif m<=m4
    soundsc(audioread('dsp.wav'),7*L)
        soundsc(h,2*L)
elseif m<=m5
    soundsc(audioread('dsp1.wav'),9*L)
        soundsc(h,2*L)        
else
   soundsc(audioread('denied.wav'),2*L)
   
end
