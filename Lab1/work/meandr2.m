% meandr2.m
% количество отсчетов (гармоник):
N=8;
% частота дискретизации:
t=-1:0.01:1;
% значение амплитуды:
A=1;
% период:
T=1;
% амплитуда гармоник
nh=(1:N)*2-1;
% массив коэффициентов для ряда, заданного через сщы:
Am=2/pi ./ nh;
Am(2:2:end) = -Am(2:2:end);
% массив гармоник
harmonics=sin(2 * pi * nh' * t/T);
% массив элементов ряда:
s1=harmonics.*repmat(Am',1,length(t));
% Суммирование ряда:
s2=cumsum(s1);
% Построение графиков
for k=1:N
  subplot(4,2,k)
  plot(t, s2(k,:))
end
print("meandr2.png");
