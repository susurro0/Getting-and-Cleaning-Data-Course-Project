library(dplyr)

# init variables
filename <- "Dataset.zip"
fileURL <- "https://d396qusza40orc.cloudfront.net/getdata%2Fprojectfiles%2FUCI%20HAR%20Dataset.zip"
targetFolder <- 'UCI HAR Dataset'

# Checking if folder exists
if (!file.exists(targetFolder)) { 
        # Checking if archieve already exists.
        if (!file.exists(filename)){
                #download zip, if not exist
                download.file(fileURL, filename, method="curl")
        }  
        
        #unzip file
        unzip(filename) 
}

#set worc directory to new folder

setwd(targetFolder)

#fetch features & activities list
features <- read.table('features.txt', col.names = c("id","functions"))
activities <- read.table('activity_labels.txt', col.names = c("activityId", "activityName"))

# fetch test data
subject_test <- read.table("test/subject_test.txt", col.names = "subjectId")
x_test <- read.table("test/X_test.txt", col.names = features[,2])
y_test <- read.table("test/y_test.txt", col.names = "activityId")

#fetch train data
subject_train <- read.table("train/subject_train.txt", , col.names = "subjectId")
x_train <- read.table("train/X_train.txt", col.names = features[,2])
y_train <- read.table("train/y_train.txt", col.names = "activityId")


# Task 1: Merges the training and the test sets to create one data set.
# Bind the rows from train and test together
x_merge <- rbind(x_train, x_test)
y_merge <- rbind(y_train, y_test)
subject_merge <- rbind(subject_train, subject_test)

#combine dataset in one table
data <- cbind(subject_merge, y_merge, x_merge )

# Task 2 Extracts only the measurements on the mean and standard deviation for each measurement.

#select -> keep only mentioned variables
extracted_data <- select(data, subjectId, activityId, contains("mean"), contains("std"))

# Task 3 Uses descriptive activity names to name the activities in the data set.

extracted_data[,2] <- activities[extracted_data[,2], 2]

# Task 4: Appropriately labels the data set with descriptive variable names.
#names(extracted_data)
# gsub(s1,s2,names) -> replace s1 with s2 from tablenames
names(extracted_data)<-gsub("^t", "Time", names(extracted_data))
names(extracted_data)<-gsub("^f", "Frequency", names(extracted_data))
names(extracted_data)<-gsub("-mean", "Mean", names(extracted_data))
names(extracted_data)<-gsub("-std", "Std", names(extracted_data))
names(extracted_data)<-gsub("activityId", "Activity", names(extracted_data))
names(extracted_data)<-gsub("angle", "Angle", names(extracted_data))
#names(extracted_data)

# Task 5: From the data set in step 4, creates a second, independent tidy data set with the average of each variable for each activity and each subject.

group <- group_by(extracted_data, subjectId, Activity)
final_data <- summarise_all(group, list(mean))
write.table(final_data, "Result.txt", row.name=FALSE)

