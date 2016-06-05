---
title: "README: Getting & Cleaning Data Course Project"
author: "Jennifer Gies"
date: "June 4, 2016"
---

# Course 3 Assignment
Assignment: Getting and Cleaning Data Course Project

## Introduction
This README.md file explains how the scripts work and how they are connected.

<i> Human Activity Recognition Using Smartphones Data Set </i> found here: 

http://archive.ics.uci.edu/ml/datasets/Human+Activity+Recognition+Using+Smartphones

The exercise was undertaken for the Course Project for JHU Getting & Cleaning Data - Course 3 in the Data Science Specialization.
Original Assignment Instructions from JHU are included at the bottom of this file.

## Scripts
The run_analysis.R script performs the data transformation on the UCI HAR Dataset to produce a tidy, labelled data set merging test and training data into one file with subject ids, feature and activity labels.

## Requirements
Data must be obtained and extracted in advance. Optional code for getting and extracting the data from web source (https://d396qusza40orc.cloudfront.net/getdata%2Fprojectfiles%2FUCI%20HAR%20Dataset.zip) is included in the script comments under Step 1: Get Data.

Data is expected in a "UCI HAR Dataset" folder with "test" and "train" sub-folders containing the data files for their respective runs of the experiment. These are merged by the script into one tidy data set which is written into the working directory as "tidy_HAR_dataset.txt"

A second independent tidy dataset is generated with the average of each variable by activity & subject. It is written into the working directory as "HAR_averages.txt"

## Raw Data
Files used from the UCI HAR Dataset include:
- 'activity_labels.txt' : activity labels for each of the numbered activities [1:6]
- 'features.txt' : data feature labels for 561 column variables of the X_test and X_train data
- 'test/y_test.txt' : numbered activities [1:6] for test data
- 'test/subject_test.txt' :  The numbered subject (subjectid) performing the test activity [1:30]
- 'train/y_train.txt' : numbered activities [1:6] for training data
- 'train/subject_train.txt' : The numbered subject (subjectid) performing the training activity [1:30]
- 'test/X_test.txt' : Test data set - unlabelled (2947 obs. of 561 variables)
- 'train/X_train.txt' : Training data set - unlabelled (7352 obs. of 561 variables)

# <br>      

For more details about the raw data, the transformations performed, and the resulting data set, please see CodeBook.md.

