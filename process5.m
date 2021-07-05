function testing( str )
  
  % Purifying the test String
  str = purify(str);
  lspam, lham = getLikelihood(str);
  pspam = 1;
  pham = 1;
  
  for i = length(lspam):
    pspam = pspam*lspam[i];
    pham = pham*lham[i];
  endfor
    

  if(pspam > pham):
    disp("It is spam")
  else:
    disp("Not Spam")
  
endfunction
