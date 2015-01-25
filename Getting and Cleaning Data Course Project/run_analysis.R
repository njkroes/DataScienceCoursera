# Extract test and training sets
testset <- read.table(".\\UCI HAR Dataset\\test\\X_test.txt", header=FALSE)
trainingset <- read.table(".\\UCI HAR Dataset\\train\\X_train.txt", header=FALSE)

# Get column names from features file
labels <- read.table(".\\UCI HAR Dataset\\features.txt", header=FALSE)
columnnames <- labels$V2

# Set column names on test and training data frames
names(testset) <- columnnames
names(trainingset) <- columnnames

# Merge data frames to new data frame
totalset <- rbind(testset, trainingset)

# Only pull out mean and standard deviation values
tomatch <- c("mean()", "std()")
meanstdcolumns <- grep(paste(tomatch,collapse="|"), columnnames, value=TRUE)
totalset <- totalset[meanstdcolumns]

# Get mean values of all columns
tidyset <- colMeans(totalset)

# Write tidy set to file
write.table(tidyset, file="tidyset.txt", row.name=FALSE)