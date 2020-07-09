function [x,isSolution] = gaussseidel(a,b)
isdom = true;
n=length(a);
ab=[a,b];
flag=0;
while flag==0;
    shuf= randperm(n);
    ret = ab(shuf, :);
    isdom = true;
    for i=1:n
    rowdom = 2 * abs(ret(i,i)) > sum(abs(ret(i,1:end-1)));
    isdom = isdom && rowdom;
    end
      if isdom==1
          flag=1;
      end 
      as=ret;
end
isSolution=false;
x=zeros(n,1);
err=zeros(n,1);
atol=0.0001;
for i=1:400
    for k=1:n
        xold=x(k);
        num= as(k,end)-(as(k,1:k-1)*x(1:k-1)+ as(k,k+1:n)*x(k+1:n)); 
        x(k)=num/as(k,k);
        err=abs(x(k)-xold);
    end
    if max(err)<atol
       isSolution= true;
       break
    end 
end
    
    