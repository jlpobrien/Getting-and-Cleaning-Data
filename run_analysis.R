##Task0##
#Install packages and data.

setwd("#your_wd")

fileurl = "https://d396qusza40orc.cloudfront.net/getdata%2Fprojectfiles%2FUCI%20HAR%20Dataset.zip"
if (!file.exists('./UCI HAR Dataset.zip')){
  download.file(fileurl,"./UCI HAR Dataset.zip")
  unzip("UCI HAR Dataset.zip", exdir = getwd())
}

##Task1##
#Merges the training and the test sets to create one data set.

subject_test <- read.table("UCI HAR Dataset/test/subject_test.txt",header=FALSE)
subject_train <- read.table("UCI HAR Dataset/train/subject_train.txt",header=FALSE)
X_test <- read.table("UCI HAR Dataset/test/X_test.txt",header=FALSE)
X_train <- read.table("UCI HAR Dataset/train/X_train.txt",header=FALSE)
y_test <- read.table("UCI HAR Dataset/test/y_test.txt",header=FALSE)
y_train <- read.table("UCI HAR Dataset/train/y_train.txt",header=FALSE)
activity_labels <- read.table("UCI HAR Dataset/activity_labels.txt",header=FALSE)
features <- read.table("UCI HAR Dataset/features.txt",header=FALSE)  

merged_x <- rbind(X_train, X_test)
merged_y <- rbind(y_train, y_test)
merged_subject <- rbind(subject_train, subject_test)

names(merged_subject) <- c("subject")
names(merged_y) <- c("activity")
names(merged_x) <- features[,2]

merged_subject_and_y <- cbind(merged_subject, merged_y)
merged_data1 <- cbind(merged_subject_and_y,merged_x)

##Task2##
#Extracts only the measurements on the mean and standard deviation for each measurement.

mean_sdt <- grep("mean\\(\\)|std\\(\\)", features[,2])
merged_data2 <- merged_data1[,c(1,2,mean_sdt + 2)]

##Task3##
#Uses descriptive activity names to name the activities in the data set

activity_labels2 <- as.character(activity_labels[,2])
merged_data2$activity <- activity_labels2[merged_data2$activity]

##Task4##
#Appropriately labels the data set with descriptive variable names.

names(merged_data2) <- gsub("^t", "Time", names(merged_data2))
names(merged_data2) <- gsub("^f", "Frequency", names(merged_data2))
names(merged_data2) <- gsub("Acc", "Accelerometer", names(merged_data2))
names(merged_data2) <- gsub("Gyro", "Gyroscope", names(merged_data2))
names(merged_data2) <- gsub("Mag", "Magnitude", names(merged_data2))
names(merged_data2) <- gsub("BodyBody", "Body", names(merged_data2))

##Task5##
#From the data set in step 4, creates a second, independent tidy data set with the average of each variable for each activity and each subject.

library(dplyr)

merged_data3 <- merged_data2 %>%
  group_by(subject, activity) %>%
  summarise_all(funs(mean))

##Task6##
#Create tidy data text file

write.table(merged_data3, file = "./UCI HAR Dataset/tidydata.txt", row.names = FALSE, col.names = TRUE)

