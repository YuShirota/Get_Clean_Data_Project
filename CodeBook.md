# Codebook for Get_Clean_Data_Project

+ subject_id: integer 1 to 30 indicating subjects
+ activity: 6 different activities during which the data were collected.
            levels: WALKING, WALKING_UPSTAIRS, WALKING_DOWNSTAIRS, SITTING, STANDING, LAYING
            
 The following 79 variables are averages from the original data per subject per activity.
 Their name have four components:
 + The initial letter. "t" means time domain, while "f" means frequency domain computed by FFT to the time domain data.
 + The middle part: type of measurements
  + BodyAcc         : body acceleration
  + GravityAcc      : gravity acceleration
  + BodyAccJerk     : jerk signal (time differentiaion) of BodyAcc
  + BodyGyro        : body angular velocity
  + BodyGyroJerk    : jerk signal (time differentiaion) of BodyGyro
  + BodyAccMag      : Euclidean norm for BodyAcc
  + GravityAccMag   : Euclidean norm for GravityAcc
  + BodyAccJerkMag  : Euclidean norm for BodyAccJerk
  + BodyGyroMag     : Euclidean norm for BodyGyro
  + BodyGyroJerkMag : Euclidean norm for BodyGyroJerk
 + Method: mean(), meanFreq() or std()
 + Direction: -X, -Y, or -Z

Here are the actual variables included in the getdataproject.txt file.

tBodyAcc-mean()-X
tBodyAcc-mean()-Y       tBodyAcc-mean()-Z
tGravityAcc-mean()-X    tGravityAcc-mean()-Y    tGravityAcc-mean()-Z
tBodyAccJerk-mean()-X   tBodyAccJerk-mean()-Y   tBodyAccJerk-mean()-Z
tBodyGyro-mean()-X      tBodyGyro-mean()-Y      tBodyGyro-mean()-Z
tBodyGyroJerk-mean()-X  tBodyGyroJerk-mean()-Y  tBodyGyroJerk-mean()-Z
tBodyAccMag-mean()                  tGravityAccMag-mean()
tBodyAccJerkMag-mean()              tBodyGyroMag-mean()                 tBodyGyroJerkMag-mean()
fBodyAcc-mean()-X       fBodyAcc-mean()-Y       fBodyAcc-mean()-Z
fBodyAcc-meanFreq()-X   fBodyAcc-meanFreq()-Y   fBodyAcc-meanFreq()-Z
fBodyAccJerk-mean()-X   fBodyAccJerk-mean()-Y   fBodyAccJerk-mean()-Z
fBodyAccJerk-meanFreq()-X           fBodyAccJerk-meanFreq()-Y           fBodyAccJerk-meanFreq()-Z
fBodyGyro-mean()-X      fBodyGyro-mean()-Y      fBodyGyro-mean()-Z
fBodyGyro-meanFreq()-X  fBodyGyro-meanFreq()-Y  fBodyGyro-meanFreq()-Z
fBodyAccMag-mean()      fBodyAccMag-meanFreq()  fBodyBodyAccJerkMag-mean()
fBodyBodyAccJerkMag-meanFreq()      fBodyBodyGyroMag-mean()             fBodyBodyGyroMag-meanFreq()
fBodyBodyGyroJerkMag-mean()         fBodyBodyGyroJerkMag-meanFreq()
tBodyAcc-std()-X        tBodyAcc-std()-Y        tBodyAcc-std()-Z
tGravityAcc-std()-X     tGravityAcc-std()-Y     tGravityAcc-std()-Z
tBodyAccJerk-std()-X    tBodyAccJerk-std()-Y    tBodyAccJerk-std()-Z
tBodyGyro-std()-X       tBodyGyro-std()-Y       tBodyGyro-std()-Z
tBodyGyroJerk-std()-X   tBodyGyroJerk-std()-Y   tBodyGyroJerk-std()-Z
tBodyAccMag-std()       tGravityAccMag-std()    tBodyAccJerkMag-std()
tBodyGyroMag-std()      tBodyGyroJerkMag-std()         
fBodyAcc-std()-X        fBodyAcc-std()-Y        fBodyAcc-std()-Z
fBodyAccJerk-std()-X    fBodyAccJerk-std()-Y    fBodyAccJerk-std()-Z
fBodyGyro-std()-X       fBodyGyro-std()-Y       fBodyGyro-std()-Z
fBodyAccMag-std()       fBodyBodyAccJerkMag-std()
fBodyBodyGyroMag-std()  fBodyBodyGyroJerkMag-std() 
