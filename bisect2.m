
function [x,k]=bisect2(f,a,b,eps)
%��whileѭ���ҳ����Ͼ��ȵ�����
%whileѭ�������ڵ�ѭ��������ȷ��ʱ
if nargin<4
    eps=1e-5;
end
fa=feval(f,a);
fb=feval(f,b);
if fa*fb>0
   x=[fa,fb];k=0;
   return;
end
k=1;
while abs(b-a)/2>eps
    x=(a+b)/2;
    fx=feval(f,x);
    if fa*fx<0
        b=x;
        fb=fx;
    else
        a=x;
        fa=fx;
    end
    k=k+1;
end
x=(a+b)/2;