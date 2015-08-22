##What the document contains
The following document conatains an explanation for the variables and data in the final tida data set produced

##The final columns
| column       | description                                              | type    |
| ------------ | -------------------------------------------------------- | ------- |
| Subject      | Identifier of the subject                                | integer |
| Activity     | Label of the activity                                    | factor  |
| MeanSamples  | Mean of variables by Subject + Activity provided in tidy | numeric |

Following are the columns present in the tidy data set.

 [1] "Subject"                                      
 [2] "Activity"                                     
 [3] "TimeBodyAccelerometerMean()-X"                
 [4] "TimeBodyAccelerometerMean()-Y"                
 [5] "TimeBodyAccelerometerMean()-Z"                
 [6] "TimeBodyAccelerometerSTD()-X"                 
 [7] "TimeBodyAccelerometerSTD()-Y"                 
 [8] "TimeBodyAccelerometerSTD()-Z"                 
 [9] "TimeGravityAccelerometerMean()-X"             
[10] "TimeGravityAccelerometerMean()-Y"             
[11] "TimeGravityAccelerometerMean()-Z"             
[12] "TimeGravityAccelerometerSTD()-X"              
[13] "TimeGravityAccelerometerSTD()-Y"              
[14] "TimeGravityAccelerometerSTD()-Z"              
[15] "TimeBodyAccelerometerJerkMean()-X"            
[16] "TimeBodyAccelerometerJerkMean()-Y"            
[17] "TimeBodyAccelerometerJerkMean()-Z"            
[18] "TimeBodyAccelerometerJerkSTD()-X"             
[19] "TimeBodyAccelerometerJerkSTD()-Y"             
[20] "TimeBodyAccelerometerJerkSTD()-Z"             
[21] "TimeBodyGyroscopeMean()-X"                    
[22] "TimeBodyGyroscopeMean()-Y"                    
[23] "TimeBodyGyroscopeMean()-Z"                    
[24] "TimeBodyGyroscopeSTD()-X"                     
[25] "TimeBodyGyroscopeSTD()-Y"                     
[26] "TimeBodyGyroscopeSTD()-Z"                     
[27] "TimeBodyGyroscopeJerkMean()-X"                
[28] "TimeBodyGyroscopeJerkMean()-Y"                
[29] "TimeBodyGyroscopeJerkMean()-Z"                
[30] "TimeBodyGyroscopeJerkSTD()-X"                 
[31] "TimeBodyGyroscopeJerkSTD()-Y"                 
[32] "TimeBodyGyroscopeJerkSTD()-Z"                 
[33] "TimeBodyAccelerometerMagnitudeMean()"         
[34] "TimeBodyAccelerometerMagnitudeSTD()"          
[35] "TimeGravityAccelerometerMagnitudeMean()"      
[36] "TimeGravityAccelerometerMagnitudeSTD()"       
[37] "TimeBodyAccelerometerJerkMagnitudeMean()"     
[38] "TimeBodyAccelerometerJerkMagnitudeSTD()"      
[39] "TimeBodyGyroscopeMagnitudeMean()"             
[40] "TimeBodyGyroscopeMagnitudeSTD()"              
[41] "TimeBodyGyroscopeJerkMagnitudeMean()"         
[42] "TimeBodyGyroscopeJerkMagnitudeSTD()"          
[43] "FrequencyBodyAccelerometerMean()-X"           
[44] "FrequencyBodyAccelerometerMean()-Y"           
[45] "FrequencyBodyAccelerometerMean()-Z"           
[46] "FrequencyBodyAccelerometerSTD()-X"            
[47] "FrequencyBodyAccelerometerSTD()-Y"            
[48] "FrequencyBodyAccelerometerSTD()-Z"            
[49] "FrequencyBodyAccelerometerJerkMean()-X"       
[50] "FrequencyBodyAccelerometerJerkMean()-Y"       
[51] "FrequencyBodyAccelerometerJerkMean()-Z"       
[52] "FrequencyBodyAccelerometerJerkSTD()-X"        
[53] "FrequencyBodyAccelerometerJerkSTD()-Y"        
[54] "FrequencyBodyAccelerometerJerkSTD()-Z"        
[55] "FrequencyBodyGyroscopeMean()-X"               
[56] "FrequencyBodyGyroscopeMean()-Y"               
[57] "FrequencyBodyGyroscopeMean()-Z"               
[58] "FrequencyBodyGyroscopeSTD()-X"                
[59] "FrequencyBodyGyroscopeSTD()-Y"                
[60] "FrequencyBodyGyroscopeSTD()-Z"                
[61] "FrequencyBodyAccelerometerMagnitudeMean()"    
[62] "FrequencyBodyAccelerometerMagnitudeSTD()"     
[63] "FrequencyBodyAccelerometerJerkMagnitudeMean()"
[64] "FrequencyBodyAccelerometerJerkMagnitudeSTD()" 
[65] "FrequencyBodyGyroscopeMagnitudeMean()"        
[66] "FrequencyBodyGyroscopeMagnitudeSTD()"         
[67] "FrequencyBodyGyroscopeJerkMagnitudeMean()"    
[68] "FrequencyBodyGyroscopeJerkMagnitudeSTD()"

##What the column names singnify
The original column names have been expanded to make it more descriptive.
"Acc", "Accelerometer"
"Gyro", "Gyroscope"
"^t", "Time"
"^f", "Frequency"
"-mean()", "Mean"
"-std()", "STD"
"BodyBody", "Body"
"Mag", "Magnitude"

Excerpts from original thread describing the variables
mean(): Mean value
std(): Standard deviation

The features selected for this database come from the accelerometer and gyroscope 3-axial raw signals tAcc-XYZ and tGyro-XYZ. These time domain signals (prefix 't' to denote time) were captured at a constant rate of 50 Hz. Then they were filtered using a median filter and a 3rd order low pass Butterworth filter with a corner frequency of 20 Hz to remove noise. Similarly, the acceleration signal was then separated into body and gravity acceleration signals (tBodyAcc-XYZ and tGravityAcc-XYZ) using another low pass Butterworth filter with a corner frequency of 0.3 Hz. 

Subsequently, the body linear acceleration and angular velocity were derived in time to obtain Jerk signals (tBodyAccJerk-XYZ and tBodyGyroJerk-XYZ). Also the magnitude of these three-dimensional signals were calculated using the Euclidean norm (tBodyAccMag, tGravityAccMag, tBodyAccJerkMag, tBodyGyroMag, tBodyGyroJerkMag). 

Finally a Fast Fourier Transform (FFT) was applied to some of these signals producing fBodyAcc-XYZ, fBodyAccJerk-XYZ, fBodyGyro-XYZ, fBodyAccJerkMag, fBodyGyroMag, fBodyGyroJerkMag. (Note the 'f' to indicate frequency domain signals). 

These signals were used to estimate variables of the feature vector for each pattern:  
'-XYZ' is used to denote 3-axial signals in the X, Y and Z directions.

tBodyAcc-XYZ
tGravityAcc-XYZ
tBodyAccJerk-XYZ
tBodyGyro-XYZ
tBodyGyroJerk-XYZ
tBodyAccMag
tGravityAccMag
tBodyAccJerkMag
tBodyGyroMag
tBodyGyroJerkMag
fBodyAcc-XYZ
fBodyAccJerk-XYZ
fBodyGyro-XYZ
fBodyAccMag
fBodyAccJerkMag
fBodyGyroMag
fBodyGyroJerkMag

