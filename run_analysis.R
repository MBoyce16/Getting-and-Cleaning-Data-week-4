library(dplyr)
#Check to save/unzip file

datafile <- "./week4dataset.zip"
fileURL <- "https://d396qusza40orc.cloudfront.net/getdata%2Fprojectfiles%2FUCI%20HAR%20Dataset.zip "

## Download and unzip the dataset:
if (!file.exists(datafile)){
        download.file(fileURL, datafile)
}  
if (!file.exists("./UCI HAR Dataset")) { 
        unzip(datafile) 
}
#Read data into tables

x_train <- read.table("./UCI HAR Dataset/train/X_train.txt")
y_train <- read.table("./UCI HAR Dataset/train/Y_train.txt")
subject_train <- read.table("./UCI HAR Dataset/train/subject_train.txt")
x_test <- read.table("./UCI HAR Dataset/test/X_test.txt")
y_test <- read.table("./UCI HAR Dataset/test/Y_test.txt")
subject_test <- read.table("./UCI HAR Dataset/test/subject_test.txt")
features <- read.table("./UCI HAR Dataset/features.txt")
activity_labels <- read.table("./UCI HAR Dataset/activity_labels.txt")

#Merge datasets
x_data <- rbind(x_train, x_test)
y_data <- rbind(y_train, y_test)
subject_data <- rbind(subject_train, subject_test); colnames(subject_data) <- "subject"

#Find mean and std. dev. and label the corresponding data
extract_var <- features[grep("mean\\(\\)|std\\(\\)",features[,2]),]
x_data<- x_data[,extract_var[,1]]
colnames(x_data) <- features[extract_var[,1],2]

#Append the activity label to each measurement
colnames(y_data) <- "activity"
y_data$activitylabel <- factor(y_data$activity, labels = as.character(activity_labels[,2]))
activitylabel <- y_data[,2]

#Combine datasets and find the mean for each varaible per activity and subject
data <- cbind(x_data, activitylabel, subject_data)
tidy_data <- total %>% group_by(activitylabel, subject) %>% summarize_each(funs(mean))
write.table(tidy_data, file = "./UCI HAR Dataset/tidydata.txt", row.names = FALSE, col.names = TRUE)
