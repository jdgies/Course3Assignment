---
title: "CodeBook: Getting & Cleaning Data Course Project"
author: "Jennifer Gies"
date: "June 4, 2016"
---

# Course 3 Assignment
Assignment: Getting and Cleaning Data Course Project

## Introduction
This code book describes the steps performed to transform, tidy and analyze the <i> Human Activity Recognition Using Smartphones Data Set </i> found here: http://archive.ics.uci.edu/ml/datasets/Human+Activity+Recognition+Using+Smartphones

The exercise was undertaken for the Course Project for JHU Getting & Cleaning Data - Course 3 in the Data Science Specialization.

## Data
The data used for this assignment come from the Human Activity Recognition Using Smartphones Dataset Version 1.0 and include experiment data from 30 volunteers performing six activities while wearing a smartphone.

Files used from the UCI HAR Dataset include:
- 'activity_labels.txt' : activity labels for each of the numbered activities [1:6]
- 'features.txt' : data feature labels for 561 column variables of the X_test and X_train data
- 'train/X_train.txt' : Training data set (7352 obs. of 561 variables)
- 'test/X_test.txt' : Test data set (2947 obs. of 561 variables)
- 'train/y_train.txt' : numbered activities [1:6] for training data
- 'test/y_test.txt' : numbered activities [1:6] for test data
- 'train/subject_train.txt' : The numbered subject (subjectid) performing the training activity [1:30]
- 'test/subject_test.txt' :  The numbered subject (subjectid) performing the test activity [1:30]

## Variables
In data transformations (below) the data is merged into one final data set and variable columns are reduced to just the 66 representing mean or standard deviation.

For details, see also the original data set 'features_info.txt' file. In summary:
variables prefixed with 't' denote time domain signals
variables prefixed with 'f' denote frequency domain signals
variables ending in -XYZ indicate the direction of the movement
acceleration variables are split into Body and Gravity acceleration signals

The variables retained are:
- subjectid : the id of the subject performing the activity
- activity: the named activity (rather than the number 1:6)
- tBodyAcc-mean()-X : mean of time domain, Body acceleration, X-direction
- tBodyAcc-mean()-Y : mean of time domain, Body acceleration, Y-direction
- tBodyAcc-mean()-Z : mean of time domain, Body acceleration, Z-direction
- tBodyAcc-std()-X : std of time domain, Body acceleration, X-direction
- tBodyAcc-std()-Y : std of time domain, Body acceleration, Y-direction
- tBodyAcc-std()-Z : std of time domain, Body acceleration, Z-direction
- tGravityAcc-mean()-X : mean of time domain, Gravity acceleration, X-direction
- tGravityAcc-mean()-Y : mean of time domain, Gravity acceleration, Y-direction
- tGravityAcc-mean()-Z : mean of time domain, Gravity acceleration, Z-direction
- tGravityAcc-std()-X : std of time domain, Gravity acceleration, X-direction
- tGravityAcc-std()-Y : std of time domain, Gravity acceleration, Y-direction
- tGravityAcc-std()-Z : std of time domain, Gravity acceleration, Z-direction
- tBodyAccJerk-mean()-X : mean of time domain, Body acceleration, Jerk signal,  X-direction
- tBodyAccJerk-mean()-Y : mean of time domain, Body acceleration, Jerk signal,  Y-direction
- tBodyAccJerk-mean()-Z : mean of time domain, Body acceleration, Jerk signal,  Z-direction
- tBodyAccJerk-std()-X : std of time domain, Body acceleration, Jerk signal,  X-direction
- tBodyAccJerk-std()-Y : std of time domain, Body acceleration, Jerk signal,  Y-direction
- tBodyAccJerk-std()-Z : std of time domain, Body acceleration, Jerk signal,  Z-direction
- tBodyGyro-mean()-X : mean of time domain, Body gyroscope signal, X-direction
- tBodyGyro-mean()-Y : mean of time domain, Body gyroscope signal, Y-direction
- tBodyGyro-mean()-Z : mean of time domain, Body gyroscope signal, Z-direction
- tBodyGyro-std()-X : std of time domain, Body gyroscope signal, X-direction
- tBodyGyro-std()-Y : std of time domain, Body gyroscope signal, Y-direction
- tBodyGyro-std()-Z : std of time domain, Body gyroscope signal, Z-direction
- tBodyGyroJerk-mean()-X : mean of time domain, Body gyroscope jerk signal, X-direction
- tBodyGyroJerk-mean()-Y : mean of time domain, Body gyroscope jerk signal, Y-direction
- tBodyGyroJerk-mean()-Z : mean of time domain, Body gyroscope jerk signal, Z-direction
- tBodyGyroJerk-std()-X : std of time domain, Body gyroscope jerk signal, X-direction
- tBodyGyroJerk-std()-Y : std of time domain, Body gyroscope jerk signal, Y-direction
- tBodyGyroJerk-std()-Z : std of time domain, Body gyroscope jerk signal, Z-direction
- tBodyAccMag-mean() : mean of time domain, Body acceleration magnitute signal
- tBodyAccMag-std() : std of time domain, Body acceleration magnitute signal
- tGravityAccMag-mean() : mean of time domain, Gravity acceleration magnitute signal
- tGravityAccMag-std() : std of time domain, Gravity acceleration magnitute signal
- tBodyAccJerkMag-mean() : mean of time domain, Body acceleration jerk signal
- tBodyAccJerkMag-std() : std of time domain, Body acceleration jerk signal
- tBodyGyroMag-mean() : mean of time domain, Body gyroscope magnitute signal
- tBodyGyroMag-std() : std of time domain, Body gyroscope magnitute signal
- tBodyGyroJerkMag-mean() : mean of time domain, Body gyroscope jerk magnitute signal
- tBodyGyroJerkMag-std() : std of time domain, Body gyroscope jerk magnitute signal
- fBodyAcc-mean()-X : mean of frequency domain, Body acceleration, X-direction
- fBodyAcc-mean()-Y : mean of frequency domain, Body acceleration, Y-direction
- fBodyAcc-mean()-Z : mean of frequency domain, Body acceleration, Z-direction
- fBodyAcc-std()-X : std of frequency domain, Body acceleration, X-direction
- fBodyAcc-std()-Y : std of frequency domain, Body acceleration, Y-direction
- fBodyAcc-std()-Z : std of frequency domain, Body acceleration, Z-direction
- fBodyAccJerk-mean()-X : mean of frequency domain, Body acceleration, Jerk signal,  X-direction
- fBodyAccJerk-mean()-Y : mean of frequency domain, Body acceleration, Jerk signal,  Y-direction
- fBodyAccJerk-mean()-Z : mean of frequency domain, Body acceleration, Jerk signal,  Z-direction
- fBodyAccJerk-std()-X : std of frequency domain, Body acceleration, Jerk signal,  X-direction
- fBodyAccJerk-std()-Y : std of frequency domain, Body acceleration, Jerk signal,  Y-direction
- fBodyAccJerk-std()-Z : std of frequency domain, Body acceleration, Jerk signal,  Z-direction
- fBodyGyro-mean()-X : mean of frequency domain, Body gyroscope signal, X-direction
- fBodyGyro-mean()-Y : mean of frequency domain, Body gyroscope signal, Y-direction
- fBodyGyro-mean()-Z : mean of frequency domain, Body gyroscope signal, Z-direction
- fBodyGyro-std()-X : std of frequency domain, Body gyroscope signal, X-direction
- fBodyGyro-std()-Y : std of frequency domain, Body gyroscope signal, Y-direction
- fBodyGyro-std()-Z : std of frequency domain, Body gyroscope signal, Z-direction
- fBodyAccMag-mean() : mean of frequency domain, Body acceleration magnitute signal
- fBodyAccMag-std() : std of frequency domain, Body acceleration magnitute signal
- fBodyBodyAccJerkMag-mean() : mean of frequency domain, Body acceleration jerk magnitude
- fBodyBodyAccJerkMag-std() : std of frequency domain, Body acceleration jerk magnitude
- fBodyBodyGyroMag-mean() : mean of frequency domain, Body gyroscope magnitude
- fBodyBodyGyroMag-std() : std of frequency domain, Body gyroscope magnitude
- fBodyBodyGyroJerkMag-mean() : mean of frequency domain, Body gyroscope jerk magnitude
- fBodyBodyGyroJerkMag-std() : std of frequency domain, Body gyroscope jerk magnitude


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

<b>Step 6:</b> Write data to file:
- use write.table(..., row.name = FALSE) to write data to a file.
