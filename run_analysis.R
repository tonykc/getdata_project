# setwd ("d:\\coursera\\getdata\\UCI HAR Dataset")

subjects <- rbind (
  read.csv (".\\test\\subject_test.txt", header=FALSE),
  read.csv (".\\train\\subject_train.txt", header=FALSE)
)
raw <- rbind (
  read.csv (".\\test\\X_test.txt", header=FALSE),
  read.csv (".\\train\\X_train.txt", header=FALSE)
)
label <- rbind (
  read.csv (".\\test\\y_test.txt", header=FALSE),
  read.csv (".\\train\\y_train.txt", header=FALSE)
)
variables <- read.table (".\\features.txt", header=FALSE, sep=" ")

activity_label <- read.fwf ("activity_labels.txt", c(2, 18))
colnames (activity_label) <- c ("activity_code", "activity")

variables <- rbind (
  variables [grep ("mean\\(\\)", variables$V2),], 
  variables [grep ("std\\(\\)", variables$V2),]
)
variables$var <- gsub ("-mean\\(\\)-X", "_x_mean", variables$V2)
variables$var <- gsub ("-mean\\(\\)-Y", "_y_mean", variables$var)
variables$var <- gsub ("-mean\\(\\)-Z", "_z_mean", variables$var)
variables$var <- gsub ("-std\\(\\)-X", "_x_std", variables$var)
variables$var <- gsub ("-std\\(\\)-Y", "_y_std", variables$var)
variables$var <- gsub ("-std\\(\\)-Z", "_z_std", variables$var)
variables$var <- gsub ("-mean\\(\\)", "_mean", variables$var)
variables$var <- gsub ("-std\\(\\)", "_std", variables$var)

#lapply (variables, function (as.numeric (substr (raw$V1, f$start, f$end))))

data <- sapply (
  variables$V1, 
  function (x) (
    as.numeric (substr (raw$V1, (x * 16) - 15, x * 16))
  )
)
data <- as.data.frame (data)
              
colnames (data) <- variables$var

result <- aggregate (data, list (subjects$V1, label$V1), FUN=mean)
colnames (result)[1:2] <- c ("subject", "activity_code")

result <- merge (
  result, activity_label, 
  by.x = "activity_code", by.y = "activity_code"
)

