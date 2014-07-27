Data-Cleaning
=============

Getting and Cleaning Data Coursera Project

The script starts by combining the data to create a full file that contains all the measurements and the results
in one large table (this is not optimal, but it makes things easier along the way).

It reads subjects, labels and measurements, as well as results in seperate tables, and then it combines them by column with cbind() to
2 matrices, according to training/test.

Then It combines the two matrices into one with rbind, and it creates a dataframe for the results

Then comes the chosing of variables. I chose the following variables:

 tBodyAccMag-mean()
 tBodyAccMag-std()
 tBodyAccJerkMag-mean()
 tBodyAccJerkMag-std()
 tBodyGyroMag-mean()
 tBodyGyroMag-std()
 tBodyGyroJerkMag-mean()
 tBodyGyroJerkMag-std()

I did so because these are the means and standar deviations of the readings adjusted for the effects of gravity. I did not choose the variables after the fourier transorm, because they reflect frequency, not time.

I used cbind to create a new matrix with these variables, and then I used the aggregate() function 8 times to calculate means for the columns by factor. The results were stored in new variables, which were in turn bound to a new matrix with cbind (I needed the subject and activity variables only once, so I used subsetting for the other variables)

Finaly, I named the columns of the matrix, and I changed the activities to their labels with a simple for loop, before writing the data to a file.

To reproduce the research, you will need the following files in the working directory:
subject_test.txt
subject_train.txt
X_train.txt
y_train.txt
X_test.txt
y_test.txt
features.txt
activity_labels.txt
