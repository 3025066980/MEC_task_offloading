B=20e6;%�ܴ���20Mhz
M=20;%CUE��Ŀ
K=20;%DUE��Ŀ
%dmb=30+20*rand(M,1);%CUE���վ֮��ľ��� ��30��50��m
%dmk=10+20*rand(M,1);%CUE��DUE֮��ľ��루10,30��m
FM=(1+9*rand(M,1)).*1e8;%����cpu����Ƶ�ʣ�0.1-1��Ghz
CM=500+1000*rand(M,1);%һ��bit��Ҫ��cpu������(500,1500)cycles/bit
DM=(100+400*rand(M,1)).*1e3;%ÿ��CUE�û���������(100,500)KB
DK=DM;%ÿ��DUE�û���������(100,500)KB
FC_max=6e9;%��վ�ܵļ�����������
HM=-50+20*rand(M,1);%�ŵ�����,(-50,-30)dbm
FCM=1e11/M;%ÿ��CUE�û�����ļ������ʣ�100G/M��
PML=1e-8;%CUE���غ��ܹ���
PM=0.1;%CUE��ʼ���书������ 0.1w
PKD_max_dbm=23;%DUE����书��
PMC_max_dbm=23;%CUE����书��
%PKD_max=power(10,PKD_max_dbm/10)/1000;
%PMC_max=power(10,PMC_max_dbm/10)/1000;
N0_dbm=-114;%�����������ܶȣ�dbm
rd0_db=5;%rd0 DUE�ն˵�SINR����ֵΪ5db
%a,b�ܺĺ�ʱ�ӵ�Ȩ��
a=0.5;
b=0.5;
% p0 DUE֮��ɿ��Ը���
%p0=0.001;
