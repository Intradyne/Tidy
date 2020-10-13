# Getting and Cleaning Data Project
Author: Anthony Frissora

## Description
Additional information about the variables, data and transformations used in the course project for the Johns Hopkins Getting and Cleaning Data course.

## Source Data
Data + Description can be found here [UCI Machine Learning Repository](http://archive.ics.uci.edu/ml/datasets/Human+Activity+Recognition+Using+Smartphones)

## Data Set Information
The experiments have been carried out with a group of 30 volunteers within an age bracket of 19-48 years. Each person wore a smartphone (Samsung Galaxy S II) on the waist while they performed six activities (Walking, Walking_Upstairs, Walking_Downstairs, Sitting, Standing, Laying); using its embedded accelerometer and gyroscope, we captured 3-axial linear acceleration and 3-axial angular velocity at a constant rate of 50Hz. The experiments have been video-recorded to label the data manually. The obtained dataset has been randomly partitioned into two sets, where 70% of the volunteers was selected for generating the training data and 30% the test data. 

The sensor signals (accelerometer and gyroscope) were pre-processed by applying noise filters and then sampled in fixed-width sliding windows of 2.56 sec and 50% overlap (128 readings/window). The sensor acceleration signal, which has gravitational and body motion components, was separated using a Butterworth low-pass filter into body acceleration and gravity. The gravitational force is assumed to have only low frequency components, therefore a filter with 0.3 Hz cutoff frequency was used. From each window, a vector of 561 features was obtained by calculating variables from the time and frequency domain.

### Attribute Information
For each record in the dataset  provided: 
1. Inertial sensor data
- Raw triaxial signals from the accelerometer and gyroscope of all the trials with with participants.
- The labels of all the performed activities.

2. Records of activity windows. Each one composed of:
- A 561-feature vector with time and frequency domain variables.
- Its associated activity label.
- An identifier of the subject who carried out the experiment.

### Required files from dataset
activity_labels.txt |
features.txt |
test/X_test.txt |
test/Y_test.txt |
test/subject_test.txt |
train/X_train.txt |
train/Y_train.txt |
train/subject_train.txt
