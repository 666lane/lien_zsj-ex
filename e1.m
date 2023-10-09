%1、	使用MATLAB产生一些基本信号，绘制信号波形
%%连续信号%%

%单位脉冲信号
figure(1)
n0=0;
n=zeros(19);
x = (n-n0)==0;
stem(n,x,'.','LineWidth',1); 
text(0.8,1.2,'X(t)=\delta(t)')
axis([-19,19,-0.5, 1.5]);
title('单位脉冲序列')

%单位阶跃信号
figure(2)
t = -2:0.01:2;
t0 = 0;%规定阶跃点
ut =stepfun(t, t0);%产生阶跃信号
plot(t,ut,'LineWidth',2);%展示
text(0.8,1.2,'X(t)=U(t)')
axis([-3,3,0, 2]);
title('单位阶跃信号');

%抽样信号
figure(3)
t = -21*pi:0.01:21*pi;
sa= sinc(t);%生成sa（t）函数
plot(t,sa);
text(1,1,'X(t)=Sa(t)')
axis([-5,5,-1, 1.5]);%展示框范围
title('抽样信号Sa(t)')

%指数信号f(t)=exp(t)
figure(4)
t = -1:0.001:4; %-1<t<4
ft= exp(t); %指数函数的模型
plot(t,ft);  
text(2,20,'X(t)=exp(t)')
axis([-1,5,-1, 100]);
title('指数信号')

%衰减指数信号f(t)=4*exp(-t)
figure(5)
A = 4;          %幅度为4，
a = -1;       %衰减因子为-1，
t = -1:0.001:4; %-1<t<4
ft= A * exp(a*t); %指数函数的模型
plot(t,ft);  
text(2,2,'X(t)=4*exp(-t)')
axis([-1,5,-1, 10]);
title('衰减指数信号')

%正弦信号
figure(6)
t = -2*pi:0.02:2*pi; %t的取值范围和取样间隔
plot(t,sin(t),'r',t,sin(4*t),'b','LineWidth',2)
axis([-8,8,-1.5, 1.5]);
text(-6,1.2,'X(t)=sin(t)')
text(6,0.5,'X(t)=sin(4*t)')
title('正弦类信号')%标题

%矩阵脉冲信号
figure(7)
t=-6:0.01:6;%
xt = rectpuls(t, 3);%产生脉宽为3的矩形波
plot(t,xt,'LineWidth',2);
title('矩形脉冲信号')
axis([-10,10,0, 2.5]);%限定展示框大小

%周期方波信号
figure(8)
t=-0:0.01:10;%
w0=2*pi/3;%周期为3
xt= square(w0*t, 50);%占空比为37%
plot(t,xt);
title('周期方波信号')
axis([0,10,-1, 2]);%限定展示框大小

% 白噪声信号
figure(9)
Fs = 1000; % 采样率（每秒采样点数）
T = 1; % 信号总时长（秒）
t = 0:(1/Fs):T-(1/Fs); % 时间向量
white_noise = randn(size(t));% 使用randn函数生成白噪声信号
plot(t, white_noise);
title('白噪声信号');
xlabel('时间（秒）');
ylabel('幅度');

%三角波信号
figure(10)
Fs = 1000; % 采样率（每秒采样点数）
T = 1; % 信号总时长（秒）
t = 0:(1/Fs):T-(1/Fs); % 时间向量
frequency = 2; % 三角波的频率（Hz）
triangular_wave = sawtooth(2 * pi * frequency * t, 0.5);% 使用sawtooth函数生成三角波信号
plot(t, triangular_wave);
title('三角波信号');
xlabel('时间（秒）');
ylabel('幅度');

%锯齿波
figure(11)
Fs = 1000; % 采样率（每秒采样点数）
T = 100; % 信号总时长（秒）
t = 0:(1/Fs):T-(1/Fs); % 时间向量
frequency = 1; % 锯齿波的频率（Hz）
sawtooth_wave = sawtooth(2 * pi * frequency * t);% 使用sawtooth函数生成锯齿波信号
plot(t, sawtooth_wave);
axis([0,10,-1, 2]);%限定展示框大小
title('锯齿波信号');
xlabel('时间（秒）');
ylabel('幅度');

%高斯信号
figure(12)
Fs = 1000; % 采样率（每秒采样点数）
T = 10; % 信号总时长（秒）
t = -T+(1/Fs):(1/Fs):T-(1/Fs); % 时间向量
mu = 0; % 均值
sigma = 0.2; % 标准差
gaussian_signal = normpdf(t, mu, sigma);% 使用正态分布创建高斯信号
plot(t, gaussian_signal);
axis([-2,2,-1, 2.5]);%限定展示框大小
title('高斯信号');
xlabel('时间（秒）');
ylabel('幅度');

%%离散信号%%

%离散单位阶跃函数
figure(13)
n = 0:50; % 离散时间范围
unit_step_signal = ones(size(n));
stem(n, unit_step_signal);
axis([-50,50,-1, 2]);%限定展示框大小
title('离散单位阶跃信号');
xlabel('离散时间');
ylabel('幅度');
grid on; % 显示网格

%离散抽样信号
figure(14)
t = -21*pi:0.1:21*pi;
sa= sinc(t);%生成sa（t）函数
stem(t,sa);
text(1,1,'X(n)=Sa(n)')
axis([-5,5,-1, 1.5]);%展示框范围
title('离散抽样信号Sa(t)')


%离散指数信号
figure(15)
t = -1:0.1:4; %-1<t<4
ft= exp(t); %指数函数的模型
stem(t,ft);  
text(2,20,'X(n)=exp(n)')
axis([-1,5,-1, 100]);
title('离散指数信号')

%离散衰减指数信号
figure(16)
A = 4;          %幅度为4，
a = -1;       %衰减因子为-1，
t = -1:0.1:4; %-1<t<4
ft= A * exp(a*t); %指数函数的模型
stem(t,ft);  
text(2,2,'X(n)=4*exp(-n)')
axis([-1,5,-1, 10]);
title('离散衰减指数信号')

%离散正弦信号
figure(17)
t = -2*pi:0.2:2*pi; %t的取值范围和取样间隔
stem(t,sin(t))
axis([-8,8,-1.5, 1.5]);
text(-6,1.2,'X(n)=sin(n)')
title('离散正弦类信号')%标题

%离散矩阵脉冲信号
figure(18)
t=-6:0.5:6;%
xt = rectpuls(t, 3);%产生脉宽为3的矩形波
stem(t,xt,'LineWidth',2);
title('离散矩形脉冲信号')
axis([-10,10,0, 2.5]);%限定展示框大小

%离散周期方波信号
figure(19)
t=-0:0.1:10;%
w0=2*pi/3;%周期为3
xt= square(w0*t, 50);%占空比为37%
stem(t,xt);
title('离散周期方波信号')
axis([0,10,-1, 2]);%限定展示框大小



%离散三角波信号
figure(20)
Fs = 100; % 采样率（每秒采样点数）
T = 1; % 信号总时长（秒）
t = 0:(1/Fs):T-(1/Fs); % 时间向量
frequency = 2; % 三角波的频率（Hz）
triangular_wave = sawtooth(2 * pi * frequency * t, 0.5);% 使用sawtooth函数生成三角波信号
stem(t, triangular_wave);
title('离散三角波信号');
xlabel('时间（秒）');
ylabel('幅度');

%离散锯齿波
figure(21)
Fs = 10; % 采样率（每秒采样点数）
T = 100; % 信号总时长（秒）
t = 0:(1/Fs):T-(1/Fs); % 时间向量
frequency = 1; % 锯齿波的频率（Hz）
sawtooth_wave = sawtooth(2 * pi * frequency * t);% 使用sawtooth函数生成锯齿波信号
stem(t, sawtooth_wave);
axis([0,10,-1, 2]);%限定展示框大小
title('离散锯齿波信号');
xlabel('时间（秒）');
ylabel('幅度');

%离散高斯信号
figure(22)
Fs = 100; % 采样率（每秒采样点数）
T = 10; % 信号总时长（秒）
t = -T+(1/Fs):(1/Fs):T-(1/Fs); % 时间向量
mu = 0; % 均值
sigma = 0.2; % 标准差
gaussian_signal = normpdf(t, mu, sigma);% 使用正态分布创建高斯信号
stem(t, gaussian_signal);
axis([-2,2,-1, 2.5]);%限定展示框大小
title('离散高斯信号');
xlabel('时间（秒）');
ylabel('幅度');


% 阻尼正弦信号
figure(23)
Fs = 1000; % 采样率（每秒采样点数）
T = 10; % 信号总时长（秒）
t = 0:(1/Fs):T-(1/Fs); % 时间向量
frequency = 5; % 正弦波的频率（Hz）
amplitude = 1; % 正弦波的幅度
damping_factor = 0.2; % 阻尼因子
damped_sine_signal = amplitude * exp(-damping_factor * t) .* sin(2 * pi * frequency * t);% 生成阻尼正弦波信号
plot(t, damped_sine_signal);
title('阻尼正弦信号');
xlabel('时间（秒）');
ylabel('幅度');
