---
title: "Codebook"
output:
  pdf_document: default
  html_document: default
---
#Codebook

This document describes the tidydata.txt file provided in the repo, and the run_Analysis.R script used to create the text file.  

##Tidydata.txt

The tidydata.txt file is the output of the run_Analysis.R script and consists of 68 columns, with 180 rows of data.

Each column represents a measured variable and each row represents the mean or standard deviation of those measurements. The data is ordered by the type of activity ("activitylabel) and inidivdual subject ("subject").

##run_analysis.R script

This script takes smartphone accelerometer data and:
1. Checks to see if the data is downloaded and unzips
2. Combines the user information and sensor data
3. Finds average mean and standard deviation for each sensor measurement
4. Orders the data based on the activity being performed (acitivtylabel) and the subject
5. Returns that data in a text file: tidydata.txt.

##Variables
These values represent the type of data in each column of the tidydata
```{r tidy_data, echo=FALSE}
colnames(tidy_data)
```


