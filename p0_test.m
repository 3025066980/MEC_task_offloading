%ʱ���ܺĹ���p0�Ĺ�ϵ

p0_arr=[0.001:0.001:0.02]';
len=length(p0_arr);
tm_all_best_sum_arr=zeros(len,1);
em_all_best_sum_arr=zeros(len,1);
%��ʼ��
init;
for i=1:len
    p0=p0_arr(i);
    %�������ŷ��书��
    pbest;
    %��������Ⱦ���
    SINR;
    %����Ч�����
    benefit;
    %KM�㷨���������ŵ�����ģʽ
    best_profit;
    %��ⱳ�������������ж�ز���
    package;
    %x����ж�ز���
    %PMC_best_dbm CUE�û����ŷ��书��
    %PKD_best_dbm CUE�û����ŷ��书��
    %match �����ŵ�����ģʽ
    %tm_all_best���ʱ��
    %em_all_best����ܺ�
    %tm_all_best_sum��ʱ��
    %em_all_best_sum���ܺ�
    tm_all_best_sum_arr(i)=tm_all_best_sum;
    em_all_best_sum_arr(i)=em_all_best_sum;
end
plot(p0_arr,tm_all_best_sum_arr,'r');
plot(p0_arr,em_all_best_sum_arr,'r');
xlabel('p0');
ylabel('all delay');
grid on;