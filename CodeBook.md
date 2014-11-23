
1. Download the datasets from Internet location    
    * https://d396qusza40orc.cloudfront.net/getdata%2Fprojectfiles%2FUCI%20HAR%20Dataset.zip  
2. Unzip the compressed file containing the following data files   
	[1] "UCI HAR Dataset/activity_labels.txt"                         
	[2] "UCI HAR Dataset/features.txt"                                
	[3] "UCI HAR Dataset/features_info.txt"                           
	[4] "UCI HAR Dataset/README.txt"                                  
	[5] "UCI HAR Dataset/test/Inertial Signals/body_acc_x_test.txt"   
	[6] "UCI HAR Dataset/test/Inertial Signals/body_acc_y_test.txt"   
	[7] "UCI HAR Dataset/test/Inertial Signals/body_acc_z_test.txt"   
	[8] "UCI HAR Dataset/test/Inertial Signals/body_gyro_x_test.txt"  
	[9] "UCI HAR Dataset/test/Inertial Signals/body_gyro_y_test.txt"  
	[10] "UCI HAR Dataset/test/Inertial Signals/body_gyro_z_test.txt"  
	[11] "UCI HAR Dataset/test/Inertial Signals/total_acc_x_test.txt"  
	[12] "UCI HAR Dataset/test/Inertial Signals/total_acc_y_test.txt"  
	[13] "UCI HAR Dataset/test/Inertial Signals/total_acc_z_test.txt"  
	[14] "UCI HAR Dataset/test/subject_test.txt"                       
	[15] "UCI HAR Dataset/test/X_test.txt"                              
	[16] "UCI HAR Dataset/test/y_test.txt"                              
	[17] "UCI HAR Dataset/train/Inertial Signals/body_acc_x_train.txt"  
	[18] "UCI HAR Dataset/train/Inertial Signals/body_acc_y_train.txt"  
	[19] "UCI HAR Dataset/train/Inertial Signals/body_acc_z_train.txt"  
	[20] "UCI HAR Dataset/train/Inertial Signals/body_gyro_x_train.txt"  
	[21] "UCI HAR Dataset/train/Inertial Signals/body_gyro_y_train.txt"  
	[22] "UCI HAR Dataset/train/Inertial Signals/body_gyro_z_train.txt"  
	[23] "UCI HAR Dataset/train/Inertial Signals/total_acc_x_train.txt"  
	[24] "UCI HAR Dataset/train/Inertial Signals/total_acc_y_train.txt"  
	[25] "UCI HAR Dataset/train/Inertial Signals/total_acc_z_train.txt"  
	[26] "UCI HAR Dataset/train/subject_train.txt"                       
	[27] "UCI HAR Dataset/train/X_train.txt"                             
	[28] "UCI HAR Dataset/train/y_train.txt"  
1. Merging the training and the test sets to create one data set.
	* Training data
		* Read the measurements data (X_train.txt)
		* Read the activity type data (y_train.txt)
		* Read the subject data(subject_train.txt)
	* Test data
		* Read the measurement data(X_test.txt)
		* Read the activity type data(y_test.txt)
		* Read the subject data(subject_test.txt)
	* Merging the test and train data sets
		* Merge the measurements data
		* Merge the activity data
		* Merge the subject data
2. Extract only the measurements for the mean and standard deviation for each of the variables. 
	* Subset the merged measurements data to retrieve only the mean and standard deviations
	* Assign and Perform clean up for the names of columns the measurements dataset
3. Use descriptive activity names to name the activities in the data set
	* Read the activity descriptions from activity_labels.txt
	* Assign the activity descriptions to the labels dataset
	 
4. Label the data set with descriptive activity names. 
	* Assign column name to the activity type dataset
	* Assign column name to the subject dataset
  * Output the data set as subject_activity_data.txt
  * The data set consists of 10299 observations of  68 variables:
    * subject                 : int  
		* activity                : chr  
		* tBodyAccmeanX           : num  
		* tBodyAccmeanY           : num  
		* tBodyAccmeanZ           : num  
		* tBodyAccstdX            : num  
		* tBodyAccstdY            : num  
		* tBodyAccstdZ            : num  
		* tGravityAccmeanX        : num  
		* tGravityAccmeanY        : num  
		* tGravityAccmeanZ        : num  
		* tGravityAccstdX         : num  
		* tGravityAccstdY         : num  
		* tGravityAccstdZ         : num  
		* tBodyAccJerkmeanX       : num  
		* tBodyAccJerkmeanY       : num  
		* tBodyAccJerkmeanZ       : num  
		* tBodyAccJerkstdX        : num  
		* tBodyAccJerkstdY        : num  
		* tBodyAccJerkstdZ        : num  
		* tBodyGyromeanX          : num  
		* tBodyGyromeanY          : num  
		* tBodyGyromeanZ          : num  
		* tBodyGyrostdX           : num  
		* tBodyGyrostdY           : num  
		* tBodyGyrostdZ           : num  
		* tBodyGyroJerkmeanX      : num  
		* tBodyGyroJerkmeanY      : num  
		* tBodyGyroJerkmeanZ      : num  
		* tBodyGyroJerkstdX       : num  
		* tBodyGyroJerkstdY       : num  
		* tBodyGyroJerkstdZ       : num  
		* tBodyAccMagmean         : num  
		* tBodyAccMagstd          : num  
		* tGravityAccMagmean      : num  
		* tGravityAccMagstd       : num  
		* tBodyAccJerkMagmean     : num  
		* tBodyAccJerkMagstd      : num  
		* tBodyGyroMagmean        : num  
		* tBodyGyroMagstd         : num  
		* tBodyGyroJerkMagmean    : num  
		* tBodyGyroJerkMagstd     : num  
		* fBodyAccmeanX           : num  
		* fBodyAccmeanY           : num  
		* fBodyAccmeanZ           : num  
		* fBodyAccstdX            : num  
		* fBodyAccstdY            : num  
		* fBodyAccstdZ            : num  
		* fBodyAccJerkmeanX       : num  
		* fBodyAccJerkmeanY       : num  
		* fBodyAccJerkmeanZ       : num  
		* fBodyAccJerkstdX        : num  
		* fBodyAccJerkstdY        : num  
		* fBodyAccJerkstdZ        : num  
		* fBodyGyromeanX          : num  
		* fBodyGyromeanY          : num  
		* fBodyGyromeanZ          : num  
		* fBodyGyrostdX           : num  
		* fBodyGyrostdY           : num  
		* fBodyGyrostdZ           : num  
		* fBodyAccMagmean         : num  
		* fBodyAccMagstd          : num  
		* fBodyBodyAccJerkMagmean : num  
		* fBodyBodyAccJerkMagstd  : num  
		* fBodyBodyGyroMagmean    : num  
		* fBodyBodyGyroMagstd     : num  
		* fBodyBodyGyroJerkMagmean: num  
		* fBodyBodyGyroJerkMagstd : num  
  
5. Create a second, independent tidy data set with the average of each variable for each activity and each subject.
	* Get count for subjects
	* Get count for activity
	* Get the column count for data set
	* Create an empty data with number of rows equal to the subject count
	* multiplied by activity count and column count same as original dataset
	* Loop through subjects and activities to summarize the data and calculate the means.
	* Output the dataset as subject_activity_averages.txt  
  * The dataset consists 180 observations of  68 variables:
    * subject                 : int  
		* activity                : chr  
		* tBodyAccmeanX           : num  
		* tBodyAccmeanY           : num  
		* tBodyAccmeanZ           : num  
		* tBodyAccstdX            : num  
		* tBodyAccstdY            : num  
		* tBodyAccstdZ            : num  
		* tGravityAccmeanX        : num  
		* tGravityAccmeanY        : num  
		* tGravityAccmeanZ        : num  
		* tGravityAccstdX         : num  
		* tGravityAccstdY         : num  
		* tGravityAccstdZ         : num  
		* tBodyAccJerkmeanX       : num  
		* tBodyAccJerkmeanY       : num  
		* tBodyAccJerkmeanZ       : num  
		* tBodyAccJerkstdX        : num  
		* tBodyAccJerkstdY        : num  
		* tBodyAccJerkstdZ        : num  
		* tBodyGyromeanX          : num  
		* tBodyGyromeanY          : num  
		* tBodyGyromeanZ          : num  
		* tBodyGyrostdX           : num  
		* tBodyGyrostdY           : num  
		* tBodyGyrostdZ           : num  
		* tBodyGyroJerkmeanX      : num  
		* tBodyGyroJerkmeanY      : num  
		* tBodyGyroJerkmeanZ      : num  
		* tBodyGyroJerkstdX       : num  
		* tBodyGyroJerkstdY       : num  
		* tBodyGyroJerkstdZ       : num  
		* tBodyAccMagmean         : num  
		* tBodyAccMagstd          : num  
		* tGravityAccMagmean      : num  
		* tGravityAccMagstd       : num  
		* tBodyAccJerkMagmean     : num  
		* tBodyAccJerkMagstd      : num  
		* tBodyGyroMagmean        : num  
		* tBodyGyroMagstd         : num  
		* tBodyGyroJerkMagmean    : num  
		* tBodyGyroJerkMagstd     : num  
		* fBodyAccmeanX           : num  
		* fBodyAccmeanY           : num  
		* fBodyAccmeanZ           : num  
		* fBodyAccstdX            : num  
		* fBodyAccstdY            : num  
		* fBodyAccstdZ            : num  
		* fBodyAccJerkmeanX       : num  
		* fBodyAccJerkmeanY       : num  
		* fBodyAccJerkmeanZ       : num  
		* fBodyAccJerkstdX        : num  
		* fBodyAccJerkstdY        : num  
		* fBodyAccJerkstdZ        : num  
		* fBodyGyromeanX          : num  
		* fBodyGyromeanY          : num  
		* fBodyGyromeanZ          : num  
		* fBodyGyrostdX           : num  
		* fBodyGyrostdY           : num  
		* fBodyGyrostdZ           : num  
		* fBodyAccMagmean         : num  
		* fBodyAccMagstd          : num  
		* fBodyBodyAccJerkMagmean : num  
		* fBodyBodyAccJerkMagstd  : num  
		* fBodyBodyGyroMagmean    : num  
		* fBodyBodyGyroMagstd     : num  
		* fBodyBodyGyroJerkMagmean: num  
		* fBodyBodyGyroJerkMagstd : num   
    