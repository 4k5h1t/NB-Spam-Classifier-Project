
  
  % Purifying the test String
  str="Hello money money how are you";
spamList=["money","money","credit","fake"];
hamList=["hi","hello","soon"];

  
  [lspam, lham] = getLikelihood(str,spamList,hamList);
  
  pspam = 1;
  pham = 1;
   [X_train_class_1,X_train_class_0,priorSpam,priorNonSpam] = DataSplit();
priorSpam=0.39;
priorNonSpam=0.6;

  for i = 1:length(lspam)
    pspam = priorSpam*pspam*lspam(i);
    pham = priorNonSpam*pham*lham(i);
  end
    
  if(pspam > pham)
    disp("It is spam")
  else
    disp("Not Spam")
  end
 
