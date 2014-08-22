# setwd ("d:\\coursera\\getdata\\UCI HAR Dataset")

#
# Objectives
#
# (1) Merges the training and the test sets to create one data set.
# (2) Extracts only the measurements on the mean and standard deviation for each measurement. 
# (3) Uses descriptive activity names to name the activities in the data set
# (4) Appropriately labels the data set with descriptive variable names. 
# (5) Creates a second, independent tidy data set with the average of each variable for each activity and each subject. 
#

# 
# Merge the training and test sets by "appending" the tables 
# from the training set to tables from test set.
#
# data_raw$all_var: 
#   List of all measurements to be summarized.  Note that when the
#   data were first read, all the measurements are just packed in a
#   single string column.  We need to extract those required 
#   measurements on mean, named like "mean()" and standard deviation,
#   named like "std()" for each measurement.  
#   Note that I've tried using read.fwf to read all measurements as
#   separated fields in one go.  This failed due to "not enough 
#   memory".
#
# data_subject$subject: 
#   List of subject IDs of corresponding rows in data_raw.
#
# data_activity$activity_code: 
#   List of activity labels of corresponding rows in data_raw
#
data_raw <- rbind (
  read.csv (".\\test\\X_test.txt", header=FALSE, col.names=c("all_var")),
  read.csv (".\\train\\X_train.txt", header=FALSE, col.names=c("all_var"))
)
data_subject <- rbind (
  read.csv (".\\test\\subject_test.txt", header=FALSE, col.names=c("subject")),
  read.csv (".\\train\\subject_train.txt", header=FALSE, col.names=c("subject"))
)
data_activity <- rbind (
  read.csv (".\\test\\y_test.txt", header=FALSE, col.names=c("activity_code")),
  read.csv (".\\train\\y_train.txt", header=FALSE, col.names=c("activity_code"))
)

# 
# Retrieve the list of measurements by reading the file "features.txt" as
# "meta-data" (data about the data) provided.
#
# Extract those required measuremnts on mean and standard deviation by
# "grep"ing the names with "mean()" and "std()".
#
# variables$index: 
#   Index of variable in the files X_test.txt & X_train.txt, i.e.
#   data_raw$V1.
# variables$var_org: 
#   The "original" variable name provided.  Same examples are:
#   tBodyAcc-mean()-X & fBodyGyro-std()-Y, etc.
# variables$var: 
#   "Modified" variable names: omit the "()", change "-" to "_".
#   Also, put "mean" and "std" at the end, so that "functions" being
#   applied to the measurements are always stated at the end of 
#   the variable name.
#   Change "fBodyBody" to "fBody" to fix some incorrect entries 
#   found in features.txt.
#
variables <- read.table (
  "features.txt", header=FALSE, sep=" ", col.names = c("index", "var_org"))
variables <- rbind (
  variables [grep ("mean\\(\\)", variables$var_org),], 
  variables [grep ("std\\(\\)", variables$var_org),]
)
# Using gsub to do the variable names modifications.
variables$var <- gsub ("-mean\\(\\)-X", "_x_mean", variables$var_org)
variables$var <- gsub ("-mean\\(\\)-Y", "_y_mean", variables$var)
variables$var <- gsub ("-mean\\(\\)-Z", "_z_mean", variables$var)
variables$var <- gsub ("-std\\(\\)-X", "_x_std", variables$var)
variables$var <- gsub ("-std\\(\\)-Y", "_y_std", variables$var)
variables$var <- gsub ("-std\\(\\)-Z", "_z_std", variables$var)
variables$var <- gsub ("-mean\\(\\)", "_mean", variables$var)
variables$var <- gsub ("-std\\(\\)", "_std", variables$var)
variables$var <- gsub ("fBodyBody", "fBody", variables$var)

#
# Extract the required mean and std of measurements by "sapply":
# For each variable required, use its "index" as a pointer to
# cut, substr, its value from the data$all_var.  Note that each
# of these measurements variables are of width "16".
# 
# Store the extracted variables in a data frame call "data".
# Name the variables using the modified variable names prepared.
#
data <- sapply (
  variables$index, 
  function (x) (
    as.numeric (substr (data_raw$all_var, (x * 16) - 15, x * 16))
  )
)
data <- as.data.frame (data)
colnames (data) <- variables$var

#
# Create a second data set "result" with the average of each variable for
# each activity and each subject. 
#
result <- aggregate (
  data, 
  list (data_subject$subject, data_activity$activity_code), FUN=mean)
colnames (result)[1:2] <- c ("subject", "activity_code")

#
# Read the file activity_lables.txt into data frame activity_label.
# This would serve as a lookup table for the activity description 
# using the activity_code in "result".  
#
activity_label <- read.fwf ("activity_labels.txt", c(2, 18))
colnames (activity_label) <- c ("activity_code", "activity")
result <- merge (
  result, activity_label, 
  by.x = "activity_code", by.y = "activity_code"
)
#
# Rearrange the variables in "result" so that,
# the activity_code is dropped; subject becomes
# the first column while the activity becomes the 2nd.
#
result <- result [, c(2,69,3:68)]

#
# Output the tidy data set to a txt file.
# For reference, the file could be read by:
#   r <- read.table ("result.txt", header=TRUE)
#
write.table (result, file="result.txt", row.name=FALSE)





