# Get_Clean_Data_Project
Course project for "Getting and Cleaning Data" in Coursera

run_analysis.R script creates a tidy data from the project dataset.
Please put the data in "UCIHARDataset" directory just under the working directory.
"dplyr" package is needed to run the script.

This is how the script works.

1. "Train" and "test" data are separately loaded. subject ID and activities are added as separate columns.
2. Data from "train" set and "test" set are merged (Step 1).
3. Column names are replaced with "features" in the original data (supposed to be Step 4, but done here).
4. Variables or "features" containing "mean" or "std" are extracted (Step 2).
5. Variable "activity" is replaced by descriptive names from "activity_labels.txt" file (Step 3).
6. Mean for each variable is calculated using group_by and summarise_each functions in dplyr package (Step5).
7. The result is saved as a .txt file: getdataproject.txt.

*Please open the resulting txt file with "header = TRUE" in read.table function.
