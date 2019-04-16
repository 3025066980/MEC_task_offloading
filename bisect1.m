function [x,k]=bisect1(f,a,b,eps)
%�����ȼ����˴ﵽ��ȷֵ��Ҫ�ߵĲ���������forѭ�����x
%kmax=1+floor((log(b-a)-log(eps))/log(2)) KmaxΪ�ﵽ���뾫��Ҫ�ߵĲ��������Ϲ�ʽ
%fΪ��������[a,b]Ϊ��ʼ���䣬epsΪ���ȣ���Ĭ��ֵ
if nargin<4   
    eps=1e-5; %eps��Ĭ��ֵ
end
fa=feval(f,a);
fb=feval(f,b);
if fa*fb>0
    disp('[a,b]�����и�����!')
end
kmax=1+floor((log(b-a)-log(eps))/log(2)); 
for k=1:kmax
    x=(a+b)/2;
    fx=feval(f,x);
    if    fx*fa<0
          b=x;
          fb=fx;
    elseif  fx*fa>0
          a=x;
          fa=fx;
    else
        a=x;
        b=x;
        break;
    end
end
%����forѭ���ײ����һ��������жϣ�����᲻һ��
%if(b-a)/2<eps
%        break;
%end
%x=(a+b)/2;
%������Ϊ���ж������Ƿ���Ͼ��ȱ�׼������������x
