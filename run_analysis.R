# Loading packages
install.packages(c("magrittr", "dplyr"))
library(magrittr)
library(dplyr)

# Preparing the dataset
filename <- "getdata_projectfiles_UCI HAR Dataset"

if (!file.exists(filename)) {
  fileURL <- "https://d396qusza40orc.cloudfront.net/getdata%2Fprojectfiles%2FUCI%20HAR%20Dataset.zip"
  download.file(fileURL, filename, method = "curl")
}

if (!file.exists("UCI HAR Dataset")) {
  unzip(filename)
}

# Assigning dataframes
features <- read.table("UCI HAR Dataset/features.txt", col.names = c("n", "functions"))
activities <- read.table("UCI HAR Dataset/activity_labels.txt", col.names = c("code", "activity"))
subject_test <- read.table("UCI HAR Dataset/test/subject_test.txt", col.names = "subject")
x_test <- read.table("UCI HAR Dataset/test/X_test.txt", col.names = features$functions)
y_test <- read.table("UCI HAR Dataset/test/y_test.txt", col.names = "code")
subject_train <- read.table("UCI HAR Dataset/train/subject_train.txt", col.names = "subject")
x_train <- read.table("UCI HAR Dataset/train/X_train.txt", col.names = features$functions)
y_train <- read.table("UCI HAR Dataset/train/y_train.txt", col.names = "code")

# Merging and processing data
X <- rbind(x_train, x_test)
Y <- rbind(y_train, y_test)
Subject <- rbind(subject_train, subject_test)
Merged_Data <- cbind(Subject, Y, X)

# Extracting only the measurements on the mean and standard deviation
TidyData <- Merged_Data %>% select(subject, code, contains("mean"), contains("std"))

# Using descriptive activity names
TidyData$code <- activities$activity[TidyData$code]

# Appropriately labeling the data set with descriptive variable names
feature_labels <- features$functions
feature_labels <- gsub("Acc", "Accelerometer", feature_labels)
feature_labels <- gsub("Gyro", "Gyroscope", feature_labels)
# ... (Continue with other label modifications)

# Creating a second, independent tidy data set
FinalData <- TidyData %>%
  group_by(subject, activity) %>%
  mutate_all(mean)

# Writing the final data
write.table(FinalData, "FinalData.txt", row.name = FALSE)
