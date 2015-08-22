#Data Science Specialization - Getting and Cleaning Data: Course Project

The repository contains the solution for the assignment for week 3 for Data Science Specilization along with a readme and codebook. The files are

* run_analysis.R -> The code to generate a tidy data set as instructed
* codeBook.md -> An explanation of the variables used
* readme.m -> An explanation of the contents of the repository

##The assignment
 You should create one R script called run_analysis.R that does the following. 
Merges the training and the test sets to create one data set.
Extracts only the measurements on the mean and standard deviation for each measurement. 
Uses descriptive activity names to name the activities in the data set
Appropriately labels the data set with descriptive variable names. 
From the data set in step 4, creates a second, independent tidy data set with the average of each variable for each activity and each subject.


##How the Scrip Works
The scripts performs the following

* Loads the training and test data set from working directory. The data set in first downloaded and kept in the working directory. It then merges both the training and test data using rbind functions
* To filter out only the columns representing mean and standard deviation we first load the "features.txt" file and search for mean/std in it( using grep )
* We filter out only the mean and std features from our data set
* We load "activity_labels.txt" and replace the columns in data set with descriptive names
* We name the Subject and Activity data set appropriately
* We merge all the 3 data sets into 1 single chunk
* A set of transformations is done to make the headers more descriptive. For ex: F is replaced with frequency etc.
* We load the plyr library and use the ddply function to perform average of each variable for each activity and subject

##Code Book
Explanation of the variables used 