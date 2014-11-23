Getting and Cleaning Data - PeerAssessment
==========================================

One of the most exciting areas in all of data science right now is wearable computing - see for example  this article . Companies like Fitbit, Nike, and Jawbone Up are racing to develop the most advanced algorithms to attract new users. The data linked to from the course website represent data collected from the accelerometers from the Samsung Galaxy S smartphone. A full description is available at the site where the data was obtained: 

http://archive.ics.uci.edu/ml/datasets/Human+Activity+Recognition+Using+Smartphones 

The RAW data for our analysis is being hosted as a compressed file: 

https://d396qusza40orc.cloudfront.net/getdata%2Fprojectfiles%2FUCI%20HAR%20Dataset.zip 

Initial analysis perfomed on 11/21/2014.

The run_analysis.R script performs the following steps:  
  1. Download the raw data  
  2. Merge the test and train data contained in the RAW data set  
  3. Transform the data to prepare a tidy data set of Subjects mean and standard deviation measurement values for each activity.  
  4. Create a second tidy data set with the averages of the measurment values for each subject and thier activity.  
  5. Output the first dataset as subject_activity_data.txt and second dataset as subject_activity_averages.txt files.   
