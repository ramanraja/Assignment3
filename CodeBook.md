Codebook
========
Tidy Samsung Data
-----------------
Samsung mobile phones were used with 30 subjects to monitor their normal activities that include sitting, standing, walking, lying down, walking up or down a stair case. Accelerometer and Gyroscope readings were provided along the X,Y and Z axes. The raw data was present in two directories named 'Inertial Signals'. 

In this study, we are not using the raw data, but a processed form of the data. Data is divided into test and training sets. Subjects and activities are numerically coded in two separate files. The original data dictionary features_info.txt from the Coursera web site is also included in this repository for completeness.

Input data was provided in two separate dirctories, split into training and test sets. The training set had 7352 observations and the test set had 2947 observations of 561 variables each. The variable names were found from the file features.txt.

Data transformations
--------------------
The following transformations were performed on the data set as part of this project using R code:

(1) Subject number and activity code were available in separate files. They were merged with the 3-axis data  using column binding. This process was repeated for the test and training sets separately.

(2) The test and training sets were merged using row binding.

(3) The activity labels were read from the file activity_labels.txt. The activity codes were replaced by the human readable activiy labels.

(4) The 3-axis variable names were read from the file 'features.txt'. The data set columns were set accordingly.

(5) Columns with the substrings 'mean' and 'std' were extracted by text search. There were 79 such columns.

(6) The subset of the data frame consisting of the selected columns was extracted. 

(7) The column averages were found for each subject and each activity. The result was a processed tidy data set. 

(8) The tidy data set was saved in a tab separated text file 'TidySamsungData.txt'.

Output Description
------------------
The final data set consists of the following 81 columns. 

The first two columns are the subject ID and the descriptive activity label.
The remaining 79 columns are the Average processed parameters consisting of the means and standard deviations.

subject
activity
tBodyAcc.mean...X
tBodyAcc.mean...Y
tBodyAcc.mean...Z
tGravityAcc.mean...X
tGravityAcc.mean...Y
tGravityAcc.mean...Z
tBodyAccJerk.mean...X
tBodyAccJerk.mean...Y
tBodyAccJerk.mean...Z
tBodyGyro.mean...X
tBodyGyro.mean...Y
tBodyGyro.mean...Z
tBodyGyroJerk.mean...X
tBodyGyroJerk.mean...Y
tBodyGyroJerk.mean...Z
tBodyAccMag.mean..
tGravityAccMag.mean..
tBodyAccJerkMag.mean..
tBodyGyroMag.mean..
tBodyGyroJerkMag.mean..
fBodyAcc.mean...X
fBodyAcc.mean...Y
fBodyAcc.mean...Z
fBodyAcc.meanFreq...X
fBodyAcc.meanFreq...Y
fBodyAcc.meanFreq...Z
fBodyAccJerk.mean...X
fBodyAccJerk.mean...Y
fBodyAccJerk.mean...Z
fBodyAccJerk.meanFreq...X
fBodyAccJerk.meanFreq...Y
fBodyAccJerk.meanFreq...Z
fBodyGyro.mean...X
fBodyGyro.mean...Y
fBodyGyro.mean...Z
fBodyGyro.meanFreq...X
fBodyGyro.meanFreq...Y
fBodyGyro.meanFreq...Z
fBodyAccMag.mean..
fBodyAccMag.meanFreq..
fBodyBodyAccJerkMag.mean..
fBodyBodyAccJerkMag.meanFreq..
fBodyBodyGyroMag.mean..
fBodyBodyGyroMag.meanFreq..
fBodyBodyGyroJerkMag.mean..
fBodyBodyGyroJerkMag.meanFreq..
tBodyAcc.std...X
tBodyAcc.std...Y
tBodyAcc.std...Z
tGravityAcc.std...X
tGravityAcc.std...Y
tGravityAcc.std...Z
tBodyAccJerk.std...X
tBodyAccJerk.std...Y
tBodyAccJerk.std...Z
tBodyGyro.std...X
tBodyGyro.std...Y
tBodyGyro.std...Z
tBodyGyroJerk.std...X
tBodyGyroJerk.std...Y
tBodyGyroJerk.std...Z
tBodyAccMag.std..
tGravityAccMag.std..
tBodyAccJerkMag.std..
tBodyGyroMag.std..
tBodyGyroJerkMag.std..
fBodyAcc.std...X
fBodyAcc.std...Y
fBodyAcc.std...Z
fBodyAccJerk.std...X
fBodyAccJerk.std...Y
fBodyAccJerk.std...Z
fBodyGyro.std...X
fBodyGyro.std...Y
fBodyGyro.std...Z
fBodyAccMag.std..
fBodyBodyAccJerkMag.std..
fBodyBodyGyroMag.std..
fBodyBodyGyroJerkMag.std..
