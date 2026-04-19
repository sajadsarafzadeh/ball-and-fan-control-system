clear;
clc;
close all;
kc=1:5;
ki=1:5;
kd=1:5;

%PI
figure(1);
for i=1:3
TF=tf([9.66*kc(1) 9.66*ki(i)],[1 9.66 9.66*kc(1) 9.66*ki(i)]);

step(TF)

hold on
end
legend('kc=1 and ki=1','kc=1 and ki=2','kc=1 and ki=3','kc=1 and ki=1')


figure(2);
for j=1:3
TF=tf([9.66*kc(j) 9.66*ki(1)],[1 9.66 9.66*kc(j) 9.66*ki(1)]);

step(TF)
hold on
end
legend('ki=1 and kc=1','ki=1 and kc=2','ki=1 and kc=3')

%PID
figure(3);
for k=1:3
TF=tf([9.66*kd(k) 9.66*kc(1) 9.66*ki(1)],[1 9.66*kd(k)+9.66 9.66*kc(1) 9.66*ki(1)]);

step(TF)
hold on
end
legend('ki=1 and kc=1 and kd=1','ki=1 and kc=1 and kd=2','ki=1 and kc=1 and kd=3')


figure(4);
for k=1:3
TF=tf([9.66*kd(1) 9.66*kc(k) 9.66*ki(1)],[1 9.66*kd(1)+9.66 9.66*kc(k) 9.66*ki(1)]);

step(TF)
hold on
end
legend('ki=1 and kc=1 and kd=1','ki=1 and kc=2 and kd=1','ki=1 and kc=3 and kd=1')


figure(5);
for k=1:3
TF=tf([9.66*kd(1) 9.66*kc(1) 9.66*ki(k)],[1 9.66*kd(1)+9.66 9.66*kc(1) 9.66*ki(k)]);

step(TF)
hold on
end
legend('ki=1 and kc=1 and kd=1','ki=2 and kc=1 and kd=1','ki=3 and kc=1 and kd=1')


%PD
figure(6);
for i=1:3
TF=tf([9.66*kd(i) 9.66*kc(1)],[1 9.66+kd(i)+9.66 9.66*kc(1)]);

step(TF)

hold on
end
legend('kc=1 and kd=1','kc=1 and kd=2','kc=1 and kd=3')


figure(7);
for i=1:3
TF=tf([9.66*kd(1) 9.66*kc(i)],[1 9.66+kd(1)+9.66 9.66*kc(i)]);

step(TF)

hold on
end
legend('kc=1 and kd=1','kc=2 and kd=1','kc=3 and kd=1')


%P
figure(8);
for i=1:3
TF=tf([9.66*kc(i)],[1 9.66 9.66*kc(i)]);

step(TF)

hold on
end
legend('kc=1','kc=2','kc=3')



