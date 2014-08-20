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
feature <- read.fwf (".\\features.txt", header=FALSE)
f <- rbind (
  feature [grep ("mean\\(\\)", feature$V2),], 
  feature [grep ("std\\(\\)", feature$V2),]
)
f$var <- gsub ("-mean\\(\\)-X", "_x_mean", f$V2)
f$var <- gsub ("-mean\\(\\)-Y", "_y_mean", f$var)
f$var <- gsub ("-mean\\(\\)-Z", "_z_mean", f$var)
f$var <- gsub ("-std\\(\\)-X", "_x_std", f$var)
f$var <- gsub ("-std\\(\\)-Y", "_y_std", f$var)
f$var <- gsub ("-std\\(\\)-Z", "_z_std", f$var)
f$var <- gsub ("-mean\\(\\)", "_mean", f$var)
f$var <- gsub ("-std\\(\\)", "_std", f$var)
f$start <- f$V1 * 16 - 15
f$end <- f$V1 * 16

lapply (f, function (as.numeric (substr (raw$V1, f$start, f$end))))

t1 <- sapply (
  f$V1, 
  function (x) (
    as.numeric (substr (raw$V1, x * 16 - 15, x * 16))
  )
)
              
colnames (t1) <- f$var
dim (t1)
result <- aggregate (t2, list (subjects$V1, label$V1), FUN=mean)






combined_data <- rbind (test_data, train_data)
activity_label <- read.fwf ("activity_labels.txt", c(2, 18))
colnames (activity_label) <- c ("activity_code", "activity")
combined_data <- merge (combined_data, activity_label, 
                        by.x = "activity_code", by.y = "activity_code")
