%正态分布
figure(1)
data = randn(10000, 1);
mean_value = mean(data);      % 均值
std_deviation = std(data);    % 标准差
histogram(data, 50);  % 将数据分成20个区间，可以根据需要调整
hold on;
x = linspace(min(data), max(data), 100);  % x轴的值范围
pdf = normpdf(x, mean_value, std_deviation);  % 正态分布的概率密度函数
plot(x, pdf*numel(data) /6.5, 'r', 'LineWidth', 2);  % 绘制概率密度函数曲线，可以根据需要调整线条属性
title('正态分布');
xlabel('Value');
ylabel('Frequency');
str1={'均值=',mean_value};
str2={'方差=',std_deviation};
text(2.5,500,str1)
text(2.5,400,str2)
legend('直方图', '概率密度函数');

%指数分布
figure(2)
lambda = 2;  % 指数分布的参数
n = 10000;    % 生成随机数的数量
data = exprnd(1/lambda, n, 1);% 生成指数分布的随机数
mean_value = mean(data);      % 均值
std_deviation = std(data);    % 标准差
histogram(data, 50);  % 将数据分成20个区间，可以根据需要调整
hold on;
x = linspace(min(data), max(data), 100);  % x轴的值范围
pdf = exppdf(x, 1 / lambda);
plot(x, pdf*numel(data) /10, 'r', 'LineWidth', 2);  % 绘制概率密度函数曲线，可以根据需要调整线条属性
title('指数分布');
xlabel('Value');
ylabel('Frequency');
str1={'均值=',mean_value};
str2={'方差=',std_deviation};
text(2.5,500,str1)
text(2.5,300,str2)
legend('直方图', '概率密度函数');


%泊松分布
figure(3)
lambda = 3;  % 泊松分布的参数
n = 10000;    % 生成随机数的数量
data = poissrnd(lambda, n, 1);% 生成泊松分布的随机数
mean_value = mean(data);      % 均值
std_deviation = std(data);    % 标准差
histogram(data, 50);  % 将数据分成20个区间，可以根据需要调整
hold on;
x = linspace(min(data), max(data), 100);  % x轴的值范围
pdf = poisspdf(x, lambda);
stem(x, pdf*numel(data) , 'r', 'LineWidth', 2);  % 绘制概率密度函数曲线，可以根据需要调整线条属性
title('泊松分布');
xlabel('Value');
ylabel('Frequency');
str1={'均值=',mean_value};
str2={'方差=',std_deviation};
text(8,600,str1)
text(8,300,str2)
legend('直方图', '概率密度函数');

%伽马分布
figure(4)
alpha = 2;  % 形状参数
beta = 3;   % 尺度参数
n = 10000;   % 生成随机数的数量
data = gamrnd(alpha, beta, n, 1);% 生成伽马分布的随机数
mean_value = mean(data);      % 均值
std_deviation = std(data);    % 标准差
histogram(data, 50);  % 将数据分成20个区间，可以根据需要调整
hold on;
x = linspace(min(data), max(data), 100);  % x轴的值范围
pmf = gampdf(x, alpha, beta);
plot(x, pmf*numel(data)/1.3, 'r', 'LineWidth', 2);  % 绘制概率密度函数曲线，可以根据需要调整线条属性
title('伽马分布');
xlabel('Value');
ylabel('Frequency');
str1={'均值=',mean_value};
str2={'方差=',std_deviation};
text(15,500,str1)
text(15,400,str2)
legend('直方图', '概率密度函数');


%卡方分布
figure(5)
nu = 5;     % 自由度
n = 10000;   % 生成随机数的数量
data = chi2rnd(nu, n, 1);% 生成卡方分布的随机数
mean_value = mean(data);      % 均值
std_deviation = std(data);    % 标准差
histogram(data, 50);  % 将数据分成20个区间，可以根据需要调整
hold on;
x = linspace(min(data), max(data), 100);  % x轴的值范围
pdf = chi2pdf(x, nu);
plot(x, pdf*numel(data)/2, 'r', 'LineWidth', 2);  % 绘制概率密度函数曲线，可以根据需要调整线条属性
title('卡方分布');
xlabel('Value');
ylabel('Frequency');
str1={'均值=',mean_value};
str2={'方差=',std_deviation};
text(15,500,str1)
text(15,400,str2)
legend('直方图', '概率密度函数');

%超几何分布
figure(6)
population_size = 100;       % 总体大小
number_of_successes = 30;    % 成功次数
sample_size = 10;            % 样本大小
n = 10000;                    % 生成随机数的数量
data = hygernd(population_size, number_of_successes, sample_size, n, 1);% 生成超几何分布的随机数
mean_value = mean(data);      % 均值
std_deviation = std(data);    % 标准差
histogram(data, 50);  % 将数据分成20个区间，可以根据需要调整
hold on;
x = linspace(min(data), max(data), 100);  % x轴的值范围
pdf = hygepdf(x,population_size, number_of_successes, sample_size);
stem(x, pdf*numel(data), 'r', 'LineWidth', 2);  % 绘制概率密度函数曲线，可以根据需要调整线条属性
title('超几何分布');
xlabel('Value');
ylabel('Frequency');
str1={'均值=',mean_value};
str2={'方差=',std_deviation};
text(6,800,str1)
text(6,500,str2)
legend('直方图', '概率密度函数');

%均匀分布
figure(7)
lower_bound = 1;  % 最小值
upper_bound = 10;  % 最大值
n = 10000;  % 生成随机数的数量
data = randi([lower_bound, upper_bound], n, 1);  % 生成指定范围内的均匀分布随机整数
mean_value = mean(data);      % 均值
std_deviation = std(data);    % 标准差
histogram(data, 50);  % 将数据分成20个区间，可以根据需要调整
hold on;
x = linspace(min(data), max(data), 10);  % x轴的值范围
pdf = unifpdf(x, lower_bound, upper_bound);
stem(x, pdf*numel(data)/1.2, 'r', 'LineWidth', 2);  % 绘制概率密度函数曲线，可以根据需要调整线条属性
title('均匀分布');
xlabel('Value');
ylabel('Frequency');
str1={'均值=',mean_value};
str2={'方差=',std_deviation};
text(6,1000,str1)
text(6,800,str2)
legend('直方图', '概率密度函数');

%二项分布
figure(8)
n = 10000;               % 试验次数
p_success = 0.3;        % 成功概率
data = binornd(n, p_success, 1, n);% 生成二项分布的随机数
mean_value = mean(data);      % 均值
std_deviation = std(data);    % 标准差
histogram(data, 50);  % 将数据分成20个区间，可以根据需要调整
hold on;
x = 0:n;  % 所有可能的取值
pmf = binopdf(x, n, p_success);
plot(x, pmf*numel(data)/0.15, 'r', 'LineWidth', 2);  % 绘制概率密度函数曲线，可以根据需要调整线条属性
title('二项分布');
xlabel('Value');
ylabel('Frequency');
axis([2500,3500,0,900]);
str1={'均值=',mean_value};
str2={'方差=',std_deviation};
text(3200,500,str1)
text(3200,400,str2)
legend('直方图', '概率密度函数');






