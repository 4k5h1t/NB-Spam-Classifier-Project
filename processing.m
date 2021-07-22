function [ans]=processing(string)
    string=lower(string);
    string = regexprep(string,'[\d"]',''); %removes all numbers
    punctuation=["↵",".",",","_","-","!",":",";","'","(",")","?","/","*","&","$","@","=","+","%","[","]","{","}"];
    string=erase(string,punctuation);
    words=split(string);
    words=transpose(words);
    
    %Articles = ["a","an","the"];
    %Preposition = ["above","of","across","against","along","among","under","over","on","in","at","to","by","near","with","up","down","for","through","from","toward","since","into","onto","upon","from","considering","during","provided","concerning","following","including","regarding","during"];
    %Pronoun = ["i","me","he","she","you","we","us","it","him","her","they","them","anyone","nobody","somebody","someone","something","other","whichever","whoever","this","all","such","myself","yourself","himself","herself","Itself","ourselves","yourselves", "themselves","his","that","these","those","mine","its","hers","his","yours","your","ours","theirs","who","whom","whose","what","which","whichever","whoever","whomever","all","any","all","another","anybody","anyone","anything","both","each","either","everybody","everyone","everything","both","few","many","most","neither","nobody","none","nothing","one","other","others","several","some"];   
    %Conjunction = ["and","nor","but","or","yet","so","for","after","although","as","because","before","even","if","once","only","since","than ","though","till","unless","until","while","where","wherever","when","wherever","as","if","despite","after","before","Furthermore","However","therfore","consequently","firstly","secondly","thirdly","finaly","first","second","third","still","yet","nevertheless"];
    %Other_words = ["subject ","Dear ","Respected ","Sir","Ma'am"];

    unwanted=["is","then","was","of","are","a","an","the","above","across","against","along","among","under","over","on","in","at","to","by","near","with","up","down","for","through","from","toward","since","into","onto","upon","from","considering","during","provided","concerning","following","including","regarding","during","i","me","he","she","you","we","us","it","him","her","they","them","anyone","nobody","somebody","someone","something","other","whichever","whoever","this","all","such","myself","yourself","himself","herself","Itself","ourselves","yourselves", "themselves","his","that","these","those","mine","its","hers","his","yours","your","ours","theirs","who","whom","whose","what","which","whichever","whoever","whomever","all","any","all","another","anybody","anyone","anything","both","each","either","everybody","everyone","everything","both","few","many","most","neither","nobody","none","nothing","one","other","others","several","some","and","nor","but","or","yet","so","for","after","although","as","because","before","even","if","once","only","since","than ","though","till","unless","until","while","where","wherever","when","wherever","as","if","despite","after","before","Furthermore","However","therfore","consequently","firstly","secondly","thirdly","finaly","first","second","third","still","yet","nevertheless","subject","Dear","Respected","Sir","Ma'am"];

    ans = setdiff(words,unwanted); %only take different values of 2 lists
end