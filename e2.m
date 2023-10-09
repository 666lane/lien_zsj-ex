%2、	熟悉随机变量几种常见分布的概率密度函数和分布函数曲线，改变分布参数，观察曲线变化

%1、正态分布
figure(1)
mu = [0, 2, -2]; % 均值
sigma = [1, 0.5, 2]; % 标准差
x = linspace(-5, 5, 1000); % x范围
subplot(2, 1, 1);
hold on;
for i = 1:3
    pdf = normpdf(x, mu(i), sigma(i));
    plot(x, pdf, 'LineWidth', 2, 'DisplayName', sprintf('mu = %g, sigma = %g', mu(i), sigma(i)));
end
title('正态分布概率密度函数');
xlabel('随机变量值');
ylabel('概率密度');
legend;
grid on;
hold off;
% 绘制分布函数（CDF）
subplot(2, 1, 2);
hold on;
for i = 1:3
    cdf = normcdf(x, mu(i), sigma(i));
    plot(x, cdf, 'LineWidth', 2, 'DisplayName', sprintf('mu = %g, sigma = %g', mu(i), sigma(i)));
end
title('正态分布分布函数');
xlabel('随机变量值');
ylabel('累积分布');
legend;
grid on;
hold off;


%2、泊松分布
figure(3)
% 设置参数
lambda_values = [5, 10, 25]; % 不同的λ参数
x = 0:50; % 可能的随机变量值

% 绘制概率密度函数（PDF）
subplot(2, 1, 1);
hold on;
for i = 1:3
    pdf = poisspdf(x, lambda_values(i));
    plot(x, pdf, '-','LineWidth',1.2, 'DisplayName', sprintf('λ = %g', lambda_values(i)));
end
title('泊松分布概率密度函数');
xlabel('随机变量值');
ylabel('概率密度');
legend;
grid on;
hold off;

% 绘制分布函数（CDF）
subplot(2, 1, 2);
hold on;
for i = 1:3
    cdf = poisscdf(x, lambda_values(i));
    plot(x, cdf, '-','LineWidth',1.2 ,'DisplayName', sprintf('λ = %g', lambda_values(i)));
end
title('泊松分布分布函数');
xlabel('随机变量值');
ylabel('累积分布');
legend;
grid on;
hold off;

%3、指数分布
figure(4)
% 设置参数
lambda_values = [1, 2, 0.5]; % 不同的λ参数
x = 0:0.1:5; % 可能的随机变量值

% 绘制概率密度函数（PDF）
subplot(2, 1, 1);
hold on;
for i = 1:3
    pdf = exppdf(x, 1 / lambda_values(i));
    plot(x, pdf, 'LineWidth', 2, 'DisplayName', sprintf('λ = %g', lambda_values(i)));
end
title('指数分布概率密度函数');
xlabel('随机变量值');
ylabel('概率密度');
legend;
grid on;
hold off;

% 绘制分布函数（CDF）
subplot(2, 1, 2);
hold on;
for i = 1:3
    cdf = expcdf(x, 1 / lambda_values(i));
    plot(x, cdf, 'LineWidth', 2, 'DisplayName', sprintf('λ = %g', lambda_values(i)));
end
title('指数分布分布函数');
xlabel('随机变量值');
ylabel('累积分布');
legend;
grid on;
hold off;



%4、均匀分布
figure(6)
% 设置参数
a_values = [1, 2, 3]; % 不同的下界参数
b_values = [4, 6, 8]; % 不同的上界参数
x = 0:0.1:10; % 可能的随机变量值

% 绘制概率密度函数（PDF）
subplot(2, 1, 1);
hold on;
for i = 1:3
    pdf = unifpdf(x, a_values(i), b_values(i));
    plot(x, pdf, 'LineWidth', 2, 'DisplayName', sprintf('a = %g, b = %g', a_values(i), b_values(i)));
end
title('均匀分布概率密度函数');
xlabel('随机变量值');
ylabel('概率密度');
legend;
grid on;
hold off;

% 绘制分布函数（CDF）
subplot(2, 1, 2);
hold on;
for i = 1:3
    cdf = unifcdf(x, a_values(i), b_values(i));
    plot(x, cdf, 'LineWidth', 2, 'DisplayName', sprintf('a = %g, b = %g', a_values(i), b_values(i)));
end
title('均匀分布分布函数');
xlabel('随机变量值');
ylabel('累积分布');
legend;
grid on;
hold off;


%5、伽马分布
figure(8)
% 设置参数
alpha_values = [1, 2, 3]; % 不同的形状参数
beta = 2; % 尺度参数
x = 0:0.1:20; % 可能的随机变量值

% 绘制概率密度函数（PDF）
subplot(2, 1, 1);
hold on;
for i = 1:3
    pdf = gampdf(x, alpha_values(i), beta);
    plot(x, pdf, 'LineWidth', 2, 'DisplayName', sprintf('α = %g', alpha_values(i)));
end
title('伽马分布概率密度函数');
xlabel('随机变量值');
ylabel('概率密度');
legend;
grid on;
hold off;

% 绘制分布函数（CDF）
subplot(2, 1, 2);
hold on;
for i = 1:3
    cdf = gamcdf(x, alpha_values(i), beta);
    plot(x, cdf, 'LineWidth', 2, 'DisplayName', sprintf('α = %g', alpha_values(i)));
end
title('伽马分布分布函数');
xlabel('随机变量值');
ylabel('累积分布');
legend;
grid on;
hold off;


%卡方分布
figure(5)
% 设置参数
degrees_of_freedom = [3, 6, 9]; % 不同的自由度参数
x = 0:0.1:20; % 可能的随机变量值

% 绘制概率密度函数（PDF）
subplot(2, 1, 1);
hold on;
for i = 1:3
    pdf = chi2pdf(x, degrees_of_freedom(i));
    plot(x, pdf, 'LineWidth', 2, 'DisplayName', sprintf('自由度 = %g', degrees_of_freedom(i)));
end
title('卡方分布概率密度函数');
xlabel('随机变量值');
ylabel('概率密度');
legend;
grid on;
hold off;

% 绘制分布函数（CDF）
subplot(2, 1, 2);
hold on;
for i = 1:3
    cdf = chi2cdf(x, degrees_of_freedom(i));
    plot(x, cdf, 'LineWidth', 2, 'DisplayName', sprintf('自由度 = %g', degrees_of_freedom(i)));
end
title('卡方分布分布函数');
xlabel('随机变量值');
ylabel('累积分布');
legend;
grid on;
hold off;

%t分布
figure(10)
% 设置参数
nu_values = [1, 10, 5]; % 不同的自由度参数
mu = 0; % 均值
sigma = 1; % 标准差
x = -5:0.01:5; % 可能的随机变量值

% 初始化 PDF 和 CDF 数组
pdf_values = zeros(length(nu_values), length(x));
cdf_values = zeros(length(nu_values), length(x));

% 计算概率密度函数（PDF）和分布函数（CDF）
for i = 1:length(nu_values)
    nu = nu_values(i);
    
    pdf = @(x) (gamma((nu + 1) / 2) / (sqrt(pi * nu) * gamma(nu / 2))) * (1 + (x - mu).^2 / nu).^(-(nu + 1) / 2);
    cdf = @(x) integral(pdf, -inf, x);
    
    pdf_values(i, :) = arrayfun(pdf, x);
    cdf_values(i, :) = arrayfun(cdf, x);
end
subplot(2, 1, 1);
hold on;
for i = 1:length(nu_values)
    plot(x, pdf_values(i, :), 'LineWidth', 2, 'DisplayName', sprintf('ν = %g', nu_values(i)));
end
title(' t分布概率密度函数');
xlabel('随机变量值');
ylabel('概率密度');
legend;
grid on;
hold off;

% 绘制分布函数（CDF）
subplot(2, 1, 2);
hold on;
for i = 1:length(nu_values)
    plot(x, cdf_values(i, :), 'LineWidth', 2, 'DisplayName', sprintf('ν = %g', nu_values(i)));
end
title('t分布分布函数');
xlabel('随机变量值');
ylabel('累积分布');
legend;
grid on;
hold off;

%F分布
figure(11)
x=-0.2:1/100:2;
y0=fpdf(x,1,4);
y1=fpdf(x,1,1);
y2=fpdf(x,4,4);
y3=fpdf(x,4,1);

ax=subplot(2,1,1);
hold on;box on;
plot(x,y0);plot(x,y1);plot(x,y2);plot(x,y3);
title('F分布 概率密度曲线','FontWeight','bold');xlabel('x','FontWeight','bold');ylabel('p(x)','FontWeight','bold');
lgd=legend('n1=1,n2=4','n1=1,n2=1','n1=4,n2=4','n1=4,n2=1');
set(gca,'ylim',[-0.4,4]);
ax.XAxisLocation='origin';
ax.YAxisLocation='origin';

% 分布函数曲线 fcdf(x,n1,n2)
x=-1:1/100:10;
y0=fcdf(x,1,4);
y1=fcdf(x,1,1);
y2=fcdf(x,4,4);
y3=fcdf(x,4,1);

ax=subplot(2,1,2);
hold on;box on;
plot(x,y0);plot(x,y1);plot(x,y2);plot(x,y3);
title('F分布 分布函数曲线','FontWeight','bold');xlabel('x','FontWeight','bold');ylabel('P(x)','FontWeight','bold');
lgd=legend('n1=1,n2=4','n1=1,n2=1','n1=4,n2=4','n1=4,n2=1');
set(gca,'ylim',[-0.1,1.2]);
ax.XAxisLocation='origin';
ax.YAxisLocation='origin';


%伯努利分布
figure(2)
n=1;p0=0.2;p1=0.5;p2=0.8;
k=-3:4;
y0=binopdf(k,1,p0);
y1=binopdf(k,1,p1);
y2=binopdf(k,1,p2);

ax=subplot(3,2,1);
hold on;box on;
stem(k,y0,'b','filled','MarkerSize',10,'MarkerFaceColor','#0088ff','MarkerEdgeColor','g','LineWidth',2);
title('0-1分布 概率密度','FontWeight','bold');xlabel('k','FontWeight','bold');ylabel('p(k)','FontWeight','bold');
lgd=legend('p=0.3');
set(gca,'ylim',[-0.2,0.8]);
ax.XAxisLocation='origin';
ax.YAxisLocation='origin';

ax=subplot(3,2,3);
hold on;box on;
stem(k,y1,'b','filled','MarkerSize',10,'MarkerFaceColor','#0088ff','MarkerEdgeColor','g','LineWidth',2);
title('0-1分布 概率密度','FontWeight','bold');xlabel('k','FontWeight','bold');ylabel('p(k)','FontWeight','bold');
lgd=legend('p=0.5');
set(gca,'ylim',[-0.2,0.8]);
ax.XAxisLocation='origin';
ax.YAxisLocation='origin';

ax=subplot(3,2,5);
hold on;box on;
stem(k,y2,'b','filled','MarkerSize',10,'MarkerFaceColor','#0088ff','MarkerEdgeColor','g','LineWidth',2);
title('0-1分布 概率密度','FontWeight','bold');xlabel('k','FontWeight','bold');ylabel('p(k)','FontWeight','bold');
lgd=legend('p=0.7');
set(gca,'ylim',[-0.2,0.8]);
ax.XAxisLocation='origin';
ax.YAxisLocation='origin'; 

% 分布函数曲线 binocdf(k,1,p)
y0=binocdf(k,1,p0);
y1=binocdf(k,1,p1);
y2=binocdf(k,1,p2);

ax=subplot(3,2,2);
box on;
stairs(k,y0,'r','LineWidth',1.2);
title('0-1分布 分布函数','FontWeight','bold');xlabel('k','FontWeight','bold');ylabel('P(k)','FontWeight','bold');
lgd=legend('p=0.3');
set(gca,'ylim',[-0.1,1.2]);
ax.XAxisLocation='origin';
ax.YAxisLocation='origin';

ax=subplot(3,2,4);
box on;
stairs(k,y1,'r','LineWidth',1.2);
title('0-1分布 分布函数','FontWeight','bold');xlabel('k','FontWeight','bold');ylabel('P(k)','FontWeight','bold');
lgd=legend('p=0.5');
set(gca,'ylim',[-0.1,1.2]);
ax.XAxisLocation='origin';
ax.YAxisLocation='origin';

ax=subplot(3,2,6);
box on;
stairs(k,y2,'r','LineWidth',1.2);
title('0-1分布 分布函数','FontWeight','bold');xlabel('k','FontWeight','bold');ylabel('P(k)','FontWeight','bold');
lgd=legend('p=0.7');
set(gca,'ylim',[-0.1,1.2]);
ax.XAxisLocation='origin';
ax.YAxisLocation='origin';


%二项分布
figure(7)
% 设置参数
n_values = [10, 20, 30]; % 不同的试验次数
p_values = [0.2, 0.4, 0.6]; % 不同的成功概率
x = 0:30; % 可能的随机变量值

% 绘制概率密度函数（PDF）
subplot(2, 1, 1);
hold on;
for i = 1:3
    pdf = binopdf(x, n_values(i), p_values(i));
    stem(x, pdf, 'o-', 'LineWidth', 2, 'DisplayName', sprintf('n = %g, p = %g', n_values(i), p_values(i)));
end
title('二项分布概率密度函数');
xlabel('随机变量值');
ylabel('概率密度');
legend;
grid on;
hold off;

% 绘制分布函数（CDF）
subplot(2, 1, 2);
hold on;
for i = 1:3
    cdf = binocdf(x, n_values(i), p_values(i));
    plot(x, cdf, 'o-', 'LineWidth', 2, 'DisplayName', sprintf('n = %g, p = %g', n_values(i), p_values(i)));
end
title('二项分布分布函数');
xlabel('随机变量值');
ylabel('累积分布');
legend;
grid on;
hold off;

%超几何分布
figure(9)
% 设置参数
M_values = [50, 100, 150]; % 总体大小
K_values = [20, 40, 60]; % 总体中成功的数量
n_values = [10, 20, 30]; % 从总体中抽取的样本大小
x = 0:20; % 可能的随机变量值
subplot(2, 1, 1);
hold on;
for i = 1:3
    pmf = hygepdf(x, M_values(i), K_values(i), n_values(i));
    stem(x, pmf, 'o-', 'LineWidth', 2, 'DisplayName', sprintf('M = %g, K = %g, n = %g', M_values(i), K_values(i), n_values(i)));
end
title('超几何分布概率密度函数');
xlabel('随机变量值');
ylabel('概率密度');
legend;
grid on;
hold off;
% 绘制分布函数（CDF）
subplot(2, 1, 2);
hold on;
for i = 1:3
    cdf = hygecdf(x, M_values(i), K_values(i), n_values(i));
    plot(x, cdf, 'o-', 'LineWidth', 2, 'DisplayName', sprintf('M = %g, K = %g, n = %g', M_values(i), K_values(i), n_values(i)));
end
title('超几何分布分布函数');
xlabel('随机变量值');
ylabel('累积分布');
legend;
grid on;
hold off;
