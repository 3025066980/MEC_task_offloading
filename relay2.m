clear all
close all
clc
%-----------------------------�������˲���
Fs=9600;            %����Ƶ��
Ts=1/Fs;            %�������
Fd=960;              %DopplerƵƫ����HzΪ��λ
tau=[0,0.002];          %�ྶ��ʱ����sΪ��λ
pdf=[0,0];          %�������ʣ���dBλ��λ
chan=rayleighchan(Ts,Fd,tau,pdf);
%-------------------------------ͨ���ŵ�
t=0:1/Fs:999*(1/Fs);
fc=96;
data=cos(2*pi*fc*t); %����2 
y = filter(chan,data);%�����ŵ�������
plot(t,abs(y),'r',t,data,'c')