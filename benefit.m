%����Ч�溯��

%CUE�ŵ��ϴ�����
RMV_mat=B/M.*log2(1+rmc_mat);
%DUE�ŵ��ϴ�����
RKV_mat=B/M.*log2(1+rkd_mat);
%CUE����ʱ��
tm_loc_mat=DM.*CM./FM;
%CUEÿ���������ʱ��
tm_max_mat=tm_loc_mat;
%DUE��������ϴ�ʱ��
tk_max_mat=tm_loc_mat;
%CUE�ϴ�ʱ�Ӿ���
tm_up_mat=zeros(M,K);
for i=1:M
  tm_up_mat(i,:)=DM(i)./RMV_mat(i,:);
end
%DUE�ϴ�ʱ�Ӿ���
tk_up_mat=zeros(M,K);
for i=1:M
  tk_up_mat(i,:)=DK(i)./RKV_mat(i,:);
end
%CUE����������ʱ��
tm_c_mat=DM.*CM./FCM;
%CUEж����ʱ�Ӿ���
tm_off_mat=zeros(M,K);
for i=1:M
  tm_off_mat(i,:)=tm_up_mat(i,:)+tm_c_mat(i);
end
%CUE�����ܺ�
em_loc_mat=PML.*DM.*CM;
%CUEǨ���ܺ�
em_off_mat=zeros(M,K);
for i=1:M
  em_off_mat(i,:)=power(10,PMC_best_dbm(i)/10).*1e-3.*DM(i)./RMV_mat(i,:);
end
%Ч�溯��
profit_mat=zeros(M,K);
for i=1:M
  profit_mat(i,:)=a.*(tm_loc_mat(i)-tm_off_mat(i,:))./tm_loc_mat(i)+b.*(em_loc_mat(i)-em_off_mat(i,:))./tm_loc_mat(i);
end







