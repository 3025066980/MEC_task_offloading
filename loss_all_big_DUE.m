function [ all_loss,big_loss] = loss_all_big_DUE( v,x )
%all_loss DUE�ն�С�߶ȼӴ�߶ȵ����
%LOS in winner +B1
%big_loss ��߶�˥��
% v DUEƽ������
% x ��Ӱ˥����̬�ֲ�����
% d ���� m
% time ����֮��ʱ������� s
time=2.5;
d=v/3.6*time;
h_ms=1.5;
fc=2e9;
path_loss = 40*log10(d)+9.45-17.3*log10(h_ms-1)-17.3*log10(h_ms-1)+2.7*log10(fc/5.0);
shadown_loss=normrnd(0,x);
big_loss=shadown_loss-path_loss;
relay_loss=normrnd(0,1)+normrnd(0,1)*1i;
relay_loss_number=abs(relay_loss/sqrt(2));
relay_loss_db=20*log10(relay_loss_number);
all_loss=big_loss+relay_loss_db;

end

