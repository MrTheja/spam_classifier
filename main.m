clear all; close all; clc;
load('randomised_data.mat');

train_data = X(1:2000,:);
test_data = X(2001:end, :);

train_y = y(1:2000, :);
test_y = y(2001:end, :);

model = svmtrain(train_y, train_data, '-t 0');

[predict_label_L, accuracy_L, dec_values_L] = svmpredict(train_y, train_data, model);

[predict_label_L, accuracy_L, dec_values_L] = svmpredict(test_y, test_data, model);

