# KPMG Virtual Internship

# OVERVIEW
 It is a Data Analytics virtual Internship Designed to help people gain a practical knowledge of working at kpmg
 There are 3 modules in the internship:
 * Data Quality Assessment.
 * Data Insights.
 * Data Insights and Presentation.
 
# DATA SET AND DETAILS
The data about the **SPROCKET CENTRAL PYL LTD** is in the form of .xlsx
The workbook contains 4 important worksheets
* CustomersDemoGraphics.
* NewCustomersList.
* Transactions.
* CustomerAddress.

# DATA PREPARATION
The data is a full mess with inconsistant data types,contaminated columns,
invalid data,and rows with missing.
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

Take a Deep look at all the data preparation chnages log [here](https://github.com/dolidsvn/KPMG-Virtual-Internship/tree/main/changelog)













 
