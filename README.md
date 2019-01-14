# RETAIL-BANK-CAMPAIGN-RESPONSE-PREDICTION-YES-BANK-DATATHON-
Predicting campaign response of retail bank to build an effective strategy for targeting customers for future campaigns using Logistic Regression and K- Means Algorithm.

## Data Description:
The data given is of campaigns run by a retail bank. Objective of the problem is to predict the categorical outcome of each entity in the test data set. “outcome” variable is to be predicted as per “serial_number” variable of the test data set. From exploratory data analysis, it is seen that the data is imbalanced. The percentage of positive class in target variable is 5.8% which is vary low. Imbalaced data leads to baised model so we need to consider oversampling methods to get rid of this problem.

## Variables:
1)  serial_number: Unique identifier for each entity.
2)  age_in_years: Age in number of years of the individuals targeted.
3)  job_description: Categorical variable which describes the job held by each individual.
4)  marital_status: Categorical variable which describes the marital status of the individual.
5)  educational_status: Categorical variable which describes the educational status of the individual
6)  has_default: Binary variable which describes if the individual has a previous loan default.
7)  balance_in_account: Numerical variable which describes the average yearly balance of the account. (units of currency)
8)  housing_status: Binary variable which describes if the individual has previous housing loan existing.
9)  previous_loan: Binary variable which describes if the individual has previous previous personal loan existing.
10) phone_type: Type of phone on which the individual was contacted.
11) date: Day of the month on which the individual was contacted.
12) month_of_year: Categorical variable which describes the month of the year on which the individual was contacted.
13) call_duration: Contact duration in number of seconds on the last campaign call.
14) campaign_contacts: Number of days from the previous campaign after which the individual was contacted. -1 signifies that no previous       contact is on record.
15) days_passed: Total number of contacts to this individual before the current campaign started.
16) previous_contact: Number of previous contacts on the previous marketing campaign
17) outcome_of_the_campaign: Categorical variable that describes the outcome of the previous campaign.
18) outcome: Binary outcome of the current campaign.

## Objective of the Classification Problem:
As per predictions in the prediction problem. The objective of this problem is to predict the cluster number of serial number variable. 
Cluster number 1 (Correct value is 1) : When the value of credit_amount is between 4000 and 20000 
Cluster number 2 (Correct value is 2): When the value of credit_amount is between 4000 and 1500 
Cluster number 3 (Correct value is 3) : When the value of credit_amount is less than 1500
Evaluation Metric : Accuracy


## Fitting a Line for Prediction Problem:
![yesbank1](https://user-images.githubusercontent.com/44108439/51101043-f28d7680-17fe-11e9-87b4-4aa9c22441cf.png)

## Elbow Curve for Classification Problem:
![yesbank2](https://user-images.githubusercontent.com/44108439/51101223-c6bec080-17ff-11e9-86fe-17aec8ff72ce.png)

## Conclusions:
1) Using Logistic Regression Algorithm an accuracy of 97.93% is obtained for the Prediction Problem.
2) Using K-Means Algorithm an accuracy of 43.55% is obtained for the Classification problem.
