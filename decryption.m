%decryption 
%please note that i saved nitail givens because of the constrains due to
%the speed of itiration and the simplicity 
%now we converted the sentence into numbers===============================
% and get tha basic values
numbers=[0 1 2 3 4 5 6 7 8 9 10 11 12 13 14 15 16 17 18 19 20 21 22 23 24 25];
letters = ['a' 'b','c','d','e','f','g','h','i','j','k','l', 'm','n','o','p','q' 'r','s','t', 'u','v','w','x','y','z'];
s_num = [];
send=input('enter a word to be decrypted :');
%p = input('enter the p of your cryptography :');
%q = input('enter the q of your cryptography :'); 
p=2;
q=13;
x=char(send);
for i= 1:length(x)
    for j = 1 : length(letters)
        if x(i) == letters(j);
            s_num = [s_num  numbers(j)] ;
        end
    end
end
%now we try to get the key  =======================
n= q * p ;
phi = (p-1) * (q-1) ;
snum=[];
e=0;
for  i = 2:phi-1
    snum=[snum i];
end
for i=1:length(snum)
    if (rem(n,snum(i))~=0 & rem(n,snum(i))~=0)
        e=snum(i);
    end
end
y=phi+2;
d=6;
u=0;
while (u==0)
            d=d+1 ;
    if (rem(d*e,phi)==1)
        u=1;
    end
end
d=5;
n=26;
en_num=[];
for i = 1:length(s_num)
    a = rem(s_num(i)^d,n);
    en_num = [en_num a];
end
en_let=[];
% convert the  encrypted numbers into text
for i= 1:length(en_num)
    for j = 1 : length(numbers)
        if en_num(i) == numbers(j);
            en_let = [en_let  letters(j)] ;
        end
    end
end
disp(en_let)


