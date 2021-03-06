Codebook
========

This document describes the tidydata.txt file provided in the repo, and the run\_Analysis.R script used to create the text file.

Tidydata.txt
------------

The tidydata.txt file is the output of the run\_Analysis.R script and consists of 68 columns, with 180 rows of data.

Each column represents a measured variable and each row represents the mean or standard deviation of those measurements. The data is ordered by the type of activity ("activitylabel) and inidivdual subject ("subject").

run\_analysis.R script
----------------------

This script takes smartphone accelerometer data and: 1. Checks to see if the data is downloaded and unzips 2. Combines the user information and sensor data 3. Finds average mean and standard deviation for each sensor measurement 4. Orders the data based on the activity being performed (acitivtylabel) and the subject 5. Returns that data in a text file: tidydata.txt.

Variables
---------

These values represent the type of data in each column of the tidydata

    ##  [1] "activitylabel"               "subject"                    
    ##  [3] "tBodyAcc.mean...X"           "tBodyAcc.mean...Y"          
    ##  [5] "tBodyAcc.mean...Z"           "tBodyAcc.std...X"           
    ##  [7] "tBodyAcc.std...Y"            "tBodyAcc.std...Z"           
    ##  [9] "tGravityAcc.mean...X"        "tGravityAcc.mean...Y"       
    ## [11] "tGravityAcc.mean...Z"        "tGravityAcc.std...X"        
    ## [13] "tGravityAcc.std...Y"         "tGravityAcc.std...Z"        
    ## [15] "tBodyAccJerk.mean...X"       "tBodyAccJerk.mean...Y"      
    ## [17] "tBodyAccJerk.mean...Z"       "tBodyAccJerk.std...X"       
    ## [19] "tBodyAccJerk.std...Y"        "tBodyAccJerk.std...Z"       
    ## [21] "tBodyGyro.mean...X"          "tBodyGyro.mean...Y"         
    ## [23] "tBodyGyro.mean...Z"          "tBodyGyro.std...X"          
    ## [25] "tBodyGyro.std...Y"           "tBodyGyro.std...Z"          
    ## [27] "tBodyGyroJerk.mean...X"      "tBodyGyroJerk.mean...Y"     
    ## [29] "tBodyGyroJerk.mean...Z"      "tBodyGyroJerk.std...X"      
    ## [31] "tBodyGyroJerk.std...Y"       "tBodyGyroJerk.std...Z"      
    ## [33] "tBodyAccMag.mean.."          "tBodyAccMag.std.."          
    ## [35] "tGravityAccMag.mean.."       "tGravityAccMag.std.."       
    ## [37] "tBodyAccJerkMag.mean.."      "tBodyAccJerkMag.std.."      
    ## [39] "tBodyGyroMag.mean.."         "tBodyGyroMag.std.."         
    ## [41] "tBodyGyroJerkMag.mean.."     "tBodyGyroJerkMag.std.."     
    ## [43] "fBodyAcc.mean...X"           "fBodyAcc.mean...Y"          
    ## [45] "fBodyAcc.mean...Z"           "fBodyAcc.std...X"           
    ## [47] "fBodyAcc.std...Y"            "fBodyAcc.std...Z"           
    ## [49] "fBodyAccJerk.mean...X"       "fBodyAccJerk.mean...Y"      
    ## [51] "fBodyAccJerk.mean...Z"       "fBodyAccJerk.std...X"       
    ## [53] "fBodyAccJerk.std...Y"        "fBodyAccJerk.std...Z"       
    ## [55] "fBodyGyro.mean...X"          "fBodyGyro.mean...Y"         
    ## [57] "fBodyGyro.mean...Z"          "fBodyGyro.std...X"          
    ## [59] "fBodyGyro.std...Y"           "fBodyGyro.std...Z"          
    ## [61] "fBodyAccMag.mean.."          "fBodyAccMag.std.."          
    ## [63] "fBodyBodyAccJerkMag.mean.."  "fBodyBodyAccJerkMag.std.."  
    ## [65] "fBodyBodyGyroMag.mean.."     "fBodyBodyGyroMag.std.."     
    ## [67] "fBodyBodyGyroJerkMag.mean.." "fBodyBodyGyroJerkMag.std.."
