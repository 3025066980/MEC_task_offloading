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
fun=@(PKD) ak_db*PKD/rd0_db/amk_db*(exp(-rd0_db*N0_dbm*1e-3/PKD/ak_db)/(1-p0)-1)-PMC_max;
PMC_max_PKD_max=fun(PKD_max)+PMC_max;
PKD_max_PMC_max=bisect1(fun,0,PKD_max,0.005);
PMC_best=min(PMC_max_PKD_max,PMC_max);
PKD_best=min(PKD_max_PMC_max,PKD_max);