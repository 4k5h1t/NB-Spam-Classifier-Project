function [out]=testing(string)

[str]=processing(string); %neha
str=str(~cellfun('isempty',str));

[sp,ha,x,y]=process2();%aby

sp=table2cell(sp);

s1="";
for i=1:height(sp)
      s1= strcat(s1,sp(i,1));
end

ha=table2cell(ha);

s0="";
for i=1:height(ha)
      s0= strcat(s0,ha(i,1));
end

s0=processing(s0);
s1=processing(s1);
spamList=s1; %aby
hamList=s0; %aby

  
 [lspam, lham] = getLikelihood(str,spamList,hamList); %akhbar
  
  pspam = 1;
  pham = 1;

  priorSpam=0.6;
  priorNonSpam=0.4;

  for i = 1:length(lspam)
    pspam = priorSpam*pspam*lspam(i);
    pham = priorNonSpam*pham*lham(i);
  end
    
  if(pspam > pham)
    out=1;
  else
    out=0;
  end
end
