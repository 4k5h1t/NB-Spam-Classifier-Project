stri="this is a email email email EMAILemail email email email emailemail";
y=count1("email",1,stri);
disp(y)

function [c]=count1(Word,op,str)
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
    