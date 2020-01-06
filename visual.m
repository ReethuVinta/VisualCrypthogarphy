function [S1, S2, S] = visual(I)

%NOTE:image must be of binary form
dim=size(I); %dimension of image 

%Each pixel/element in matrix is made into 2*2 matrix therefore the number
%of rows and columns in S1,S2 will get doubled
S1=zeros((2 * dim(1)),(2 * dim(2))); %initialising each element in each S1 to 0
S2=zeros((2 * dim(1)),(2 * dim(2))); %initialising each element in each S2 to 0
S=zeros((2 * dim(1)),(2 * dim(2))); %initialising each element in each S to 0

%setting the shares of white pixels
[a b]=find(I==0); %find the indices of elements whose value is 0
len=length(a); %number of elements whose value is 0

p1=[1 0;1 0]; %matriix for representing '0' value
p2=[1 0;1 0]; %matriix for representing '0' value

for i=1:len
    x=a(i); %row indice
    y=b(i); %column indice
    [share_result1 share_result2]=share(p1,p2); %calling the function share which creates individual shares
    S1((2*x-1):(2*x),(2*y-1):(2*y))=share_result1; %inserting it into S1
    S2((2*x-1):(2*x),(2*y-1):(2*y))=share_result2; %inserting it into S2
end

[a b]=find(I==1); %find the indices of elements whose value is 1
len=length(a); %number of elements whose value is 1

p1=[1 0;1 0]; %matriix for representing '1' value
p2=[0 1;0 1]; %matriix for representing '1' value

for i=1:len
    x=a(i); %row indice
    y=b(i); %column indice
    [share_result1 share_result2]=share(p1,p2); %calling the function share which creates individual shares
    S1((2*x-1):(2*x),(2*y-1):(2*y))=share_result1; %inserting it into S1
    S2((2*x-1):(2*x),(2*y-1):(2*y))=share_result2; %inserting it into S2
end

S=xor(S1,S2); %bitor opertaion of each share will reveal the secret message
disp('Completed');