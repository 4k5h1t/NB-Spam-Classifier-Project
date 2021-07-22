% Negative => Not Spam
% Positive => Spam



function [TN, FP] = nonSpamConfirm(notSpam)
  TN = 0;
  FP = 0;
  for i = 1 : numel(notSpam) 
    if(testing(string(table2cell(notSpam(i,1)))) == 0)
      TN = TN + 1;
    end
    if(testing(string(table2cell(notSpam(i,1)))) == 1)
      FP = FP + 1;
    
    end
  end
end
