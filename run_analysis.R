# setwd ("d:\\coursera\\getdata\\UCI HAR Dataset")

read_files <- function (set_of_data) {
  file_path <- paste (".\\", set_of_data, "\\", sep = "") 
  file_subject <- paste (file_path, "subject_", set_of_data, ".txt", sep = "")
  file_data_all <- paste (file_path, "X_", set_of_data, ".txt", sep = "")
  file_label <- paste (file_path, "y_", set_of_data, ".txt", sep = "")
  
  subjects <- read.csv (file_subject, header=FALSE)
  variables_all <- read.csv (file_data_all, header=FALSE)
  labels <- read.csv (file_label, header=FALSE)
  merged_data <- 
    cbind (subjects, labels, 
           as.numeric (substr (variables_all$V1, 1, 16)), # 1 tBodyAcc-mean()-X
           as.numeric (substr (variables_all$V1, 17, 32)), # 2 tBodyAcc-mean()-Y
           as.numeric (substr (variables_all$V1, 33, 48)), # 3 tBodyAcc-mean()-Z
           as.numeric (substr (variables_all$V1, 49, 64)), # 4 tBodyAcc-std()-X
           as.numeric (substr (variables_all$V1, 65, 80)), # 5 tBodyAcc-std()-Y
           as.numeric (substr (variables_all$V1, 81, 96)), # 6 tBodyAcc-std()-Z
           as.numeric (substr (variables_all$V1, 641, 656)), # 41 tGravityAcc-mean()-X
           as.numeric (substr (variables_all$V1, 657, 672)), # 42 tGravityAcc-mean()-Y
           as.numeric (substr (variables_all$V1, 673, 688)), # 43 tGravityAcc-mean()-Z
           as.numeric (substr (variables_all$V1, 689, 704)), # 44 tGravityAcc-std()-X
           as.numeric (substr (variables_all$V1, 705, 720)), # 45 tGravityAcc-std()-Y
           as.numeric (substr (variables_all$V1, 721, 736)), # 46 tGravityAcc-std()-Z
           as.numeric (substr (variables_all$V1, 1281, 1296)), # 81 tBodyAccJerk-mean()-X
           as.numeric (substr (variables_all$V1, 1297, 1312)), # 82 tBodyAccJerk-mean()-Y
           as.numeric (substr (variables_all$V1, 1313, 1328)), # 83 tBodyAccJerk-mean()-Z
           as.numeric (substr (variables_all$V1, 1329, 1344)), # 84 tBodyAccJerk-std()-X
           as.numeric (substr (variables_all$V1, 1345, 1360)), # 85 tBodyAccJerk-std()-Y
           as.numeric (substr (variables_all$V1, 1361, 1376)), # 86 tBodyAccJerk-std()-Z
           as.numeric (substr (variables_all$V1, 1921, 1936)), # 121 tBodyGyro-mean()-X
           as.numeric (substr (variables_all$V1, 1937, 1952)), # 122 tBodyGyro-mean()-Y
           as.numeric (substr (variables_all$V1, 1953, 1968)), # 123 tBodyGyro-mean()-Z
           as.numeric (substr (variables_all$V1, 1969, 1984)), # 124 tBodyGyro-std()-X
           as.numeric (substr (variables_all$V1, 1985, 2000)), # 125 tBodyGyro-std()-Y
           as.numeric (substr (variables_all$V1, 2001, 2016)), # 126 tBodyGyro-std()-Z
           as.numeric (substr (variables_all$V1, 2561, 2576)), # 161 tBodyGyroJerk-mean()-X
           as.numeric (substr (variables_all$V1, 2577, 2592)), # 162 tBodyGyroJerk-mean()-Y
           as.numeric (substr (variables_all$V1, 2593, 2608)), # 163 tBodyGyroJerk-mean()-Z
           as.numeric (substr (variables_all$V1, 2609, 2624)), # 164 tBodyGyroJerk-std()-X
           as.numeric (substr (variables_all$V1, 2625, 2640)), # 165 tBodyGyroJerk-std()-Y
           as.numeric (substr (variables_all$V1, 2641, 2656)), # 166 tBodyGyroJerk-std()-Z
           as.numeric (substr (variables_all$V1, 3201, 3216)), # 201 tBodyAccMag-mean()
           as.numeric (substr (variables_all$V1, 3217, 3232)), # 202 tBodyAccMag-std()
           as.numeric (substr (variables_all$V1, 3409, 3424)), # 214 tGravityAccMag-mean()
           as.numeric (substr (variables_all$V1, 3425, 3440)), # 215 tGravityAccMag-std()
           as.numeric (substr (variables_all$V1, 3617, 3632)), # 227 tBodyAccJerkMag-mean()
           as.numeric (substr (variables_all$V1, 3633, 3648)), # 228 tBodyAccJerkMag-std()
           as.numeric (substr (variables_all$V1, 3825, 3840)), # 240 tBodyGyroMag-mean()
           as.numeric (substr (variables_all$V1, 3841, 3856)), # 241 tBodyGyroMag-std()
           as.numeric (substr (variables_all$V1, 4033, 4048)), # 253 tBodyGyroJerkMag-mean()
           as.numeric (substr (variables_all$V1, 4049, 4064)), # 254 tBodyGyroJerkMag-std()
           as.numeric (substr (variables_all$V1, 4241, 4256)), # 266 fBodyAcc-mean()-X
           as.numeric (substr (variables_all$V1, 4257, 4272)), # 267 fBodyAcc-mean()-Y
           as.numeric (substr (variables_all$V1, 4273, 4288)), # 268 fBodyAcc-mean()-Z
           as.numeric (substr (variables_all$V1, 4289, 4304)), # 269 fBodyAcc-std()-X
           as.numeric (substr (variables_all$V1, 4305, 4320)), # 270 fBodyAcc-std()-Y
           as.numeric (substr (variables_all$V1, 4321, 4336)), # 271 fBodyAcc-std()-Z
           as.numeric (substr (variables_all$V1, 5505, 5520)), # 345 fBodyAccJerk-mean()-X
           as.numeric (substr (variables_all$V1, 5521, 5536)), # 346 fBodyAccJerk-mean()-Y
           as.numeric (substr (variables_all$V1, 5537, 5552)), # 347 fBodyAccJerk-mean()-Z
           as.numeric (substr (variables_all$V1, 5553, 5568)), # 348 fBodyAccJerk-std()-X
           as.numeric (substr (variables_all$V1, 5569, 5584)), # 349 fBodyAccJerk-std()-Y
           as.numeric (substr (variables_all$V1, 5585, 5600)), # 350 fBodyAccJerk-std()-Z
           as.numeric (substr (variables_all$V1, 6769, 6784)), # 424 fBodyGyro-mean()-X
           as.numeric (substr (variables_all$V1, 6785, 6800)), # 425 fBodyGyro-mean()-Y
           as.numeric (substr (variables_all$V1, 6801, 6816)), # 426 fBodyGyro-mean()-Z
           as.numeric (substr (variables_all$V1, 6817, 6832)), # 427 fBodyGyro-std()-X
           as.numeric (substr (variables_all$V1, 6833, 6848)), # 428 fBodyGyro-std()-Y
           as.numeric (substr (variables_all$V1, 6849, 6864)), # 429 fBodyGyro-std()-Z
           as.numeric (substr (variables_all$V1, 8033, 8048)), # 503 fBodyAccMag-mean()
           as.numeric (substr (variables_all$V1, 8049, 8064)), # 504 fBodyAccMag-std()
           as.numeric (substr (variables_all$V1, 8241, 8256)), # 516 fBodyBodyAccJerkMag-mean()
           as.numeric (substr (variables_all$V1, 8257, 8272)), # 517 fBodyBodyAccJerkMag-std()
           as.numeric (substr (variables_all$V1, 8449, 8464)), # 529 fBodyBodyGyroMag-mean()
           as.numeric (substr (variables_all$V1, 8465, 8480)), # 530 fBodyBodyGyroMag-std()
           as.numeric (substr (variables_all$V1, 8657, 8672)), # 542 fBodyBodyGyroJerkMag-mean()
           as.numeric (substr (variables_all$V1, 8673, 8688)) # 543 fBodyBodyGyroJerkMag-std()
    )
  colnames (merged_data) <- 
    c ('subject', 'activity_code',
       'tBodyAccMeanX',
       'tBodyAccMeanY',
       'tBodyAcc-mean()-Z',
       'tBodyAcc-std()-X',
       'tBodyAcc-std()-Y',
       'tBodyAcc-std()-Z',
       'tGravityAcc-mean()-X',
       'tGravityAcc-mean()-Y',
       'tGravityAcc-mean()-Z',
       'tGravityAcc-std()-X',
       'tGravityAcc-std()-Y',
       'tGravityAcc-std()-Z',
       'tBodyAccJerk-mean()-X',
       'tBodyAccJerk-mean()-Y',
       'tBodyAccJerk-mean()-Z',
       'tBodyAccJerk-std()-X',
       'tBodyAccJerk-std()-Y',
       'tBodyAccJerk-std()-Z',
       'tBodyGyro-mean()-X',
       'tBodyGyro-mean()-Y',
       'tBodyGyro-mean()-Z',
       'tBodyGyro-std()-X',
       'tBodyGyro-std()-Y',
       'tBodyGyro-std()-Z',
       'tBodyGyroJerk-mean()-X',
       'tBodyGyroJerk-mean()-Y',
       'tBodyGyroJerk-mean()-Z',
       'tBodyGyroJerk-std()-X',
       'tBodyGyroJerk-std()-Y',
       'tBodyGyroJerk-std()-Z',
       'tBodyAccMag-mean()',
       'tBodyAccMag-std()',
       'tGravityAccMag-mean()',
       'tGravityAccMag-std()',
       'tBodyAccJerkMag-mean()',
       'tBodyAccJerkMag-std()',
       'tBodyGyroMag-mean()',
       'tBodyGyroMag-std()',
       'tBodyGyroJerkMag-mean()',
       'tBodyGyroJerkMag-std()',
       'fBodyAcc-mean()-X',
       'fBodyAcc-mean()-Y',
       'fBodyAcc-mean()-Z',
       'fBodyAcc-std()-X',
       'fBodyAcc-std()-Y',
       'fBodyAcc-std()-Z',
       'fBodyAccJerk-mean()-X',
       'fBodyAccJerk-mean()-Y',
       'fBodyAccJerk-mean()-Z',
       'fBodyAccJerk-std()-X',
       'fBodyAccJerk-std()-Y',
       'fBodyAccJerk-std()-Z',
       'fBodyGyro-mean()-X',
       'fBodyGyro-mean()-Y',
       'fBodyGyro-mean()-Z',
       'fBodyGyro-std()-X',
       'fBodyGyro-std()-Y',
       'fBodyGyro-std()-Z',
       'fBodyAccMag-mean()',
       'fBodyAccMag-std()',
       'fBodyBodyAccJerkMag-mean()',
       'fBodyBodyAccJerkMag-std()',
       'fBodyBodyGyroMag-mean()',
       'fBodyBodyGyroMag-std()',
       'fBodyBodyGyroJerkMag-mean()',
       'fBodyBodyGyroJerkMag-std()'
       )
  return (merged_data)
}

test_data <- read_files ("test")
train_data <- read_files ("train")

combined_data <- rbind (test_data, train_data)
activity_label <- read.fwf ("activity_labels.txt", c(2, 18))
colnames (activity_label) <- c ("activity_code", "activity")
combined_data <- merge (combined_data, activity_label, 
                        by.x = "activity_code", by.y = "activity_code")
