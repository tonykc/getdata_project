The variables in the tidy data set "result.txt" are separated by space.  

The list of variables are described below:

Seq|Field|Type|Description|Data Source
---|-----|----|-----------|-----------
1|subject|Numeric|Identifier for subject who performed the activity for each window sample.  Range from 1 to 30.|subject\_test.txt & subject\_train.txt.|
2|activity|Character|The activity performed by the subject: WALKING, WALKING\_UPSTAIRS, WALKING\_DOWNSTAIRS, SITTING, STANDING, LAYING.|Data sourced from y\_test.txt and y\_train.txt with descriptions mapped from activity_labels.txt|
3|tBodyAcc\_x\_mean|Numeric|The average on tBodyAcc-mean()-X for the subject and activity.  tBodyAcc-mean()-X stands for mean value of Body Acceleration in X direction.  The prefix 't' indicates time domain signals.|X\_test.txt & X\_train.txt.|
4|tBodyAcc\_y\_mean|Numeric|The average on tBodyAcc-mean()-Y for the subject and activity.  tBodyAcc-mean()-Y stands for mean value of Body Acceleration in Y direction.  |X\_test.txt & X\_train.txt.|
5|tBodyAcc\_z\_mean|Numeric|The average on tBodyAcc-mean()-Z for the subject and activity.  tBodyAcc-mean()-Z stands for mean value of Body Acceleration in Z direction.  |X\_test.txt & X\_train.txt.|
6|tBodyAcc\_x\_std|Numeric|The average on tBodyAcc-std()-X for the subject and activity.  tBodyAcc-std()-X stands for standard deviation of Body Acceleration in X direction.|X\_test.txt & X\_train.txt.|
7|tBodyAcc\_y\_std|Numeric|The average on tBodyAcc-std()-Y for the subject and activity.  tBodyAcc-std()-Y stands for standard deviation of Body Acceleration in Y direction.|X\_test.txt & X\_train.txt.|
8|tBodyAcc\_z\_std|Numeric|The average on tBodyAcc-std()-Z for the subject and activity.  tBodyAcc-std()-Z stands for standard deviation of Body Acceleration in Z direction.|X\_test.txt & X\_train.txt.|
9|tGravityAcc\_x\_mean|Numeric|The average on tGravityAcc-mean()-X for the subject and activity.  tGravityAcc-mean()-X stands for mean value of Gravity Acceleration in X direction.  |X\_test.txt & X\_train.txt.|
10|tGravityAcc\_y\_mean|Numeric|The average on tGravityAcc-mean()-Y for the subject and activity.  tGravityAcc-mean()-Y stands for mean value of Gravity Acceleration in Y direction.  |X\_test.txt & X\_train.txt.|
11|tGravityAcc\_z\_mean|Numeric|The average on tGravityAcc-mean()-Z for the subject and activity.  tGravityAcc-mean()-Z stands for mean value of Gravity Acceleration in Z direction.  |X\_test.txt & X\_train.txt.|
12|tGravityAcc\_x\_std|Numeric|The average on tGravityAcc-std()-X for the subject and activity.  tGravityAcc-std()-X stands for standard deviation of Gravity Acceleration in X direction.  |X\_test.txt & X\_train.txt.|
13|tGravityAcc\_y\_std|Numeric|The average on tGravityAcc-std()-Y for the subject and activity.  tGravityAcc-std()-Y stands for standard deviation of Gravity Acceleration in X direction.  |X\_test.txt & X\_train.txt.|
14|tGravityAcc\_z\_std|Numeric|The average on tGravityAcc-std()-Z for the subject and activity.  tGravityAcc-std()-Z stands for standard deviation of Gravity Acceleration in X direction.  |X\_test.txt & X\_train.txt.|
15|tBodyAccJerk\_x\_mean|Numeric|The average on tBodyAccJerk-mean()-X for the subject and activity.  tBodyAccJerk-mean()-X stands for mean value of Body Acceleration Jerk in X direction.  |X\_test.txt & X\_train.txt.|
16|tBodyAccJerk\_y\_mean|Numeric|The average on tBodyAccJerk-mean()-Y for the subject and activity.  tBodyAccJerk-mean()-Y stands for mean value of Body Acceleration Jerk in Y direction.  |X\_test.txt & X\_train.txt.|
17|tBodyAccJerk\_z\_mean|Numeric|The average on tBodyAccJerk-mean()-Z for the subject and activity.  tBodyAccJerk-mean()-Z stands for mean value of Body Acceleration Jerk in Z direction.  |X\_test.txt & X\_train.txt.|
18|tBodyAccJerk\_x\_std|Numeric|The average on tBodyAccJerk-std()-X for the subject and activity.  tBodyAccJerk-std()-X stands for standard deviation of Body Acceleration Jerk in X direction.  |X\_test.txt & X\_train.txt.|
19|tBodyAccJerk\_y\_std|Numeric|The average on tBodyAccJerk-std()-Y for the subject and activity.  tBodyAccJerk-std()-Y stands for standard deviation of Body Acceleration Jerk in Y direction.  |X\_test.txt & X\_train.txt.|
20|tBodyAccJerk\_z\_std|Numeric|The average on tBodyAccJerk-std()-Z for the subject and activity.  tBodyAccJerk-std()-Z stands for standard deviation of Body Acceleration Jerk in Z direction.  |X\_test.txt & X\_train.txt.|
21|tBodyGyro\_x\_mean|Numeric|The average on tBodyGyro-mean()-X for the subject and activity.  tBodyGyro-mean()-X stands for mean value of Body Angular Velocity in X direction.  |X\_test.txt & X\_train.txt.|
22|tBodyGyro\_y\_mean|Numeric|The average on tBodyGyro-mean()-Y for the subject and activity.  tBodyGyro-mean()-Y stands for mean value of Body Angular Velocity in Y direction.  |X\_test.txt & X\_train.txt.|
23|tBodyGyro\_z\_mean|Numeric|The average on tBodyGyro-mean()-Z for the subject and activity.  tBodyGyro-mean()-Z stands for mean value of Body Angular Velocity in Z direction.  |X\_test.txt & X\_train.txt.|
24|tBodyGyro\_x\_std|Numeric|The average on tBodyGyro-std()-X for the subject and activity.  tBodyGyro-std()-X stands for standard deviation of Body Angular Velocity in X direction.  |X\_test.txt & X\_train.txt.|
25|tBodyGyro\_y\_std|Numeric|The average on tBodyGyro-std()-Y for the subject and activity.  tBodyGyro-std()-Y stands for standard deviation of Body Angular Velocity in Y direction.  |X\_test.txt & X\_train.txt.|
26|tBodyGyro\_z\_std|Numeric|The average on tBodyGyro-std()-Z for the subject and activity.  tBodyGyro-std()-Z stands for standard deviation of Body Angular Velocity in Z direction.  |X\_test.txt & X\_train.txt.|
27|tBodyGyroJerk\_x\_mean|Numeric|The average on tBodyGyroJerk-mean()-X for the subject and activity.  tBodyGyroJerk-mean()-X stands for mean value of Body Angular Velocity Jerk in X direction.  |X\_test.txt & X\_train.txt.|
28|tBodyGyroJerk\_y\_mean|Numeric|The average on tBodyGyroJerk-mean()-Y for the subject and activity.  tBodyGyroJerk-mean()-Y stands for mean value of Body Angular Velocity Jerk in Y direction.  |X\_test.txt & X\_train.txt.|
29|tBodyGyroJerk\_z\_mean|Numeric|The average on tBodyGyroJerk-mean()-Z for the subject and activity.  tBodyGyroJerk-mean()-Z stands for mean value of Body Angular Velocity Jerk in Z direction.  |X\_test.txt & X\_train.txt.|
30|tBodyGyroJerk\_x\_std|Numeric|The average on tBodyGyroJerk-std()-X for the subject and activity.  tBodyGyroJerk-std()-X stands for standard deviation of Body Angular Velocity Jerk in X direction.  |X\_test.txt & X\_train.txt.|
31|tBodyGyroJerk\_y\_std|Numeric|The average on tBodyGyroJerk-std()-Y for the subject and activity.  tBodyGyroJerk-std()-Y stands for standard deviation of Body Angular Velocity Jerk in Y direction.  |X\_test.txt & X\_train.txt.|
32|tBodyGyroJerk\_z\_std|Numeric|The average on tBodyGyroJerk-std()-Z for the subject and activity.  tBodyGyroJerk-std()-Z stands for standard deviation of Body Angular Velocity Jerk in Z direction.  |X\_test.txt & X\_train.txt.|
33|tBodyAccMag\_mean|Numeric|The average on tBodyAccMag-mean() for the subject and activity.  tBodyAccMag-mean() stands for mean value of magnitude of jerk signals derived from body acceleration.  |X\_test.txt & X\_train.txt.|
34|tBodyAccMag\_std|Numeric|The average on tBodyAccMag-std()-x for the subject and activity.  tBodyAccMag-std()-x stands for standard deviation of magnitude of jerk signals derived from body acceleration.  |X\_test.txt & X\_train.txt.|
35|tGravityAccMag\_mean|Numeric|The average on tGravityAccMag-mean() for the subject and activity.  tGravityAccMag-mean() stands for mean value of magnitude of gravity accelevation.  |X\_test.txt & X\_train.txt.|
36|tGravityAccMag\_std|Numeric|The average on tGravityAccMag-std() for the subject and activity.  tGravityAccMag-std() stands for standard deviation of magnitude of gravity accelevation.  |X\_test.txt & X\_train.txt.|
37|tBodyAccJerkMag\_mean|Numeric|The average on tBodyAccJerkMag-mean() for the subject and activity.  tBodyAccJerkMag-mean() stands for mean value of magnitude of jerk signals derived from body acceleration.  |X\_test.txt & X\_train.txt.|
38|tBodyAccJerkMag\_std|Numeric|The average on tBodyAccJerkMag-std() for the subject and activity.  tBodyAccJerkMag-std() stands for standard deviation of magnitude of jerk signals derived from body acceleration.  |X\_test.txt & X\_train.txt.|
39|tBodyGyroMag\_mean|Numeric|The average on tBodyGyroMag-mean() for the subject and activity.  tBodyGyroMag-mean() stands for mean value of magnitude of Body Angular Velocity.  |X\_test.txt & X\_train.txt.|
40|tBodyGyroMag\_std|Numeric|The average on tBodyGyroMag-std() for the subject and activity.  tBodyGyroMag-std() stands for standard deviation of magnitude of Body Angular Velocity.  |X\_test.txt & X\_train.txt.|
41|tBodyGyroJerkMag\_mean|Numeric|The average on tBodyGyroJerkMag-mean() for the subject and activity.  tBodyGyroJerkMag-mean() stands for mean value of magnitude of jerk signals derived from Body Angular Velocity.  |X\_test.txt & X\_train.txt.|
42|tBodyGyroJerkMag\_std|Numeric|The average on tBodyGyroJerkMag-std() for the subject and activity.  tBodyGyroJerkMag-std() stands for standard deviation of magnitude of jerk signals derived from Body Angular Velocity.  |X\_test.txt & X\_train.txt.|
43|fBodyAcc\_x\_mean|Numeric|The average on fBodyAcc-mean()-X for the subject and activity.  fBodyAcc-mean()-X stands for mean value of frequency domain signals of body acceleration in X direction.|X\_test.txt & X\_train.txt.|
44|fBodyAcc\_y\_mean|Numeric|The average on fBodyAcc-mean()-Y for the subject and activity.  fBodyAcc-mean()-Y stands for mean value of frequency domain signals of body acceleration in Y direction.|X\_test.txt & X\_train.txt.|
45|fBodyAcc\_z\_mean|Numeric|The average on fBodyAcc-mean()-Z for the subject and activity.  fBodyAcc-mean()-Z stands for mean value of frequency domain signals of body acceleration in Z direction.|X\_test.txt & X\_train.txt.|
46|fBodyAcc\_x\_std|Numeric|The average on fBodyAcc-std()-X for the subject and activity.  fBodyAcc-std()-X stands for standard deviation of frequency domain signals of body acceleration in X direction.|X\_test.txt & X\_train.txt.|
47|fBodyAcc\_y\_std|Numeric|The average on fBodyAcc-std()-Y for the subject and activity.  fBodyAcc-std()-Y stands for standard deviation of frequency domain signals of body acceleration in Y direction.|X\_test.txt & X\_train.txt.|
48|fBodyAcc\_z\_std|Numeric|The average on fBodyAcc-std()-Z for the subject and activity.  fBodyAcc-std()-Z stands for standard deviation of frequency domain signals of body acceleration in Z direction.|X\_test.txt & X\_train.txt.|
49|fBodyAccJerk\_x\_mean|Numeric|The average on fBodyAccJerk-mean()-X for the subject and activity.  fBodyAccJerk-mean()-X stands for mean value of frequency domain signals of jerk derived from body acceleration in X direction.|X\_test.txt & X\_train.txt.|
50|fBodyAccJerk\_y\_mean|Numeric|The average on fBodyAccJerk-mean()-Y for the subject and activity.  fBodyAccJerk-mean()-Y stands for mean value of frequency domain signals of jerk derived from body acceleration in Y direction.|X\_test.txt & X\_train.txt.|
51|fBodyAccJerk\_z\_mean|Numeric|The average on fBodyAccJerk-mean()-Z for the subject and activity.  fBodyAccJerk-mean()-Z stands for mean value of frequency domain signals of jerk derived from body acceleration in Z direction.|X\_test.txt & X\_train.txt.|
52|fBodyAccJerk\_x\_std|Numeric|The average on fBodyAccJerk-std()-X for the subject and activity.  fBodyAccJerk-std()-X stands for standard deviation of frequency domain signals of jerk derived from body acceleration in X direction.|X\_test.txt & X\_train.txt.|
53|fBodyAccJerk\_y\_std|Numeric|The average on fBodyAccJerk-std()-Y for the subject and activity.  fBodyAccJerk-std()-Y stands for standard deviation of frequency domain signals of jerk derived from body acceleration in Y direction.|X\_test.txt & X\_train.txt.|
54|fBodyAccJerk\_z\_std|Numeric|The average on fBodyAccJerk-std()-Z for the subject and activity.  fBodyAccJerk-std()-Z stands for standard deviation of frequency domain signals of jerk derived from body acceleration in Z direction.|X\_test.txt & X\_train.txt.|
55|fBodyGyro\_x\_mean|Numeric|The average on fBodyGyro-mean()-X for the subject and activity.  fBodyGyro-mean()-X stands for mean value of frequency domain signals of body angular velocity in X direction.|X\_test.txt & X\_train.txt.|
56|fBodyGyro\_y\_mean|Numeric|The average on fBodyGyro-mean()-Y for the subject and activity.  fBodyGyro-mean()-Y stands for mean value of frequency domain signals of body angular velocity in Y direction.|X\_test.txt & X\_train.txt.|
57|fBodyGyro\_z\_mean|Numeric|The average on fBodyGyro-mean()-Z for the subject and activity.  fBodyGyro-mean()-Z stands for mean value of frequency domain signals of body angular velocity in Z direction.|X\_test.txt & X\_train.txt.|
58|fBodyGyro\_x\_std|Numeric|The average on fBodyGyro-std()-X for the subject and activity.  fBodyGyro-std()-X stands for standard deviation of frequency domain signals of body angular velocity in X direction.|X\_test.txt & X\_train.txt.|
59|fBodyGyro\_y\_std|Numeric|The average on fBodyGyro-std()-Y for the subject and activity.  fBodyGyro-std()-Y stands for standard deviation of frequency domain signals of body angular velocity in Y direction.|X\_test.txt & X\_train.txt.|
60|fBodyGyro\_z\_std|Numeric|The average on fBodyGyro-std()-Z for the subject and activity.  fBodyGyro-std()-Z stands for standard deviation of frequency domain signals of body angular velocity in Z direction.|X\_test.txt & X\_train.txt.|
61|fBodyAccMag\_mean|Numeric||
62|fBodyAccMag\_std|Numeric||
63|fBodyAccJerkMag\_mean|Numeric||
64|fBodyAccJerkMag\_std|Numeric||
65|fBodyGyroMag\_mean|Numeric||
66|fBodyGyroMag\_std|Numeric||
67|fBodyGyroJerkMag\_mean|Numeric||
68|fBodyGyroJerkMag\_std|Numeric||
