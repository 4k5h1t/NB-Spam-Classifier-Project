function [priorSpam, priorNonSpam,X_train_class_1,X_train_class_0] = process2()
  clc
  M = readtable('lingSpam.csv');
  X_train_class_1 = [];
  X_train_class_0 = [];
  for i=2:height(M)
      if M{i,3}==1
          X_train_class_1=[X_train_class_1;M(i,2:3)];
      else
          X_train_class_0 = [X_train_class_0;M(i,2:3)];
      end      
  end

  priorSpam = height(X_train_class_1)/height(M);
  priorNonSpam = height(X_train_class_0)/height(M);
end
