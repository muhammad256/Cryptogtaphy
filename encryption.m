% for encryption
clear;
clc;
%now we converted the sentence into numbers===============================
% and get tha basic values for crypto
e= 5;
n=26;
numbers=[0 1 2 3 4 5 6 7 8 9 10 11 12 13 14 15 16 17 18 19 20 21 22 23 24 25];
letters = ['a' 'b','c','d','e','f','g','h','i','j','k','l', 'm','n','o','p','q' 'r','s','t', 'u','v','w','x','y','z'];
s_num = [];
send=input('enter a word to be encrypted :');
x=char(send);
for i= 1:length(x)
    for j = 1 : length(letters)
        if x(i) == letters(j);
            s_num = [s_num  numbers(j)] ;
        end
    end
end
en_num=[];
a=0;
for i = 1:length(s_num)
    a= rem(s_num(i)^e,n);
    en_num = [en_num a];
end
en_num=rem(en_num,25);
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
