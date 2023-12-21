Codebook: Human Activity Recognition Dataset

Overview

The dataset "FinalData.txt" is a tidy dataset derived from the "Human Activity Recognition Using Smartphones" dataset obtained from the UCI Machine Learning Repository. The dataset contains processed and summarized data related to activities recorded with smartphones.

Variables

1) subject:
   Description: Identifier for the subject who performed the activity.
   Type: Numeric

3) activity:
   Description: Descriptive name of the activity performed by the subject.
   Type: Factor (Levels: "WALKING", "WALKING_UPSTAIRS", "WALKING_DOWNSTAIRS", "SITTING", "STANDING", "LAYING")

5) TimeBodyAccelerometerMean-X, TimeBodyAccelerometerMean-Y, ..., FrequencyBodyBodyGyroscopeMagnitudeSTD-Z:
   Description: Mean and standard deviation values of various accelerometer and gyroscope measurements in time and frequency domains.
   Type: Numeric


Transformations

Step 1) Merging Datasets:
        The training and test datasets were combined to create a unified dataset.

Step 2) Extracting Measurements:
        Only the measurements on the mean and standard deviation for each measurement were retained.

Step 3) Descriptive Activity Names:
        Descriptive activity names were used to label the activities in the dataset.

Step 4) Labeling Variables:
        Descriptive variable names were applied to enhance readability.
        Accelerometer, Gyroscope, Body, Magnitude, Time, Frequency, and other prefixes/suffixes were modified for clarity.

Step 5) Creating Tidy Dataset:
        A second, independent tidy dataset ("FinalData.txt") was generated, containing the average of each variable for each activity and each subject.
