# run_analysis.R Version 1.0
# Author: Rajaraman
# Date : 26 April 2014
# Makes a tidy data set from Samsung mobile activity experiment
# Assumption: all the input files are in the working directory

library (reshape2)

# Read the test set
sub = scan("subject_test.txt")
act = scan("Y_test.txt")
dat = read.table("X_test.txt")
# Add columns of subjects and activity codes
dat = cbind(sub, act, dat)
dim(dat)

# Read the training set
sub = scan("subject_train.txt")
act = scan("Y_train.txt")
dat2 = read.table("X_train.txt")
# Add subject and activity codes
dat2 = cbind(sub, act, dat2)
dim(dat2)

# Merge the two sets together
dat = rbind (dat, dat2)

# Read column names and clean up
labels = readLines("activity_labels.txt")
labels = strsplit(labels, split=" ")
labels = unlist(labels)
# only even elements contain the column names
activityNames = labels[seq(2,12,by=2)]

# Replace activity codes by meaningful strings
dat[[2]] = activityNames[dat[[2]]]

# Read variable names and cleanup
vars = readLines("features.txt")
vars = strsplit(vars, split=" ")
vars = unlist(vars)
vars = vars[seq(2,1122,by=2)]

# Attach names to the columns
names(dat) = c("subject", "activity", vars)

# Optional: Save the data set
# write.csv(dat, "MergedSamsungData.csv", row.names=F)

# Make a tidy data set containing means of variables:
# Extract only the mean and std deviation columns
means = grep ("mean", vars, fixed=TRUE)
stds = grep ("std", vars, fixed=TRUE)
cutdat = dat[ ,c(1,2, means+2, stds+2)]

# Group the numbers by subject and by activity, take averages
molten = melt (cutdat, id.var=c("subject", "activity"))
newshape = dcast (molten, subject + activity ~ variable, mean)

# Save the tidy data set
write.table(newshape, "TidySamsungData.txt", sep="\t", row.names=F)


