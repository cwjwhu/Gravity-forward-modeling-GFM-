function [data] = feature_data(f)
%UNTITLED �˴���ʾ�йش˺�����ժҪ
%   �˴���ʾ��ϸ˵��
max_f=max(f);
min_f=min(f);
avg_f=mean(f);
s=std(f);
data=[min_f,max_f,avg_f,s];
end

