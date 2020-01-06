function [share1 share2]=share(p1,p2)


share1=zeros(size(p1)); %setting output elemnt values to 0
share2=zeros(size(p2)); %setting output elemnt values to 0

random=floor(1.5*rand(1));%randomly generaating number and taking it's floor value whose value will always be either 0 or 1

if (random==0)%if randomly generated number is '0' then share1,share2 are same as p1 and p2
    share1=p1;
    share2=p2;
elseif(random==1)%if randomly generated number is '1' then share1,share2 are bit wise compliment of p1 and p2
    share1=~p1;
    share2=~p2;
end