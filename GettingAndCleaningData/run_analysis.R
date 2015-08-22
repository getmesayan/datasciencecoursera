#The Zip Data is loaded and unzipped to a location
#The R working directory is pointed to that location

#loads the training data

x_train <- read.table("train/X_train.txt")
y_train <- read.table("train/y_train.txt")
subject_train <- read.table("train/subject_train.txt")

#loads the test data

x_test <- read.table("test/X_test.txt")
y_test <- read.table("test/y_test.txt")
subject_test <- read.table("test/subject_test.txt")

#Performs Step 1 of assignment
#Merges the training and the test sets to create one data set.
# create 'x' data set
x_data <- rbind(x_train, x_test)
# create 'y' data set
y_data <- rbind(y_train, y_test)
# create 'subject' data set
subject_data <- rbind(subject_train, subject_test)

# Performs Step 2 of assignment
# Extract only the measurements on the mean and standard deviation 
#for each measurement
features <- read.table("features.txt")
mean_and_std_features <- grep("-(mean|std)\\(\\)", features[, 2])

# subset the desired columns from features and change the column names
x_data <- x_data[, mean_and_std_features]
names(x_data) <- features[mean_and_std_features, 2]

#Performs Step 3
#3. Uses descriptive activity names to name the activities in the data set
# update values with correct activity names
activities <- read.table("activity_labels.txt")
y_data[, 1] <- activities[y_data[, 1], 2]

#Performa Step 4 of assignment
#Appropriately labels the data set with descriptive variable names. 
names(y_data) <- "Activity"

#  column name for subject
names(subject_data) <- "Subject"

# bind all the data in a single data set
all_data <- cbind(x_data, y_data, subject_data)

names(all_data)<-gsub("Acc", "Accelerometer", names(all_data))
names(all_data)<-gsub("Gyro", "Gyroscope", names(all_data))
names(all_data)<-gsub("^t", "Time", names(all_data))
names(all_data)<-gsub("^f", "Frequency", names(all_data))
names(all_data)<-gsub("-mean()", "Mean", names(all_data), ignore.case = TRUE)
names(all_data)<-gsub("-std()", "STD", names(all_data), ignore.case = TRUE)
names(all_data)<-gsub("BodyBody", "Body", names(all_data))
names(all_data)<-gsub("Mag", "Magnitude", names(all_data))

#Performs Step 5 in assignment
#From the data set in step 4, creates a second, independent tidy data set 
#with the average of
#each variable for each activity and each subject.
require(plyr)
averages_data <- ddply(all_data, .(Subject, Activity),numcolwise(mean))
write.table(averages_data, "tidy_data.txt", row.name=FALSE)
