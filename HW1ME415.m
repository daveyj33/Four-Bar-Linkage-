%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%
%               FOUR BAR LINKAGE
%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%
clc; clear;
%Link Lengths
a=2;b=7;c=9;d=6;
%1DOF Joint rotation angle
t2=.52359;
%
ax=a*cos(t2);
ay=a*sin(t2);

s=(((a.^2)-(b.^2)+(c.^2)-(d.^2))/(2*(ax-d)));
p=((ay.^2)/((ax-d).^2))+1;
q=(2*ay*(d-s))/(ax-d);
r=((d-s).^2)-c.^2;

by1=(-q+(sqrt(q.^2-4*p*r)))/(2*p);
by2=(-q-(sqrt(q.^2-4*p*r)))/(2*p);
bx1=((a.^2-b.^2+c.^2-d.^2)/(2*(ax-d)))-(2*ay*by1/(2*(ax-d)));
bx2=((a.^2-b.^2+c.^2-d.^2)/(2*(ax-d)))-(2*ay*by2/(2*(ax-d)));

%Theta3 
t31= atan2((by1-ay),(bx1-ax));
t32= atan2((by2-ay),(bx2-ax));
%Converted from radians to degrees
t31=t31*(180/3.14)
t32=t32*(180/3.14);
t32=360+t32
%Theata4
t41=atan2(by1,(bx1-d));
t42=atan2(by2,(bx2-d));
%Converted from radians to degrees
t41=t41*(180/3.14)
t42=t42*(180/3.14);
t42=360+t42
