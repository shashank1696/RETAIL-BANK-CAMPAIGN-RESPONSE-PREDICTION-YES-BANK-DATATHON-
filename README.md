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

A11 signifies 0 (excluding 0) or lesser amount credited to current checking account. (Amounts       are in units of certain currency)
A12 signifies greater than 0 (including 0) and lesser than 200 (excluding 200) units of currency
A13 signifies amount greater than 200 (including 200) being recorded in the account
A14 signifies no account details provided

A30 signifies that no previous loans has been taken or all loans taken have been payed back.
A31 signifies that all loans from the current bank has been payed off. Loan information of other banks are not available.
A32 signifies loan exists but till now regular installments have been payed back in full amount.
A33  signifies that significant delays have been seen in repayment of loan installments.
A34 signifies other loans exist at the same bank. Irregular behaviour in repayment.

A40 signifies that the loan is taken to buy a new car
A41 signifies that the loan was taken to buy a old car 
A42 signifies that the loan is taken to buy furniture or equipment
A43 signifies that the loan is taken to buy radio or TV
A44 signifies that the loan is taken to buy domestic appliances
A45 signifies that the loan is taken for repairing purposes
A46 signifies that the loan is taken for education
A47 signifies that the loan is taken for vacation
A48 signifies that the loan is taken for re-skilling
A49 signifies that the loan is taken for business and establishment
A410 signifies other purposes

A61 signifies that less than 100 units (excluding 100) of currency is present
A62 signifies that greater than 100 units (including 100) and less than 500 (excluding 500) units of currency is present
A63 signifies that greater than 500 (including 500) and less than 1000 (excluding 1000) units of currency is present.
A64 signifies that greater than 1000 (including 1000) units of currency is present.
A65 signifies that no savings account details is present on record

A71 signifies that the individual is unemployed
A72 signifies that the individual has been employed for less than a year
A73 signifies that the individual has been employed for more than a year but less than four years
A74 signifies that the individual has been employed more than four years but less than seven years
A75 signifies that the individual has been employed for more than seven years

A91 signifies that the individual is a separated or divorced male
A92 signifies female individuals who are separated or divorced
A93 signifies unmarried males
A94 signifies married or widowed males
A95 signifies single females

A101 signifies that only a single individual is involved in the loan application
A102 signifies that one or more co-applicant is present in the loan application
A103 signifies that gurantors are present.

A121 signifies that the individual holds real estate property
A122 signifies that the individual holds a building society savings agreement or life insurance
A123 signifies that the individual holds cars or other properties
A124 signifies that property information is not available

A141 signifies installment to bank
A142 signifies installment to outlets or stores
A143 signifies that no information is present

A151 signifies that the housing is on rent
A152 signifies that the housing is owned by the applicant
A153 signifies that no loan amount is present on the housing and there is no expense for the housing) 

A171 signifies that the individual is unemployed or unskilled and is a non-resident
A172 signifies that the individual is unskilled but is a resident
A173 signifies that the individual is a skilled employee or official
A174 signifies that the individual is involved in management or is self-employed or a highly qualified employee or officer

A191 signifies that no telephonic records are present
A192 signifies that a telephone is registered with the customer’s name

A201 signifies that the individual is a foreigner
A202  signifies that the individual is a resident

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
