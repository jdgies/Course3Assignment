---
title: "CodeBook: Getting & Cleaning Data Course Project"
author: "Jennifer Gies"
date: "June 4, 2016"
---

# Course 3 Assignment
Assignment: Getting and Cleaning Data Course Project

## Introduction
This code book describes the steps performed to transform, tidy and analyze the <i> Human Activity Recognition Using Smartphones Data Set </i> found here: https://d396qusza40orc.cloudfront.net/getdata%2Fprojectfiles%2FUCI%20HAR%20Dataset.zip

The exercise was undertaken for the Course Project for JHU Getting & Cleaning Data - Course 3 in the Data Science Specialization.

## Data
The data used for this assignment come from the Human Activity Recognition Using Smartphones Dataset Version 1.0 and include experiment data from 30 volunteers performing six activities while wearing a smartphone.

The complete explanation of files and variables is available here:
found here: http://archive.ics.uci.edu/ml/datasets/Human+Activity+Recognition+Using+Smartphones

## Variables
In data transformations (below) the data is merged into one final data set and variable columns are reduced to just the variables representing mean or standard deviation.

For details, see also the original data set 'features_info.txt' file. In summary:
- variables prefixed with 't' denote time domain signals (captured at rate=50Hz and filtered to remove noise)
- variables prefixed with 'f' denote frequency domain signals
- variables ending in -XYZ indicate the direction of the movement
- acceleration variables are split into Body and Gravity signals for:
  - acceleration (Acc),
  - gyroscope (Gyro),
  - magnitude (Mag),
  - and body linear acceleration and angular velocity were derived in time to obtain jerk (Jerk)

The included set of variables that were estimated from these signals are: 
- mean: Mean value
- std: Standard deviation
- meanFreq: Weighted average of the frequency components to obtain a mean frequency

Additional vectors obtained by averaging the signals in a signal window sample. These are used on the angle variable:
- gravityMean
- tBodyAccMean
- tBodyAccJerkMean
- tBodyGyroMean
- tBodyGyroJerkMean

The variables in the resulting data set are:
- subjectid : the id of the subject performing the activity
- activity: the named activity (rather than the number 1:6)
- tBodyAcc-mean-XYZ
- tBodyAcc-std-XYZ
- tGravityAcc-mean-XYZ
- tGravityAcc-std-XYZ
- tBodyAccJerk-mean-XYZ
- tBodyAccJerk-std-XYZ
- tBodyGyro-mean-XYZ
- tBodyGyro-std-XYZ
- tBodyGyroJerk-mean-XYZ
- tBodyGyroJerk-std-XYZ
- tBodyAccMag-mean
- tBodyAccMag-std
- tGravityAccMag-mean
- tGravityAccMag-std
- tBodyAccJerkMag-mean
- tBodyAccJerkMag-std
- tBodyGyroMag-mean
- tBodyGyroMag-std
- tBodyGyroJerkMag-mean
- tBodyGyroJerkMag-std
- fBodyAcc-mean-XYZ
- fBodyAcc-std-XYZ
- fBodyAcc-meanFreq-XYZ
- fBodyAccJerk-mean-XYZ
- fBodyAccJerk-std-XYZ
- fBodyAccJerk-meanFreq-XYZ
- fBodyGyro-mean-XYZ
- fBodyGyro-std-XYZ
- fBodyGyro-meanFreq-XYZ
- fBodyAccMag-mean
- fBodyAccMag-std
- fBodyAccMag-meanFreq
- fBodyBodyAccJerkMag-mean
- fBodyBodyAccJerkMag-std
- fBodyBodyAccJerkMag-meanFreq
- fBodyBodyGyroMag-mean
- fBodyBodyGyroMag-std
- fBodyBodyGyroMag-meanFreq
- fBodyBodyGyroJerkMag-mean
- fBodyBodyGyroJerkMag-std
- fBodyBodyGyroJerkMag-meanFreq


## Data Transformations Performed

<b>Step 1:</b> Get Data:
- The run_analysis.R script reads in applicable files from the "UCI HAR Dataset" as downloaded and extracted from the url above. 
- Optional file download and store script is included at the top of the file, though commented out.

<b>Step 2:</b> Descriptive Names:
- Merge y_test and y_train with more descriptive activity names from the activity_labels data, 
- Remove extra index column (V1) from activitiy_labels
- Add a column for subject_id from subject_test and subject_train files
- Set descriptive column names
- Also included a column to indicate test vs. train data (not required)
- Prep X_test and X_train data sets by adding column names from features file

<b>Step 3:</b> Subset on columns for mean and standard deviation:
- subset test and train data sets on columns with mean or std (standard deviation)

<b>Step 4:</b> Join like data sets:
- bind test and train descriptive columns (subject, activity) with X_test and X_train data sets
- bind test and train data into one table

<b>Step 5:</b> Build summary table:
- make a list of mean/std column names (the list of columns to calculate average values on)
- aggregate data on subject & activity, calculating average values for mean/std data

<b>Step 6:</b> Write data to files:
- use write.table(..., row.name = FALSE) to write data to files: "./tidy_HAR_dataset.txt" and "./HAR_averages.txt"
