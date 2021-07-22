% Negative => Not Spam
% Positive => Spam


function [TP, FN] = spamConfirm(spam)
    
  TP = 0;
  FN = 0;
  for i = 1 : numel(spam) 
      out=testing(string(table2cell(spam(i,1))));
    if(out == 1)
      TP = TP + 1;
    end
    if(out == 0)
      FN = FN + 1;
    end
    
  end
end
