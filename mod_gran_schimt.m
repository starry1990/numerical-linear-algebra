function [ q,R ] = mod_gran_schimt( A )
%Simple algorithm for Modified Gran schimt that better than
%classical modified Gran schimt
%Input matrix A, output the q matrix of 
%QR decomposition


[m,n]=size(A);
q=zeros(m,n);

for i=1:n
    
c=A(:,i);

r=c;

for j=1:i-1
    % the only difference with classical gran_schimt
    % process is that the innter loop have r loop in every
    % time
    R(j,i)=dot(q(:,j),r);
    r=r-dot(q(:,j),r)*q(:,j);
    
end

q(:,i)=r/norm(r);
   R(i,i)=norm(r);
    
end

end




