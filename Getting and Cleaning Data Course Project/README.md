---
title: "Course Project"
author: "Nick"
date: "Sunday, January 25, 2015"
output: html_document
---

Assumptions: It is assumed that the script is in the same folder that houses the UCI HAR Dataset folder that contains the data needed for this analyis.

The run_analysis.R file follows the following steps:

1. Extracts the test and training sets to separate data frames
2. Extracts the columns names from the features.txt file
3. Assigns these column names to the test and training sets
4. Merges the test and training sets to one totalset
5. Extracts only the mean() and std() columns from the totalset
6. Calculates the mean for these columns into a new tidyset.
7. Writes the tidyset to a new file in the working directory.
