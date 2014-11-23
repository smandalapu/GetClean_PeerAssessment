#1.Retrieving the RAW data
##Download the datasets from Internet location
setInternet2(TRUE)
download.file("https://d396qusza40orc.cloudfront.net/getdata%2Fprojectfiles%2FUCI%20HAR%20Dataset.zip",
              destfile="./Dataset.zip",
              mode="wb")
##Unzip the data
unzip("Dataset.zip",overwrite=TRUE,exdir="./data")

##Get list of unzipped files
flist<-list.files("./data",recursive=TRUE)
flist

#1. Merging the training and the test sets to create one data set.
## Training data
###Read the measurements data (X_train.txt)
trainData <- read.table("./data/UCI HAR Dataset/train/X_train.txt")
str(trainData)
###Read the activity type data (y_train.txt)
trainLabel <- read.table("./data/UCI HAR Dataset/train/y_train.txt")
str(trainLabel)
###Read the subject data(subject_train.txt)
trainSubject <- read.table("./data/UCI HAR Dataset/train/subject_train.txt")
str(trainSubject)
## Test data
###Read the measurement data(X_test.txt)
testData <- read.table("./data/UCI HAR Dataset/test/X_test.txt")
str(testData)
###Read the activty type data(y_test.txt)
testLabel <- read.table("./data/UCI HAR Dataset/test/y_test.txt") 
str(testLabel) 
###Read the subject data(subject_test.txt)
testSubject <- read.table("./data/UCI HAR Dataset/test/subject_test.txt")
##Merging the test and train data sets
###Merge the measurments data
mergedData <- rbind(trainData, testData)
dim(mergedData)
###Merge the activity data
mergedLabel <- rbind(trainLabel, testLabel)
dim(mergedLabel)
###Merge the subject data
mergedSubject <- rbind(trainSubject, testSubject)
dim(mergedSubject)

#2. Extract only the measurements for the mean and standard 
# deviation for each of the variables. 
##Read the measurement names from features.txt
features <- read.table("./data/UCI HAR Dataset/features.txt")
dim(features)  
##Identify the indexes of measurement values that correspond to Mean 
##and Standard deviation
meanStdIndices <- grep("mean\\(\\)|std\\(\\)", features$V2)
length(meanStdIndices)

##Subset the merged measurements data to retrieve only 
##the mean and standard deviations
mergedData <- mergedData[, meanStdIndices]
dim(mergedData)

##Assign and Perform clean up for the names of columns the measurements dataset
names(mergedData) <- gsub("\\(\\)", "", features[meanStdIndices, 2]) 
names(mergedData) <- gsub("\\(\\)", "",names(mergedData)) # Strip parantheses
names(mergedData) <- gsub("-", "", names(mergedData))  # remove "-" in column names

#3. Use descriptive activity names to name the activities in the data set
##Read the activity descriptions from activity_labels.txt
activity <- read.table("./data/UCI HAR Dataset/activity_labels.txt")
activity[, 2] <- tolower(gsub("_", "", activity[, 2]))
str(activity)
##Assign the activity descriptions to the labels dataset
activityLabel <- activity[mergedLabel[, 1], 2]
mergedLabel[, 1] <- activityLabel

#4. Label the data set with descriptive activity names.
##Assign column name to the activity type dataset
names(mergedLabel) <- "activity"
str(mergedLabel)
 
##Assign column name to the subject dataset
names(mergedSubject) <- "subject"
DataSet1 <- cbind(mergedSubject, mergedLabel, mergedData)
str(DataSet1)
write.table(DataSet1, "subject_activity_data.txt") # write out the 1st dataset

#5. Create a second, independent tidy data set with the average of 
# each variable for each activity and each subject. 
##Get count for subjects
subjectLen <- length(table(mergedSubject))
##Get count for activity
activityLen <- dim(activity)[1]
##Get the column count for data set
columnLen <- dim(DataSet1)[2]
##Create an empty data with number of rows equal to the subject count
## multiplied by activity count and column count same as original dataset 
DataSet2 <- matrix(NA, nrow=subjectLen*activityLen, ncol=columnLen) 
DataSet2 <- as.data.frame(DataSet2)
colnames(DataSet2) <- colnames(DataSet1)
row <- 1
##Loop through subjects and activities to summarize the data and calculate the means.
for(i in 1:subjectLen) {
  for(j in 1:activityLen) {
    DataSet2[row, 1] <- sort(unique(mergedSubject)[, 1])[i]
    DataSet2[row, 2] <- activity[j, 2]
    filter1 <- i == DataSet1$subject
    filter2 <- activity[j, 2] == DataSet1$activity
    DataSet2[row, 3:columnLen] <- colMeans(DataSet1[filter1&filter2, 3:columnLen])
    row <- row + 1
  }
}
str(DataSet2)
##write out the 2nd dataset
write.table(DataSet2, "subject_activity_averages.txt") 

