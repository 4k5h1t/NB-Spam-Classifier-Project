function [class_1_train,class_0_train,class_1_test,class_0_test] = process2()
 
  M = readtable('C:\Users\Akhbar\Downloads\lingSpam.csv');
  class_1 = [];
  class_0 = [];
  for i=2:height(M)
      if M{i,3}==1
          class_1=[class_1;M(i,2:2)];
      else
          class_0 = [class_0;M(i,2:2)];
      end      
  end 
  
% Determine how many rows 20% is class_1.
[rows, columns] = size(class_1);
% Determine the last row number of the top  (upper) 20% of rows.
lastRow = int32(floor(0.3056 * rows));
% Get first 20% into one array M:
class_1_test = class_1(1:50, :);
% Get the rest into one array N:
class_1_train = class_1(lastRow+1:end, :);

% Determine how many rows 20% is for class_0.
[rows, columns] = size(class_0);
lastRow = int32(floor(0.8619 * rows));
class_0_test = class_0(1:50, :);
class_0_train = class_0(lastRow+1:end, :);

end
