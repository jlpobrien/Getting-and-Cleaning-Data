Code Book
==========

## Step0
Set up working directory. Download and unzip the data. 

## Step1 
Read data into separte data frames and merge them using `rbind`. Variables are:

* subject_test : Subject numbers for test
* subject_train  : Subject numbers for train
* X_test : Test set
* X_train : Training set
* y_test : Test labels
* y_train : Training labels
* activity_labels : class labels and activity name
* features : List of all features

Further information is available in the 'READ.ME' file attached to the repo.

## Step2 
Only mean() and std() are extracted.
A vector of only mean and standard deviation is extracted from second column of 'features' data.frame. Then this is used to filter out these columns from existing merged data variable.

## Step3
Activity labels are attached to merged data (mean and SD only).

## Step4
Labels are renamed so dataset is more tidy.

## Step5
Using the `tidyr` package, the average of each variable for each activity and each subject is added to the merged dataset. Finally, a textfile of data is created, which is also attached to repo.

## Columns in output file

Columns included in the output file are:

Subject_id - The id of the experiment participant.
  
Activity_labels - The name of the activities column in dataset are: `WALKING`, `WALKING_UPSTAIRS``WALKING_DOWNSTAIRS``SITTING``STANDING`,`LAYING`

list of Measurements (with mean and standard deviations):
  
"subject"                                        
"activity"                                      
"TimeBodyAccelerometer-mean()-X"                 
"TimeBodyAccelerometer-mean()-Y"                
"TimeBodyAccelerometer-mean()-Z"                 
"TimeBodyAccelerometer-std()-X"                 
"TimeBodyAccelerometer-std()-Y"                  
"TimeBodyAccelerometer-std()-Z"                 
"TimeGravityAccelerometer-mean()-X"              
"TimeGravityAccelerometer-mean()-Y"             
"TimeGravityAccelerometer-mean()-Z"              
"TimeGravityAccelerometer-std()-X"              
"TimeGravityAccelerometer-std()-Y"               
"TimeGravityAccelerometer-std()-Z"              
"TimeBodyAccelerometerJerk-mean()-X"             
"TimeBodyAccelerometerJerk-mean()-Y"            
"TimeBodyAccelerometerJerk-mean()-Z"             
"TimeBodyAccelerometerJerk-std()-X"             
"TimeBodyAccelerometerJerk-std()-Y"              
"TimeBodyAccelerometerJerk-std()-Z"             
"TimeBodyGyroscope-mean()-X"                     
"TimeBodyGyroscope-mean()-Y"                    
"TimeBodyGyroscope-mean()-Z"                     
"TimeBodyGyroscope-std()-X"                     
"TimeBodyGyroscope-std()-Y"                      
"TimeBodyGyroscope-std()-Z"                     
"TimeBodyGyroscopeJerk-mean()-X"                 
"TimeBodyGyroscopeJerk-mean()-Y"                
"TimeBodyGyroscopeJerk-mean()-Z"                 
"TimeBodyGyroscopeJerk-std()-X"                 
"TimeBodyGyroscopeJerk-std()-Y"                  
"TimeBodyGyroscopeJerk-std()-Z"                 
"TimeBodyAccelerometerMagnitude-mean()"          
"TimeBodyAccelerometerMagnitude-std()"          
"TimeGravityAccelerometerMagnitude-mean()"       
"TimeGravityAccelerometerMagnitude-std()"       
"TimeBodyAccelerometerJerkMagnitude-mean()"      
"TimeBodyAccelerometerJerkMagnitude-std()"      
"TimeBodyGyroscopeMagnitude-mean()"              
"TimeBodyGyroscopeMagnitude-std()"              
"TimeBodyGyroscopeJerkMagnitude-mean()"          
"TimeBodyGyroscopeJerkMagnitude-std()"          
"FrequencyBodyAccelerometer-mean()-X"            
"FrequencyBodyAccelerometer-mean()-Y"           
"FrequencyBodyAccelerometer-mean()-Z"            
"FrequencyBodyAccelerometer-std()-X"            
"FrequencyBodyAccelerometer-std()-Y"             
"FrequencyBodyAccelerometer-std()-Z"            
"FrequencyBodyAccelerometerJerk-mean()-X"        
"FrequencyBodyAccelerometerJerk-mean()-Y"       
"FrequencyBodyAccelerometerJerk-mean()-Z"        
"FrequencyBodyAccelerometerJerk-std()-X"        
"FrequencyBodyAccelerometerJerk-std()-Y"         
"FrequencyBodyAccelerometerJerk-std()-Z"        
"FrequencyBodyGyroscope-mean()-X"                
"FrequencyBodyGyroscope-mean()-Y"               
"FrequencyBodyGyroscope-mean()-Z"                
"FrequencyBodyGyroscope-std()-X"                
"FrequencyBodyGyroscope-std()-Y"                 
"FrequencyBodyGyroscope-std()-Z"                
"FrequencyBodyAccelerometerMagnitude-mean()"     
"FrequencyBodyAccelerometerMagnitude-std()"     
"FrequencyBodyAccelerometerJerkMagnitude-mean()" 
"FrequencyBodyAccelerometerJerkMagnitude-std()" 
"FrequencyBodyGyroscopeMagnitude-mean()"         
"FrequencyBodyGyroscopeMagnitude-std()"         
"FrequencyBodyGyroscopeJerkMagnitude-mean()"     
"FrequencyBodyGyroscopeJerkMagnitude-std()" 
  
