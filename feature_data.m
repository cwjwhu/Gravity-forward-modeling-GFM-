function [data] = feature_data(f)
%UNTITLED 此处显示有关此函数的摘要
%   此处显示详细说明
max_f=max(f);
min_f=min(f);
avg_f=mean(f);
s=std(f);
data=[min_f,max_f,avg_f,s];
end

