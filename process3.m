clc
stri=["this is a esmail email email EMAILemail email email email emailemail";
    "red emil blue email green email,white email , blackemailemailemail"];
str2=["this is a emsail email email EMAILemail email email email emailemail";
    "red emil blue email green email,white , blackemail"];
y=count1("email",0,stri,str2);
disp(y)
x=count1("email",1,stri,str2);
disp(x)

function [c]=count1(Word,op,spam,ham)
   
    if op==1
        c=sum(count(spam,Word,'IgnoreCase',true));
        if c>15
            c=15;
        end
    else
         c=sum(count(ham,Word,'IgnoreCase',true));
        if c>15
           c=15;
        end
    end
end
    