# Naive Bayes for spam filtering  
Sem 2 Maths Project  
Run bayesClassifier.m in MATLAB

### Question 1:  

#### PURIFICATION (to be done by Neha):  

	Take any string (containing  many words) delete all  words like articles, conjunction, propositions, prononuns only.
	Your output should be a list of words without any of these specified grammar listed above.  

	##### Code Expectation:  
	Input= I want an apple  
	Output= [I, want, apple]  

### Question 2:  

#### DATASET AND CALCULATION OF PRIOR (to be done by aby):

Given an input of csv file,   
Go through each cell containing a mail content and,  
Take each cell of csv  

##### Case1: if that is a spam:
 Send it to Purification then add the purified to a list of spam

##### Case2: if that is a non-spam:
Send it to Purification then add the purified to list of non-spam

##### Prior calculation:
   P(spam)=No.of spam mails/total no.of mails
   P(non spam)=No.of non spam mails/total no.of mails

##### Code Expectation:  

While(no more cells to be handled)
{
Input= Buy phones cheaply     //(given its spam)  
Output=   
Spam[ Buy,phones,cheaply ]  
	    Nonspam[ -null- ]  
}  

The prior of spam mails=0.7
The prior of non spam mails=0.3

### Question 3:

#### Handling Count and improving accuracy (to be done by Shrish):  
Input = A list of spam words, A list of non-spam words.   
Given a list of spam and ham words, count and store how many words are there in spam and non-spam separately into two hashmap(word,count)- one for spam and other for non spam.  
(If any words exceed count of 15, don’t increment the counter anymore).

##### Code Expectation:
Input= a list called spam and another called non-spam
Output= A function that if called “count(word)”, should return the frequency of that word 

### Question 4:

#### Likelihood Calculation (to be done by Akhbar):  

Given a set of words, calculate the likelihood of all supplied words.  
 i.e. create two lists  
Firstly, take the first  word(assuming it be spam), then  
Calculate: no.of times that ‘word’ is there/ total no.of words in spam list. (Repeat for all such words).

Secondly, take the same word(now assuming it to be non-spam), then 
Calculate: no.of times that ‘word’ is there/ total no.of words in ham list. (Repeat for all such words).

##### Code Expectation:  
Input= [Hi,Money,Picnic]  
Output=  
SpamLikelihood(“Hi”)=0.8  
NonSpamLikelihood(“Hi”)=0.4  
….Similarly for all words  

### Question 5:

#### Naive bayes (to be done by Akshit):

Given a fresh string,  
Purify it, and apply it to the formula,  
P(spam/word)=P(spam)*P(word/spam)  
And  
P(non-spam/word)=P(non-spam)*P(word/non-spam) 

Where,  
P(word/spam)=look for that word in list send by akhbar, and take the value associated with it
P(spam)=prior returned by aby for spam.  

Naive approach:  
Multiple all the words together and see  both the spam and non spam value and make a decision  

##### Code Expectation:
Input=String of words
Output=The mail is spam!!!
