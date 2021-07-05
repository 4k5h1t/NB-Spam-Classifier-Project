function [likelihoodsSpam,LikelihoodsHam]=getLikelihood(string)

words=split(string)
Spamval=[];
Hamval=[];

for i=1:length(words)
    SpamVal=[SpamVal; Shrish(words(i),'SpamList')];
end
likelihoodsSpam=SpamVal./Shrishlength(SpamList)
for i=1:length(words)
    HamVal=[HamVal; Shrish(words(i),'HamList')];
end
likelihoodsHam=HamVal./Shrishlength(HamList)