# Filtering Spam E-mails using a Naive Bayes Classifier

## Introduction
Naive Bayes classifiers work by correlating the use of tokens (typically words, or sometimes other things), with spam and non-spam e-mails and then using Bayes' theorem to calculate a probability that an email is or is not spam.

## Math
The Bayes Theorem can be defined mathematically as:

> P (A/B) = P (A) ∗ P (B/A)/P (B)

In the naive bayes approach we define the feature space of words as independent, thus the representation of naive bayes for email spam filtering is as follows:
> prior(spam)=P(spam)*P(word1/spam)*P(word2/spam)...

and

> Posterior(non-spam)=P(ham)*P(word1/ham)*P(word2/ham)...

Comparing between the values for the mail to be spam or ham, we reach at the conclusion. 
Employing proper prior and effective processing and lemmatization helps in improving the accuracy of naive bayesian spam filtering.

## Contributors
- Akshit Sudheer Kumar (Repository Maintainer)
- Aby Stalin
- Akhbar Sha

## Deployment Details
This project uses MATLAB as the development platform.
