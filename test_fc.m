%����ʱ���ܺĹ��ڷ��������������Ĺ�ϵ
delay_all=zeros(6,1);
energy_all=zeros(6,1);
for i=1:6
    FC_max=i*1e9;
    test;
    delay_all(i)=tm_all_best_sum;
    energy_all(i)=em_all_best_sum;
end
x=1:6:1;
subplot(1,2,1);
plot(delay_all,x,'r');
xlabel('����');
ylabel('ʱ��');
subplot(1,2,2);
plot(energy_all,x,'r');
xlabel('����');
ylabel('�ܺ�');
