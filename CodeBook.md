# Code Book

## Script 
File with R code "run_analysis.Rperform 5 tasks from the task description.

## Variables
* x_train, y_train, x_test, y_test, subject_train and subject_test contain downloaded files data
* x_merge, y_merge and subject_merge merge the previous datasets 

* features contains the correct names for the x_merge dataset --> applied to column of x_train/x_test

## Result

### Identififiers

SubjectId and Activity - are Identifiers.

SubjectId: the ID of the Subject
Activity: Name of the Activity when measurements were taken

### Measurements

Variables describes means and standard deviations of dataset

* TimeBodyAcc-X                  
* TimeBodyAcc-Y                  
* TimeBodyAcc-Z                  
* TimeGravityAcc-X              
* TimeGravityAcc-Y               
* TimeGravityAcc-Z               
* TimeBodyAccJerk-X              
* TimeBodyAccJerk-Y              
* TimeBodyAccJerk-Z              
* TimeBodyGyro-X                 
* TimeBodyGyro-Y                 
* TimeBodyGyro-Z                 
* TimeBodyGyroJerk-X             
* TimeBodyGyroJerk-Y             
* TimeBodyGyroJerk-Z             
* TimeBodyAccMag                
* TimeGravityAccMag             
* TimeBodyAccJerkMag            
* TimeBodyGyroMag               
* TimeBodyGyroJerkMag           
* FrequencyBodyAcc-X             
* FrequencyBodyAcc-Y             
* FrequencyBodyAcc-Z             
* FrequencyBodyAcc-X         
* FrequencyBodyAcc-Y         
* FrequencyBodyAcc-Z         
* FrequencyBodyAccJerk-X         
* FrequencyBodyAccJerk-Y         
* FrequencyBodyAccJerk-Z         
* FrequencyBodyAccJerk-X     
* FrequencyBodyAccJerk-Y     
* FrequencyBodyAccJerk-Z     
* FrequencyBodyGyro-X            
* FrequencyBodyGyro-Y            
* FrequencyBodyGyro-Z            
* FrequencyBodyGyro-X        
* FrequencyBodyGyro-Y        
* FrequencyBodyGyro-Z        
* FrequencyBodyAccMag           
* FrequencyBodyAccMag        
* FrequencyBodyBodyAccJerkMag   
* FrequencyBodyBodyAccJerkMag
* FrequencyBodyBodyGyroMag      
* FrequencyBodyBodyGyroMag   
* FrequencyBodyBodyGyroJerkMag  
* FrequencyBodyBodyGyroJerkMag
* TimeBodyAcc-X                   
* TimeBodyAcc-Y                   
* TimeBodyAcc-Z                   
* TimeGravityAcc-X                
* TimeGravityAcc-Y                
* TimeGravityAcc-Z                
* TimeBodyAccJerk-X               
* TimeBodyAccJerk-Y  
* TimeBodyAccJerk-Z               
* TimeBodyGyro-X                  
* TimeBodyGyro-Y                  
* TimeBodyGyro-Z                  
* TimeBodyGyroJerk-X              
* TimeBodyGyroJerk-Y              
* TimeBodyGyroJerk-Z              
* TimeBodyAccMag                
* TimeGravityAccMag             
* TimeBodyAccJerkMag            
* TimeBodyGyroMag               
* TimeBodyGyroJerkMag           
* FrequencyBodyAcc-X              
* FrequencyBodyAcc-Y              
* FrequencyBodyAcc-Z   
* FrequencyBodyAccJerk-X          
* FrequencyBodyAccJerk-Y          
* FrequencyBodyAccJerk-Z          
* FrequencyBodyGyro-X             
* FrequencyBodyGyro-Y             
* FrequencyBodyGyro-Z             
* FrequencyBodyAccMag           
* FrequencyBodyBodyAccJerkMag   
* FrequencyBodyBodyGyroMag      
* FrequencyBodyBodyGyroJerkMag