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

## Variables
In data transformations (below) the data is merged into one final data set and variable columns are reduced to just the 79 variables representing mean or standard deviation.

For details, see also the original data set 'features_info.txt' file. In summary:
variables prefixed with 't' denote time domain signals
variables prefixed with 'f' denote frequency domain signals
variables ending in -XYZ indicate the direction of the movement
acceleration variables are split into Body and Gravity acceleration signals

The variables retained are:
- subjectid : the id of the subject performing the activity
- activity: the named activity (rather than the number 1:6)
- tBodyAcc-mean()-X : mean of time, Body acceleration, X-direction
- tBodyAcc-mean()-Y : mean of time, Body acceleration, Y-direction
- tBodyAcc-mean()-Z : mean of time, Body acceleration, Z-direction
- tBodyAcc-std()-X : standard deviation of time, Body acceleration, X-direction
- tBodyAcc-std()-Y : standard deviation of time, Body acceleration, Y-direction
- tBodyAcc-std()-Z : standard deviation of time, Body acceleration, Z-direction
- tGravityAcc-mean()-X : mean of time, Gravity acceleration, X-direction
- tGravityAcc-mean()-Y : mean of time, Gravity acceleration, Y-direction
- tGravityAcc-mean()-Z : mean of time, Gravity acceleration, Z-direction
- tGravityAcc-std()-X : standard deviation of time, Gravity acceleration, X-direction
- tGravityAcc-std()-Y : standard deviation of time, Gravity acceleration, Y-direction
- tGravityAcc-std()-Z : standard deviation of time, Gravity acceleration, Z-direction
- tBodyAccJerk-mean()-X : mean of time, Body acceleration, Jerk signal,  X-direction
- tBodyAccJerk-mean()-Y : mean of time, Body acceleration, Jerk signal,  Y-direction
- tBodyAccJerk-mean()-Z : mean of time, Body acceleration, Jerk signal,  Z-direction
- tBodyAccJerk-std()-X : standard deviation of time, Body acceleration, Jerk signal,  X-direction
- tBodyAccJerk-std()-Y : standard deviation of time, Body acceleration, Jerk signal,  Y-direction
- tBodyAccJerk-std()-Z : standard deviation of time, Body acceleration, Jerk signal,  Z-direction
- tBodyGyro-mean()-X : mean of time, Body gyroscope signal, X-direction
- tBodyGyro-mean()-Y : mean of time, Body gyroscope signal, Y-direction
- tBodyGyro-mean()-Z : mean of time, Body gyroscope signal, Z-direction
- tBodyGyro-std()-X : standard deviation of time, Body gyroscope signal, X-direction
- tBodyGyro-std()-Y : standard deviation of time, Body gyroscope signal, Y-direction
- tBodyGyro-std()-Z : standard deviation of time, Body gyroscope signal, Z-direction
- tBodyGyroJerk-mean()-X : mean of time, Body gyroscope jerk signal, X-direction
- tBodyGyroJerk-mean()-Y : mean of time, Body gyroscope jerk signal, Y-direction
- tBodyGyroJerk-mean()-Z : mean of time, Body gyroscope jerk signal, Z-direction
- tBodyGyroJerk-std()-X : standard deviation of time, Body gyroscope jerk signal, X-direction
- tBodyGyroJerk-std()-Y : standard deviation of time, Body gyroscope jerk signal, Y-direction
- tBodyGyroJerk-std()-Z : standard deviation of time, Body gyroscope jerk signal, Z-direction
- tBodyAccMag-mean() : mean of time, Body acceleration magnitute signal
- tBodyAccMag-std() : standard deviation of time, Body acceleration magnitute signal
- tGravityAccMag-mean() : mean of time, Gravity acceleration magnitute signal
- tGravityAccMag-std() : standard deviation of time, Gravity acceleration magnitute signal
- tBodyAccJerkMag-mean() : mean of time, Body acceleration jerk signal
- tBodyAccJerkMag-std() : standard deviation of time, Body acceleration jerk signal
- tBodyGyroMag-mean() : mean of time, Body gyroscope magnitute signal
- tBodyGyroMag-std() : standard deviation of time, Body gyroscope magnitute signal
- tBodyGyroJerkMag-mean() : mean of time, Body gyroscope jerk magnitute signal
- tBodyGyroJerkMag-std() : standard deviation of time, Body gyroscope jerk magnitute signal
- fBodyAcc-mean()-X : mean frequency, Body acceleration, X-direction
- fBodyAcc-mean()-Y : mean frequency, Body acceleration, Y-direction
- fBodyAcc-mean()-Z : mean frequency, Body acceleration, Z-direction
- fBodyAcc-std()-X : standard deviation of frequency, Body acceleration, X-direction
- fBodyAcc-std()-Y : standard deviation of frequency, Body acceleration, Y-direction
- fBodyAcc-std()-Z : standard deviation of frequency, Body acceleration, Z-direction
- fBodyAcc-meanFreq()-X : weighted average to obtain mean frequency, Body acceleration, X-direction
- fBodyAcc-meanFreq()-Y : weighted average to obtain mean frequency, Body acceleration, Y-direction
- fBodyAcc-meanFreq()-Z : weighted average to obtain mean frequency, Body acceleration, Z-direction
- fBodyAccJerk-mean()-X : mean frequency, Body acceleration, Jerk signal,  X-direction
- fBodyAccJerk-mean()-Y : mean frequency, Body acceleration, Jerk signal,  Y-direction
- fBodyAccJerk-mean()-Z : mean frequency, Body acceleration, Jerk signal,  Z-direction
- fBodyAccJerk-std()-X : standard deviation of frequency, Body acceleration, Jerk signal,  X-direction
- fBodyAccJerk-std()-Y : standard deviation of frequency, Body acceleration, Jerk signal,  Y-direction
- fBodyAccJerk-std()-Z : standard deviation of frequency, Body acceleration, Jerk signal,  Z-direction
- fBodyAccJerk-meanFreq()-X : weighted average to obtain mean frequency, Body acceleration, Jerk signal,  X-direction
- fBodyAccJerk-meanFreq()-Y : weighted average to obtain mean frequency, Jerk signal,  Y-direction
- fBodyAccJerk-meanFreq()-Z : weighted average to obtain mean frequency, Jerk signal,  Z-direction
- fBodyGyro-mean()-X : mean frequency , Body gyroscope signal, X-direction
- fBodyGyro-mean()-Y : mean frequency, Body gyroscope signal, Y-direction
- fBodyGyro-mean()-Z : mean frequency, Body gyroscope signal, Z-direction
- fBodyGyro-std()-X : standard deviation of frequency, Body gyroscope signal, X-direction
- fBodyGyro-std()-Y : standard deviation of frequency, Body gyroscope signal, Y-direction
- fBodyGyro-std()-Z : standard deviation of frequency, Body gyroscope signal, Z-direction
- fBodyGyro-meanFreq()-X : weighted average to obtain mean frequency, Body gyroscope signal, X-direction
- fBodyGyro-meanFreq()-Y : weighted average to obtain mean frequency, Body gyroscope signal, Y-direction
- fBodyGyro-meanFreq()-Z : weighted average to obtain mean frequency, Body gyroscope signal, Z-direction
- fBodyAccMag-mean() : mean frequency, Body acceleration magnitute signal
- fBodyAccMag-std() : standard deviation of frequency, Body acceleration magnitute signal
- fBodyAccMag-meanFreq() : weighted average to obtain mean frequency, Body acceleration magnitute signal
- fBodyBodyAccJerkMag-mean() : mean frequency, Body acceleration jerk magnitude
- fBodyBodyAccJerkMag-std() : standard deviation of frequency, Body acceleration jerk magnitude
- fBodyBodyAccJerkMag-meanFreq() : weighted average to obtain mean frequency, Body acceleration jerk magnitude
- fBodyBodyGyroMag-mean() : mean frequency, Body gyroscope magnitude
- fBodyBodyGyroMag-std() : standard deviation frequency, Body gyroscope magnitude
- fBodyBodyGyroMag-meanFreq() : weighted average to obtain mean frequency, Body gyroscope magnitude
- fBodyBodyGyroJerkMag-mean() : mean frequency, Body gyroscope jerk magnitude
- fBodyBodyGyroJerkMag-std() : standard deviation frequency, Body gyroscope jerk magnitude
- fBodyBodyGyroJerkMag-meanFreq() : weighted average to obtain mean frequency, Body gyroscope jerk magnitude


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
