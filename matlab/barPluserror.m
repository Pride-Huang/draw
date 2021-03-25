load WEBKB.mat

clf;
data=NMI/100;
error=NMI_err/100;
metrix='NMI';

b=bar(data);
set(b,'BarWidth',0.9)
ch = get(b,'children');
set(b(1),'facecolor',[0.93,0.69,0.13]);%Kmeans
set(b(2),'facecolor',[0.85,0.33,0.10]);%SNMF
set(b(3),'facecolor',[0 0 1]);%LSSMTC
set(b(4),'facecolor',[1 1 0]);%MTFC
set(b(5),'facecolor',[1 0 1]);%MTRC
set(b(6),'facecolor',[0.72,0.76,0.82]);%MTSC
set(b(7),'facecolor',[0.11,0.77,0.11]);%MKC
set(b(8),'facecolor',[1 0 0]);%MTMC
legend([b(1) b(2) b(3) b(4) b(5) b(6) b(7) b(8)],'AA','BB','CC','DD','EE','FF','GG','HH');
hold on;

ngroups = size(data,1);
nbars = size(data,2);
groupwidth =min(0.8, nbars/(nbars+1.5));

for i = 1:nbars
    x = (1:ngroups) - groupwidth/2 + (2*i-1) * groupwidth / (2*nbars);
%     errorbar(a2,b2,'k','LineStyle','none');
    errorbar(x,data(:,i),error(:,i),'k','LineStyle','none');
end
% errorbar(,data,error,'k','LineStyle','none');  

set(gca,'XTickLabel',{'Task1','Task2','Task3','Task4'},'fontsize',14,'linewidth',1)
ll=legend('Kmeans','SNMF','LSSMTC','MTFC','MTRC','MTSC','MKC','MTMC','location','SouthOutside');
set(ll,'Orientation','horizon')
ylim([0 0.55])
set(gca,'ytick',0:0.1:1.0)
ylabel(gca,metrix)
set(gca,'XTickLabel',{'Task1','Task2','Task3','Task4'})






