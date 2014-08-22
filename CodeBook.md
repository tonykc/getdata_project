The variables in the tidy data set "result.txt" are separated by space.  

The features selected come from the accelerometer and gyroscope 3-axial raw signals tAcc-XYZ and tGyro-XYZ. These time domain signals (prefix 't' to denote time) captured were filtered to remove noise. Similarly, the acceleration signal was then separated into body and gravity acceleration signals (tBodyAcc-XYZ and tGravityAcc-XYZ). 

Subsequently, the body linear acceleration and angular velocity were derived in time to obtain Jerk signals (tBodyAccJerk-XYZ and tBodyGyroJerk-XYZ). Also the magnitude of these three-dimensional signals were calculated  (tBodyAccMag, tGravityAccMag, tBodyAccJerkMag, tBodyGyroMag, tBodyGyroJerkMag). 

Finally a Fast Fourier Transform (FFT) was applied to some of these signals producing fBodyAcc-XYZ, fBodyAccJerk-XYZ, fBodyGyro-XYZ, fBodyAccJerkMag, fBodyGyroMag, fBodyGyroJerkMag. (Note the 'f' to indicate frequency domain signals). 

These signals were used to estimate variables of the feature vector for each pattern:  
'-XYZ' is used to denote 3-axial signals in the X, Y and Z directions.

tBodyAcc-XYZ
tGravityAcc-XYZ
tBodyAccJerk-XYZ
tBodyGyro-XYZ
tBodyGyroJerk-XYZ
tBodyAccMag
tGravityAccMag
tBodyAccJerkMag
tBodyGyroMag
tBodyGyroJerkMag
fBodyAcc-XYZ
fBodyAccJerk-XYZ
fBodyGyro-XYZ
fBodyAccMag
fBodyAccJerkMag
fBodyGyroMag
fBodyGyroJerkMag

The set of variables that were estimated from these signals are: 

mean(): Mean value
std(): Standard deviation

The list of variables are described below:

Field|Type|Description
-----|----|-----------
subject|Numeric|Identifier for subject who performed the activity for each window sample.  Range from 1 to 30.  Data sourced from subject\_test.txt and subject\_train.txt.
activity|Character|The activity performed: WALKING, WALKING\_UPSTAIRS, WALKING\_DOWNSTAIRS, SITTING, STANDING, LAYING.  Data sourced from y\_test.txt and y\_train.txt with descriptions mapped from activity_labels.txt
tBodyAcc\_x\_mean|Numeric|The average on tBodyAcc-mean()-X for the subject and activity.  tBodyAcc-mean()-X stands for mean value of Body Acceleration in X-axis.  The prefix 't' indicates time domain data.  Data sourced from X\_test.txt and X\_train.txt. |
tBodyAcc\_y\_mean|Numeric||
tBodyAcc\_z\_mean|Numeric||
tGravityAcc\_x\_mean|Numeric||
tGravityAcc\_y\_mean|Numeric||
tGravityAcc\_z\_mean|Numeric||
tBodyAccJerk\_x\_mean|Numeric||
tBodyAccJerk\_y\_mean|Numeric||
tBodyAccJerk\_z\_mean|Numeric||
tBodyGyro\_x\_mean|Numeric||
tBodyGyro\_y\_mean|Numeric||
tBodyGyro\_z\_mean|Numeric||
tBodyGyroJerk\_x\_mean|Numeric||
tBodyGyroJerk\_y\_mean|Numeric||
tBodyGyroJerk\_z\_mean|Numeric||
tBodyAccMag\_mean|Numeric||
tGravityAccMag\_mean|Numeric||
tBodyAccJerkMag\_mean|Numeric||
tBodyGyroMag\_mean|Numeric||
tBodyGyroJerkMag\_mean|Numeric||
fBodyAcc\_x\_mean|Numeric||
fBodyAcc\_y\_mean|Numeric||
fBodyAcc\_z\_mean|Numeric||
fBodyAccJerk\_x\_mean|Numeric||
fBodyAccJerk\_y\_mean|Numeric||
fBodyAccJerk\_z\_mean|Numeric||
fBodyGyro\_x\_mean|Numeric||
fBodyGyro\_y\_mean|Numeric||
fBodyGyro\_z\_mean|Numeric||
fBodyAccMag\_mean|Numeric||
fBodyBodyAccJerkMag\_mean|Numeric||
fBodyBodyGyroMag\_mean|Numeric||
fBodyBodyGyroJerkMag\_mean|Numeric||
tBodyAcc\_x\_std|Numeric||
tBodyAcc\_y\_std|Numeric||
tBodyAcc\_z\_std|Numeric||
tGravityAcc\_x\_std|Numeric||
tGravityAcc\_y\_std|Numeric||
tGravityAcc\_z\_std|Numeric||
tBodyAccJerk\_x\_std|Numeric||
tBodyAccJerk\_y\_std|Numeric||
tBodyAccJerk\_z\_std|Numeric||
tBodyGyro\_x\_std|Numeric||
tBodyGyro\_y\_std|Numeric||
tBodyGyro\_z\_std|Numeric||
tBodyGyroJerk\_x\_std|Numeric||
tBodyGyroJerk\_y\_std|Numeric||
tBodyGyroJerk\_z\_std|Numeric||
tBodyAccMag\_std|Numeric||
tGravityAccMag\_std|Numeric||
tBodyAccJerkMag\_std|Numeric||
tBodyGyroMag\_std|Numeric||
tBodyGyroJerkMag\_std|Numeric||
fBodyAcc\_x\_std|Numeric||
fBodyAcc\_y\_std|Numeric||
fBodyAcc\_z\_std|Numeric||
fBodyAccJerk\_x\_std|Numeric||
fBodyAccJerk\_y\_std|Numeric||
fBodyAccJerk\_z\_std|Numeric||
fBodyGyro\_x\_std|Numeric||
fBodyGyro\_y\_std|Numeric||
fBodyGyro\_z\_std|Numeric||
fBodyAccMag\_std|Numeric||
fBodyBodyAccJerkMag\_std|Numeric||
fBodyBodyGyroMag\_std|Numeric||
fBodyBodyGyroJerkMag\_std|Numeric||
