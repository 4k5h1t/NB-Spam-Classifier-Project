function [c]=process3a(Word,op,str)
clc
    c=count(str,Word,'IgnoreCase',true);
    if c>15
        c=15;
    end
    if op==1
        disp("    spam");
    else
        disp("    ham");
    end
end
