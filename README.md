# Getting and Cleaning Data Project
Author: Anthony Frissora
Data Zip File Location: [UC Irvine Repo](https://d396qusza40orc.cloudfront.net/getdata%2Fprojectfiles%2FUCI%20HAR%20Dataset.zip "Clicking will download the data")

## Goal of the Project
- Merge Training and Test Data into one tidy data set
- Extracts only the measurements on the mean and standard deviation for each measurement
- Uses descriptive labels
- Use this tidy data to find the average of each variable for each activity and subject
- github contains a descriptive README.md, CodeBook.md, and run_analysis.R 
- github contains a finished tidyData.txt where the average of each has been found

## Explanation of run_analysis.R
- For step by step instruction see the notes within script,
- For more technical information about the dataset see the cookbook.

### The data sets provided must be in your working directory, from there the script is loading activity labels + features that will be used to parse the test and train sets. There are a couple intermediate steps tidying the activity labels + features, followed by loading test and training data, labeling and merging multiple files from each before merging the test with training data. After the merge all there is left to do is replacing numbers with meaningful activity_labels then melt followed by dcast for final formatting and finally write.table exports to a text file.

Goal | Link to Item
--- | ---
Github Repo | [Repo Link](https://github.com/Intradyne/Tidy "Click to go to Repo")
README | [README Link](https://github.com/Intradyne/Tidy/blob/main/README.md "README.md")
Tidy Data Set | [Data Set Link](https://github.com/Intradyne/Tidy/blob/main/tidyData.txt "tidyData.txt")
Analysis R Script | [Analyze.R Link](https://github.com/Intradyne/Tidy/blob/main/run_analysis.R "run_analysis.R")
Cookbook | [CodeBook.md  Link](https://github.com/Intradyne/Tidy/blob/main/CodeBook.md "CodeBook.md")
