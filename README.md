# Data Driven decison making for the self

This project is aimed to be an extention of the ideas presented by the Quantified Self. I chose to answer the question: What kind of data do I generate and what insights can I gain from it?

I'd like to call this idea or process as "Data driven decsion making for the self". We use many products and services on a daily basis that generate a lot of data. Personal analytics is a gaining ground as we no longer just track activity data. I have chosen the following data sources: Whatsapp chat data(soon), Microsoft Outlook data, Fitbit activity and sleep data, Bank transaction data.
So, almost everything we do generates data. Through Personal Analytics we tend to put ourselves in the postion of an experimental subject. I just find it interesting to analyze the data that I create. Analysis on this type of data is useful in describing the idea of turning everyday experience into data.

Below is an example:
Expenses analysis:
The data set contains all transactions made from September 2018 - Present. We perform some basic analytics such as and obtain some interesting results related to: what are the different types of transactions involved? How many times have I swiped my card? How many times did I go to a subway? 

Different categories of transactions

![](img/Rplot01.png)

Nature of transaction

![](img/Rplot.png)

     ACCT_XFER         ACH_CREDIT          ACH_DEBIT                ATM CHASE_TO_PARTNERFI 
                29                  9                 16                  1                  8 
     CHECK_DEPOSIT         DEBIT_CARD    FEE_TRANSACTION    QUICKPAY_CREDIT     QUICKPAY_DEBIT 
                 2                135                  3                 29                 18 




Exploring another area: Relation between steps and calories.
For this we use the activity data from fitbit. We explore the relationship between steps taken in a day and the calories burned.

![](img/Rplot3.png)

We can see observe that the relation between the above two variables is of a linear nature. 
We can also observe the relationship between the number of calories burned to that of "Very active minutes" in a day.

![](img/Rplot4.png)



