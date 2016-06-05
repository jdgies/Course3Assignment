---
title: "README: Getting & Cleaning Data Course Project"
author: "Jennifer Gies"
date: "June 4, 2016"
---

# Course 3 Assignment
Assignment: Getting and Cleaning Data Course Project

## Introduction
This README.md file explains how all  the scripts work and how they are connected.

<i> Human Activity Recognition Using Smartphones Data Set </i> found here: 

http://archive.ics.uci.edu/ml/datasets/Human+Activity+Recognition+Using+Smartphones

The exercise was undertaken for the Course Project for JHU Getting & Cleaning Data - Course 3 in the Data Science Specialization.
Original Assignment Instructions from JHU are included at the bottom of this file.

## Scripts
The run_analysis.R script performs the data transformation as described below and in the CodeBook.md

Files used from the UCI HAR Dataset include:
- 'activity_labels.txt' : activity labels for each of the numbered activities [1:6]
- 'features.txt' : data feature labels for 561 column variables of the X_test and X_train data
- 'train/X_train.txt' : Training data set (7352 obs. of 561 variables)
- 'test/X_test.txt' : Test data set (2947 obs. of 561 variables)
- 'train/y_train.txt' : numbered activities [1:6] for training data
- 'test/y_test.txt' : numbered activities [1:6] for test data
- 'train/subject_train.txt' : The numbered subject (subjectid) performing the training activity [1:30]
- 'test/subject_test.txt' :  The numbered subject (subjectid) performing the test activity [1:30]


## Data Transformation Steps

<b>Step 1:</b> Get Data:
<li> - The run_analysis.R script reads in applicable files from the "UCI HAR Dataset" as downloaded and extracted from the url above. 
<li> - Optional file download and store script is included at the top of the file, though commented out.

<b>Step 2:</b> Descriptive Names:
<li> - Merge y_test and y_train with more descriptive activity names from the activity_labels data, 
<li> - Remove extra index column (V1) from activitiy_labels
<li> - Add a column for subject_id from subject_test and subject_train files
<li> - Set descriptive column names
<li> - Also included a column to indicate test vs. train data (not required)
<li> - Prep X_test and X_train data sets by adding column names from features file

<b>Step 3:</b> Subset on columns for mean and standard deviation:
<li> - subset test and train data sets on columns with mean or std (standard deviation)

<b>Step 4:</b> Join like data sets:
<li> - bind test and train descriptive columns (subject, activity) with X_test and X_train data sets
<li> - bind test and train data into one table

<b>Step 5:</b> Build summary table:
<li> - make a list of mean/std column names (the list of columns to calculate average values on)
<li> - aggregate data on subject & activity, calculating average values for mean/std data

<b>Step 6:</b> Write data to file:
<li> - use write.table(..., row.name = FALSE) to write data to a file.

## Assignment Instructions
<i> the following instructions are taken verbatim from the course: </i>

The purpose of this project is to demonstrate your ability to collect, work with, and clean a data set.

<b>Review criteria </b>
1. The submitted data set is tidy.
2. The Github repo contains the required scripts.
3. GitHub contains a code book that modifies and updates the available codebooks with the data to indicate all the variables and summaries calculated, along with units, and any other relevant information.
4. The README that explains the analysis files is clear and understandable.
5. The work submitted for this project is the work of the student who submitted it.

<b>Getting and Cleaning Data Course Project </b>

The purpose of this project is to demonstrate your ability to collect, work with, and clean a data set. The goal is to prepare tidy data that can be used for later analysis. You will be graded by your peers on a series of yes/no questions related to the project. You will be required to submit: 1) a tidy data set as described below, 2) a link to a Github repository with your script for performing the analysis, and 3) a code book that describes the variables, the data, and any transformations or work that you performed to clean up the data called CodeBook.md. You should also include a README.md in the repo with your scripts. This repo explains how all of the scripts work and how they are connected.

One of the most exciting areas in all of data science right now is wearable computing - see for example this article . Companies like Fitbit, Nike, and Jawbone Up are racing to develop the most advanced algorithms to attract new users. The data linked to from the course website represent data collected from the accelerometers from the Samsung Galaxy S smartphone. A full description is available at the site where the data was obtained:

http://archive.ics.uci.edu/ml/datasets/Human+Activity+Recognition+Using+Smartphones

Here are the data for the project:

https://d396qusza40orc.cloudfront.net/getdata%2Fprojectfiles%2FUCI%20HAR%20Dataset.zip

You should create one R script called run_analysis.R that does the following.

1. Merges the training and the test sets to create one data set.
2. Extracts only the measurements on the mean and standard deviation for each measurement.
3. Uses descriptive activity names to name the activities in the data set
4. Appropriately labels the data set with descriptive variable names.
5. From the data set in step 4, creates a second, independent tidy data set with the average of each variable for each activity and each subject.

Good luck!
