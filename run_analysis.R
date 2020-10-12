# Merge training and test sets to one set.
# Extract the measurements on the mean and standard deviation for each measurement.
# From this, create a second, independent set with the average of each variable for each activity and each subject.

# List of required packages 
Packages <- c("data.table", "reshape2")
lapply(Packages, require, quietly=TRUE, character.only=TRUE)

# getwd()
# for these next functions to work the data must be in your working directory
# ~~~
# Loading activity labels + features that will be used to parse the test and train sets
activity_labels <- fread("UCI HAR Dataset/activity_labels.txt", col.names = c("activity_index", "activity_name"))
features <- fread("UCI HAR Dataset/features.txt", col.names = c("features_index", "feature_names"))
# Now we tidy our data
features_tidy <- grep("(mean|std)\\(\\)", features[, feature_names])
almost_tidy <- features[features_tidy, feature_names]
measurements_tidy <- gsub('[()]', '', almost_tidy)

#load test data
test <- fread("UCI HAR Dataset/test/X_test.txt")[, features_tidy, with = FALSE]
#label data
data.table::setnames(test, colnames(test), measurements_tidy)
#load addittional relevant info in training set
test_activities <- fread("UCI HAR Dataset/test/Y_test.txt", col.names = c("Activity"))
test_subjects <- fread("UCI HAR Dataset/test/subject_test.txt", col.names = c("SubjectNum"))
#combining test with the desired data 
test <- cbind(test, test_activities, test_subjects)

#load training data
train <- fread("UCI HAR Dataset/train/X_train.txt")[, features_tidy, with = FALSE]
#label data
data.table::setnames(train, colnames(train), measurements_tidy)
#load relevant info in training set
train_activities <- fread("UCI HAR Dataset/train/Y_train.txt", col.names = c("Activity"))
train_subjects <- fread("UCI HAR Dataset/train/subject_train.txt", col.names = c("SubjectNum"))
#combining train with the desired data 
train <- cbind(train, train_activities, train_subjects)

# ~~~
# merge data
# ~~~
merged <- rbind(train, test)
#replacing numbers with meaningful labels
merged[["Activity"]] <- factor(merged[, Activity], levels = activity_labels[["activity_index"]], labels = activity_labels[["activity_name"]])
# melt followed by dcast for final formatting, 
merged <- reshape2::melt(data = merged, id = c("SubjectNum", "Activity"))
merged <- reshape2::dcast(data = merged, SubjectNum + Activity ~ variable, fun.aggregate = mean)
# export file
write.table(merged,file = "tidyData.txt",row.name=FALSE)  