# KPMG Virtual Internship
In this internship I had Worked on fictitious Bike company named as **SPROCKET CENTRAL PLY LTD** 🚴🏿‍♂️ 🚴🏿‍♂️ 🚴🏿‍♂️ situated in **Australia** .I had provided with the customers data of 2017 to work on.

## OVERVIEW
 It is a Data Analytics virtual Internship Designed to help people gain a practical knowledge of working at **KPMG**
 There are 3 modules in the internship:
 * Data Quality Assessment. ✔️
 * Data Insights. ✔️
 * Data Insights and Presentation. ✔️
 
## DATA SET AND DETAILS 
The data about the **SPROCKET CENTRAL PYL LTD** is in the form of .xlsx
The workbook contains 4 important worksheets
* CustomersDemoGraphics. (rows:4000,columns:13)
* NewCustomersList. (rows:1000,columns:18)
* Transactions. (rows:20000,columns:13)
* CustomerAddress. (rows:4000,columns:6)
View the data [here](https://github.com/dolidsvn/KPMG-Virtual-Internship/tree/main/Raw%20DataSet)
## GOALS 🎓 🎓
* To find pattern in the data for better understanding of customers. 

## DATA PREPARATION 🧽 🧽
The data is a full mess with inconsistant data types,contaminated columns,
invalid data,and rows with missing.
* I used **Microsoft Excel** for cleaning Data as Excel can handle the data at ease.
some of the errors are:
* I have removed the column name 'default' which contains all sort of text and some queries. 
  This can be eliminated by checking the leakage in ETL and pipeline.
* In column 'decreased_indicator' I have replace all the N to readable word "No" and y with"YES"
* In the column 'DOB' found a year less than 1899 which is usaual date are calculated from 
  1899 december 31------1,
  1900 january-----2,
  .
  .
  .
  so on.
  from date 1843-2021 it will be around 157 years which is not possible for a person to have
  a age of 157 so it has to be replaced 1843 with 1943.

* centralised the column 'gender' only with female and male from other values 
such as 'f','Femal','m'.

Take a Deep look at all the data preparation changes log [here](https://github.com/dolidsvn/KPMG-Virtual-Internship/tree/main/changelog).
* MISSING DATA ❓ ❓ ❓  
* There are lot Missing Data(NA),Blanks in the given Data are handle using R **tidyverse**.
* Columns with less important data such as 'first_name','Last_name' are filled with 'unknown'.
* Columns with usefull data such as 'tenure' is filled with **median Imputation** across Industry
* For more  importing,handling missing and outliers,exporting refer my R script.
 [here](https://github.com/dolidsvn/KPMG-Virtual-Internship/tree/main/R%20scripts) 

##  DATA ANALYSIS 🔭 🔬
As the data set is small I have used for data cleaning and analysis purpose.
 After spending most of the time cleaning and validation 🕗 🕘 🕙  data is ready for some analysis.I have created two new coolumns in **CustomersDemographic**,**NewcustomersList**
 which are 'AGE' and 'AGE CATEGORY' based on DOB column for better understanding of my customers age how the factor age is effecting.Age is calulated using formula
=YEAR(NOW())-YEAR(CELL_REFERENCE) and for cagetories used a nested if =IF(AND(F2>19,F2<=35),"(19-35)years",IF(AND(F2>35,F2<=60),"(36-60)years",IF(AND(F2>60,F2<90),"retired","none"))).
* After all the preparation done I used Excel **pivot table** and **pivot charts** and R **ggplot** for a quick understanding,visualization and analysis of data.



## KEY INSIGHTS 🔍 🔍
* This company focuses mostly eastern australia as there are only customers from New south waes,Queensland,Victoria.
* Majority of the customers are living in New South Wales.
* Most of the customers are between age 36-60 years.
* Among different **Product class**,**Product size**,**Product line** most of the ordered belong to **Medium class-Medium size-Standard Line**.
* There are Customers with high Transaction upto 14 orders and low transactions with 1 order.
* The average transactions per customers is approximately 6 orders.
* The online orders have suddenly dropped compared to offline orders in the month of **March** and **June** and a sudden increase of online orders in the month **October** reaching the highest orders in 2017.
* The Industries Financial Services,Health,Manufacturing lead the trasactions at Sprocket Central.

All the key sights are visualised in DashBoard developed using **TABLEAU DESKTOP**.
Check out My **Sprocket central 2017**  Dashboard [here](https://public.tableau.com/app/profile/doli.sai.vivek.nath/viz/SprocketCentral2017/Dashboard1)

## TOOLS USED 🔧 🔨 ⚒ 🛠 ⛏

![TOOLS](https://github.com/dolidsvn/KPMG-Virtual-Internship/blob/main/images/tools.png)

## CREDITS
[KPMG](https://www.theforage.com/virtual-internships/theme/m7W4GMqeT3bh9Nb2c/KPMG-Data-Analytics-Virtual-Internship) For hosting an Virtual Internship on Data Analytics to help people gain practical experience of working with Data and insights.






































 
