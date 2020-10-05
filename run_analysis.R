@@ -1,4 +1,6 @@
#1. Downloading and unzipping dataset
#******************************************************************
#Step 0. Downloading and unzipping dataset
#******************************************************************

if(!file.exists("./data")){dir.create("./data")}
#Here are the data for the project:
@@ -11,7 +13,7 @@ unzip(zipfile="./data/Dataset.zip",exdir="./data")
#You should create one R script called run_analysis.R that does the following.

#******************************************************************
#1.Merges the training and the test sets to create one data set.
#Step 1.Merges the training and the test sets to create one data set.
#******************************************************************

# 1.1 Reading files
@@ -55,7 +57,7 @@ setAllInOne <- rbind(mrg_train, mrg_test)
#[1] 10299   563

#******************************************************************
#2.-Extracts only the measurements on the mean and standard deviation for each measurement.
#Step 2.-Extracts only the measurements on the mean and standard deviation for each measurement.
#******************************************************************

#2.1 Reading column names:
@@ -75,21 +77,21 @@ mean_and_std <- (grepl("activityId" , colNames) |
setForMeanAndStd <- setAllInOne[ , mean_and_std == TRUE]

#******************************************************************
#3. Uses descriptive activity names to name the activities in the data set
#Step 3. Uses descriptive activity names to name the activities in the data set
#******************************************************************

setWithActivityNames <- merge(setForMeanAndStd, activityLabels,
                              by='activityId',
                              all.x=TRUE)

#******************************************************************
#4. Appropriately labels the data set with descriptive variable names.
#Step 4. Appropriately labels the data set with descriptive variable names.
#******************************************************************

#Done in previous steps, see 1.3,2.2 and 2.3!

#******************************************************************
#5. From the data set in step 4, creates a second, independent tidy data set with the average of each variable for each activity and each subject.
#Step 5. From the data set in step 4, creates a second, independent tidy data set with the average of each variable for each activity and each subject.
#******************************************************************

#5.1 Making a second tidy data set
