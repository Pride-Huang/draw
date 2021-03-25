function [mmax]=showResult(index_list,minAlpha,minBelta,seq_alpha,seq_belta,num_fig, index)
index_ii=[];
index_alpha=[];
index_beta=[];

ii_list=[];
alpha_list=[];
beta_list=[];
[n,m,k]=size(index_list);
for j=1:n
    disp(["max", index, "of alpha=",num2str((j-1)*seq_alpha+minAlpha)," is ",max(max(index_list(j,:,:)))]);
    index_alpha=[index_alpha max(max(index_list(j,:,:)))];
    alpha_list=[alpha_list (j-1)*seq_alpha+minAlpha];
end

for l=1:m
    disp(["max", index, "of beta=",num2str((l-1)*seq_belta+minBelta)," is ",max(max(index_list(:,l,:)))]);
    index_beta=[index_beta max(max(index_list(:,l,:)))];
    beta_list=[beta_list (l-1)*seq_belta+minBelta];
end

for ii=1:k
    disp(["max", index, "of ii=",num2str(ii)," is ",max(max(index_list(:,:,ii)))]);
    index_ii=[index_ii max(max(index_list(:,:,ii)))];
    ii_list=[ii_list ii-1];
end
figure(num_fig);
hold on;
subplot(2,2,1)
plot(ii_list,index_ii,'g-');
xlabel("ii");
subplot(2,2,2)
plot(alpha_list,index_alpha,'b-');
xlabel("alpha");
subplot(2,2,3)
plot(beta_list,index_beta,'m-');
xlabel("belta");

mmax=[max(index_alpha),max(index_beta),max(index_ii)];