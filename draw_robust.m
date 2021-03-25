clf
x=[50,60,70,80,90,100,110,120,130,140,150,160];
GO=[43,45,52,63,63,72,76,88,92,97,103,112]./x;
% KEGG=[33,36,45,45,47,53,56,57,66,70,76,81]./x;

% lambda=[1:20]/10;
hold on;
plot(x,GO,'r-*');
% plot(lambda,KEGG,'b-v');

axis([50,160,0,0.8]);
legend('NMF-DEC','Location','best');%%用图例标识曲线
xlabel('lambda');
ylabel('NMI');


% subplot(1,2,2);
% axis([0,10,0,1]);
% plot(x,kvac1,'g-');
% hold on;
% load('testResult.mat', 'kvac');
% plot(x,kvac(1:10),'r-');
% xlabel('k');
% ylabel('ac');
%plot(x,y,'g-',x,kvac,'r-');
condition=1;