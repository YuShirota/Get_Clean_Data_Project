### Analysis of human activity
### To look at the data, Notepad++ may be necessary
### dplyr package is needed
### please open the resulting txt file using read.table(file, header = TRUE)

# all files are copied to a directory "UCIHARDataset" under the working directory
train_file <- "UCIHARDataset/X_train.txt"
train_subject <- "UCIHARDataset/subject_train.txt"
train_activity <- "UCIHARDataset/Y_train.txt" 
test_file <- "UCIHARDataset/X_test.txt"
test_subject <- "UCIHARDataset/subject_test.txt"
test_activity <- "UCIHARDataset/Y_test.txt"

## read files into R: Step 0 ##
# for train set:
train <- read.table(train_file)
subject_train <- read.table(train_subject)
activity_train <- read.table(train_activity)
train$subject_id <- subject_train$V1
train$activity <- activity_train$V1
# for test set:
test <- read.table(test_file)
subject_test <- read.table(test_subject)
activity_test <- read.table(test_activity)
test$subject_id <- subject_test$V1
test$activity <- activity_test$V1

## merge two datasets: Step 1 ##
merged <- merge(train, test, all = TRUE)

## assign features as the column names: this is supposed to be Step 4 ##
feat <- "UCIHARDataset/features.txt"
features <- read.table(feat)    # features$V2 shows names of features
vars <- as.character(features$V2)         # This is the vector for features
colnames(merged) <- c(vars, "subject_id", "activity")

## extract columns containing "mean", "Mean", or "std": Step 2 ##
# first, variable names are extracted
means <- grep("mean", names(merged), value = TRUE)
Means <- grep("Mean", names(merged), value = TRUE)
stds <- grep("std", names(merged), value = TRUE)
cols <- c(means, Means, stds, "subject_id", "activity")
# subset the "merged" data frame
merged <- merged[, cols]

## label the activities: Step 3 ##
act_labels <- read.table("UCIHARDataset/activity_labels.txt")
merged$activity <- factor(merged$activity, labels = act_labels$V2)

## Step 4 is already done between Steps 1 and 2 ##

## average for each activity for each subject: Step 5 ##
library(dplyr)
dd <- group_by(merged, subject_id, activity)
dd2 <- summarise_each(dd, funs(mean))
write.table(dd2, file = "getdataproject.txt", row.names = FALSE)