clc;
clear all;

m=input('enter m-ary ');
x=randint(1,1000,m);
res=pammod(x,m);
inp=[1 .05 .03 .01];
res=filter(inp,1,res);
res=awgn(res,20);
eyediagram(res,2);