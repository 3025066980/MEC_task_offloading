%�����ŷ��书��
%PMC��PKD֮��Ĺ�ϵ
% PMC m��CUE�ķ��书��
% PKD k��DUE�ķ��书�� 
%N0��������
%rd0 ����v2v֮�䴫�����С����
%ak_db v2v֮��Ĵ�߶�˥��
%amk_db ��m DUE���k CUE֮��Ĵ�߶�˥��
%PMC m ��CUE�ķ��书��
%PKD k ��DUE�ķ��书��
%p0 DUE�Ŀɿ���֤����

%·�����
[all_loss_m_db,ak_db]=loss_all_big_DUE(100,3); 
[all_loss_k_db,~]=loss_all_big_DUE(20,3);
ak_db_arr=-40*rand(M,1);
amk_db_arr=-80*rand(M,1);
%ak=power(10,ak_db/10);
%amk=power(10,amk_db/10);
%ʹ��db��λ����
%fun=@(PKD) ak_db*PKD/rd0_db/amk_db*(exp(-rd0_db*N0_dbm*1e-3/PKD/ak_db)/(1-p0)-1)-PMC_max_dbm*1e-3;
%ת��Ϊ������λ
% fun=@(PKD) power(10,ak_db/10)*power(10,PKD/10)*1e-3/power(10,rd0_db/10)/power(10,amk_db/10)*...
%     (exp(-power(10,rd0_db/10)*power(10,N0_dbm/10)*1e-3/power(10,PKD/10)*1e-3/...
%     power(10,ak_db/10))/(1-p0)-1)-power(10,PMC_max_dbm/10)*1e-3;
%�м���ʹ��dbm��λ
% fun=@(PKD) 10*log10((power(10,ak_db/10)*power(10,PKD/10)*1e-3/power(10,rd0_db/10)/power(10,amk_db/10)*...
%     (exp(-power(10,rd0_db/10)*power(10,N0_dbm/10)*1e-3/power(10,PKD/10)*1e-3/...
%     power(10,ak_db/10))/(1-p0)-1))*1e3)-PMC_max_dbm;
% %dbm��λ
% PMC_max_PKD_max=fun(PKD_max_dbm)+PMC_max_dbm;
% %dbm��λ
% PKD_max_PMC_max=bisect1(fun,0,30,0.0005);
% %dbm��ʾ���
% PMC_best_dbm=min(PMC_max_PKD_max,PMC_max_dbm);
% PKD_best_dbm=min(PKD_max_PMC_max,PKD_max_dbm);
PMC_max_PKD_max=zeros(M,1);
PKD_max_PMC_max=zeros(M,1);
PMC_best_dbm=zeros(M,1);
PKD_best_dbm=zeros(M,1);
for i=1:M
    %dbm��λ
    ak_db=ak_db_arr(i);
    amk_db=amk_db_arr(i);
    fun=@(PKD) 10*log10((power(10,ak_db/10)*power(10,PKD/10)*1e-3/power(10,rd0_db/10)/power(10,amk_db/10)*...
    (exp(-power(10,rd0_db/10)*power(10,N0_dbm/10)/power(10,PKD/10)/...
    power(10,ak_db/10))/(1-p0)-1))*1e3)-PMC_max_dbm;
    PMC_max_PKD_max(i)=fun(PKD_max_dbm)+PMC_max_dbm;
    %dbm��λ
    PKD_max_PMC_max(i)=bisect1(fun,0,30,0.0005);
    %dbm��ʾ���
    PMC_best_dbm(i)=min(PMC_max_PKD_max(i),PMC_max_dbm);
    PKD_best_dbm(i)=min(PKD_max_PMC_max(i),PKD_max_dbm);
end
%����
% a=17;
% b=23;
% PMC_best_dbm = a + (b-a).*rand(M,1);
% PKD_best_dbm=a + (b-a).*rand(M,1);

