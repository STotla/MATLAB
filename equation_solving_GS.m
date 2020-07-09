a=[ 4 1 -1;2 7 1;1 -3 12];
b= [3;19;31];
n=length(a);
[x,isSolution]=gaussseidel(a,b);
 for i=1:n
     disp(['x',num2str(i),' = ',num2str(x(i))]);
 end
         
         

