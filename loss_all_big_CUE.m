function [ all_loss,big_loss] = loss_all_big_CUE( d,x )
%all_loss CUE�ն�С�߶ȼӴ�߶ȵ����
%big_loss ��߶�˥��
% d ����
% x ��Ӱ˥����̬�ֲ�����
path_loss = 128.1+37.6*log10(d*1e-3);
shadown_loss=normrnd(0,x);
big_loss=path_loss-shadown_loss;
relay_loss=normrnd(0,1)+normrnd(0,1)*i;
relay_loss_number=abs(relay_loss/sqrt(2));
relay_loss_db=20*log10(relay_loss_number);
all_loss=big_loss+relay_loss_db;

end

