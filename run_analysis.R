library(dplyr)

##############################
## Step 1: Get Data         ##
##############################

## Uncomment the following 5 lines to pull data from web-source

#if(!file.exists("./data")){dir.create("./data")}
#url <- "https://d396qusza40orc.cloudfront.net/getdata%2Fprojectfiles%2FUCI%20HAR%20Dataset.zip"
#destfile="wearablesData.zip"
#download.file(url,destfile=destfile, mode="wb")
#unzip("wearablesData.zip")

## read in data

fileNames = c(
        "./UCI HAR Dataset/activity_labels.txt",# activity labels for data 1:6
        "./UCI HAR Dataset/features.txt",       # 561 columns for X_test and X_train data (list of all features)
        "./UCI HAR Dataset/test/y_test.txt",    # Test labels (2947 obs. 1 var)
        "./UCI HAR Dataset/test/subject_test.txt",   # subject id / sample (2947 obs.)
        "./UCI HAR Dataset/train/y_train.txt",       # Test labels (7352 obs. 1 var)
        "./UCI HAR Dataset/train/subject_train.txt", # subject id / sample (7352 obs.)
        "./UCI HAR Dataset/test/X_test.txt",    # Test set (2947 obs. 561 var)
        "./UCI HAR Dataset/train/X_train.txt"   # Train set (7352 obs. 561 var)
)
activity_labels <- read.table(fileNames[1])
features        <- read.table(fileNames[2])
y_test          <- read.table(fileNames[3])
subject_test    <- read.table(fileNames[4])
y_train         <- read.table(fileNames[5])
subject_train   <- read.table(fileNames[6])
X_test          <- read.table(fileNames[7])
X_train         <- read.table(fileNames[8])


#################################
## Step 2: Descriptive Names   ##
#################################

# merge statements create incorrect results. Replacing after great feedback from peer review - thank you
#test_data <- merge(y_test, activity_labels, by.x="V1", by.y="V1", sort=FALSE)
#train_data <- merge(y_train, activity_labels, by.x="V1", by.y="V1", sort=FALSE)
#test_data <- subset(test_data, select=-V1)
#train_data <- subset(train_data, select=-V1)

## make descriptive activity labels

test_data <- activity_labels[y_test[[1]],]$V2
train_data <- activity_labels[y_train[[1]],]$V2


## add the subject id column to the activity activity

test_data <- cbind(subject_test, test_data)
train_data <- cbind(subject_train, train_data)


## put labels for last two added columns (3)

colnames(test_data) <-  c("subjectid", "activity")
colnames(train_data) <-  c("subjectid", "activity")


## add training / test indicator (not required)

test_data$data_set <- "test"
train_data$data_set <- "train"


## add labels to Test and Training sets (4)

colnames(X_test) <-  sub("\\(\\)", "", features$V2) # tidy by also removing brackets from column names
colnames(X_train) <- sub("\\(\\)", "", features$V2)


##################################
## Step 3: Subset on mean/std   ##
##################################

# look for only mean | standard deviation rows and subset on those (2)
# not sure if meanFreq columns should be included but after reviewing the original codebook, decided yes, they should
X_test <- X_test[,grepl("-mean|-std", colnames(X_test))]
X_train <- X_train[,grepl("-mean|-std", colnames(X_train))]


##################################
## Step 4: Join like data sets  ##
##################################

## merge data set with descriptor columns

test_data <- cbind(test_data, X_test)
train_data <- cbind(train_data, X_train)

## merge test and train data sets into one data set (1)

all_data <- rbind(test_data, train_data)
fileName="./tidy_HAR_dataset.txt"
write.table(all_data, fileName, row.name=FALSE)


##################################
## Step 5: Build summary table  ##
##################################

## from data set above, create second independent tidy data set
## with the average of each variable for each activity and each subject (5)

meancols <- colnames(all_data[,grepl("-mean|-std", colnames(all_data))])
averages <- aggregate(all_data[,meancols], by = all_data[c("subjectid","activity")], FUN=mean)


##################################
## Step 6: Write data to file   ##
##################################

fileName="./HAR_averages.txt"
write.table(averages, fileName, row.name=FALSE)
