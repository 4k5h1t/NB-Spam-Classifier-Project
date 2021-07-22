%shrish
function [c]=count1(Word,op,spam,ham)
   
   c=0;
    if op==1
        for j=1:size(spam,2)
           
            if strcmp(spam(j),Word)
                c=c+1;
            end
        end
        if c>15
            c=15;
        end
    end
    if op==0
        for k=1:size(ham,2)
            if strcmp(ham(k),Word)
                c=c+1;
            end
        end
        if c>15
           c=15;
        end
    end
    c=c+1;
end