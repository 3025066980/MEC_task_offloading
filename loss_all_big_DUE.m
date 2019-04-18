function [ all_loss,big_loss] = loss_all_big_DUE( v,x )
%all_loss DUE�ն�С�߶ȼӴ�߶ȵ����
%big_loss ��߶�˥��
% v DUEƽ������
% x ��Ӱ˥����̬�ֲ�����
% d ���� m
% time ����֮��ʱ������� s
time=2.5;
d=v/3.6*time;
path_loss = 128.1+37.6*log10(d*1e-3);
shadown_loss=normrnd(0,x);
big_loss=path_loss+shadown_loss;
relay_loss=normrnd(0,1)+normrnd(0,1)*1i;
relay_loss_number=abs(relay_loss/sqrt(2));
relay_loss_db=20*log10(relay_loss_number);
all_loss=big_loss+relay_loss_db;

end

