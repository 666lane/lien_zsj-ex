%任意分布随机数产生




%数字图像直方图均衡
figure(1)
originalImage = imread('C:\Users\48828\Desktop\my\图片\e4\in.jpg');
grayImage = rgb2gray(originalImage);
histogram = imhist(grayImage);
cdf = cumsum(histogram) / numel(grayImage);
equalizedImage = histeq(grayImage);
equalizedImage = uint8(255 * cdf(double(grayImage) + 1));
imshow(equalizedImage);




%蒙特卡洛模拟
figure(3)
numSimulations = 1000;
countInside = 0;
% 初始化坐标数组，用于存储模拟点的坐标
xInside = [];
yInside = [];
xOutside = [];
yOutside = [];

% 模拟循环
for i = 1:numSimulations
    % 生成随机点的坐标（在0到1之间的均匀分布）
    x = rand();
    y = rand();
    
    % 计算点到原点的距离
    distance = sqrt(x^2 + y^2);
    
    % 检查点是否落入单位圆内
    if distance <= 1
        countInside = countInside + 1;
        xInside = [xInside, x];
        yInside = [yInside, y];
    else
        xOutside = [xOutside, x];
        yOutside = [yOutside, y];
    end
end

% 计算估计的π值
estimatedPi = 4 * countInside / numSimulations;

% 绘制模拟点的分布

scatter(xInside, yInside, 'b', 'filled');
hold on;
scatter(xOutside, yOutside, 'r', 'filled');
str={'估计Π的值为：',estimatedPi};
text(-0.1,0.9,str)
axis equal;
title('蒙特卡洛模拟 - 估计π的值');
xlabel('X轴');
ylabel('Y轴');
legend('单位圆内', '单位圆外');

% 显示估计的π值
fprintf('估计的π值: %.4f\n', estimatedPi);





%其他自主实验(fft)
% 执行傅里叶变换
figure(2)
n=1:10000;
positionData=sin(n)+2*cos(4*n);
fftResult = fft(positionData);
% 计算频率轴
fs = 1 / (0.001); % 采样频率，根据您的数据设置
N = length(positionData); % 数据点数
frequencies = (0:(N-1)) * fs / N; % 频率轴
% 获取幅度信息
amplitude = abs(fftResult);

% 获取相位信息
phase = angle(fftResult);
% 绘制幅度频谱
subplot(2, 1, 1);
plot(frequencies, amplitude);
title('幅度频谱');
xlabel('频率 (Hz)');
ylabel('幅度');

% 绘制相位频谱
subplot(2, 1, 2);
plot(frequencies, phase);
title('相位频谱');
xlabel('频率 (Hz)');
ylabel('相位 (弧度)');



