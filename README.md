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
2. Unzip the source data file.  The following sub-directories and files would be created:
  .\UCI HAR Dataset\
  .\UCI HAR Dataset\  
  .\UCI HAR Dataset\test\X_test.txt
  .\UCI HAR Dataset\test\y_test.txt
3. Start R-console and set the working directory to the directory "UCI HAR Dataset" in 2), using the command setwd ("...").
4. Execute the run_analysis.R in this repo.
5. 
