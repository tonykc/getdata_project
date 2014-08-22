## Course project of "Getting and Cleaning Data"

### Objectives
The goal is to prepare a tidy data set for later analysis.  The source data were collected from the accelerometers from the Samsung Galaxy S smartphone: http://archive.ics.uci.edu/ml/datasets/Human+Activity+Recognition+Using+Smartphones.

Here are the data for the project: 
https://d396qusza40orc.cloudfront.net/getdata%2Fprojectfiles%2FUCI%20HAR%20Dataset.zip 


### Files
Below are the list of the files in this repository:
- README.md - This file to describe the steps to generate the tidy data set.

- run_anlaysis.R - The script to do the actual process to generate the tidy data set.

- CodeBook.md - The code book that describes the variables, the data, and transformations performed.
 
### Steps to generate the tidy data set
1. Download the source data zip file and save it to PC.
2. Unzip the source data file.  The following sub-directories and files created would be used in the script run_analysis.R provided:
  - .\UCI HAR Dataset\activity_labels.txt
  - .\UCI HAR Dataset\features.txt  
  - .\UCI HAR Dataset\test\subject_test.txt
  - .\UCI HAR Dataset\test\X_test.txt
  - .\UCI HAR Dataset\test\y_test.txt
  - .\UCI HAR Dataset\train\subject_test.txt
  - .\UCI HAR Dataset\train\X_test.txt
  - .\UCI HAR Dataset\train\y_test.txt
3. Start R-console and set the working directory to the directory "UCI HAR Dataset" in 2).  (By setwd (...) command)
4. Execute the run_analysis.R in this repo. You may copy and paste it into R-console for execution.
5. After the execution, a txt file "result.txt" would be created in the working directory.

### Notes on run_analysis.R 
The requirements on run_analysis.R for preparing the target tidy data set include the following:  
1. Merges the training and the test sets to create one data set.
2. Extracts only the measurements on the mean and standard deviation for each measurement. 
3. Uses descriptive activity names to name the activities in the data set
4. Appropriately labels the data set with descriptive variable names. 
5. Creates a second, independent tidy data set with the average of each variable for each activity and each subject. 

In order to satisfy (2), we need to determine which variables listed in features.txt have to be included.  The file features_info.txt was studied.  The following statements were found in it:

... The set of variables that were estimated from these signals are:

mean(): Mean value

std(): Standard deviation

...

Based on this, it was decided that only those "features/variables" which looked like "...mean()..." or "...std()..." would be included.
