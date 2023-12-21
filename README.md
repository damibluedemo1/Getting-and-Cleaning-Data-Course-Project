Human Activity Recognition Dataset Processing

This script processes the "Human Activity Recognition Using Smartphones" dataset from the UCI Machine Learning Repository. It performs data cleaning and transformation tasks to create a tidy dataset suitable for analysis.

Overview

The dataset consists of recordings of subjects performing various activities with smartphones. The script combines training and test sets, extracts relevant measurements, uses descriptive activity names, labels variables appropriately, and creates a tidy dataset with the average of each variable for each activity and subject.

Instructions

1. Download the Dataset:
   - If the dataset is not present, the script downloads and extracts it from the UCI Machine Learning Repository.

2. Run the R Script:
   - Execute the R script `run_analysis.R`. Make sure to have the required packages (`magrittr` and `dplyr`) installed.

3. Output:
   - The script generates a tidy dataset named "FinalData.txt" containing summarized data.

Codebook

For detailed information about the variables, transformations, and data, refer to the CodeBook.md
