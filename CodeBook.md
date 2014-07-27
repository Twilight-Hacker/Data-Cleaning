# Codebook for the Coursera Getting and Cleaning Data Project #

The data set presents the means of various measurements from an experiment to generate data about activities of daily living of people.

The experiment used a cellphone to aquire measurements from people who were standing, walking, etc

For more information about the Experiment, visit the experiment home site at:

http://archive.ics.uci.edu/ml/datasets/Human+Activity+Recognition+Using+Smartphones

The variables are all grouped by subject and activity, and are all means of other variables.

##"Subject"##
Numbered from 1 to 30, each number represents a different person taking part in the experiment. There are no units.

##"Activity"##
Factor which represents the activity during which the measurements were taken.
Values: LAYING SITTING STANDING WALKING WALKING_DOWNSTAIRS WALKING_UPSTAIRS

##"Time.Body.Accel.Mag.Mean"##
The mean of the Means of the accelerometer after adjusting for gravity.
It has no units since the original variable is normalized and bound in [-1,1].

##"Time.Body.Accel.Mag.Std"##
The mean of the Standar Deviations of the accelerometer after adjusting for gravity.
It has no units since the original variable is normalized and bound in [-1,1].

##"Time.Body.Accel.Jerk.Mag.Mean"##
The mean of the Means of the accelerometer after adjusting for gravity and taking the eucledian norm.
It has no units since the original variable is normalized and bound in [-1,1].

##"Time.Body.Accel.Jerk.Mag.Std"##
The mean of the Standar Deviations of the accelerometer after adjusting for gravity and taking the eucledian norm.
It has no units since the original variable is normalized and bound in [-1,1].

##"Time.Body.Gyroscope.Mag.Mean"##
The mean of the Means of the gyroscope after adjusting for gravity.
It has no units since the original variable is normalized and bound in [-1,1].

##"Time.Body.Gyroscope.Mag.Std"##
The mean of the Standar Deviations of the gyroscope after adjusting for gravity.
It has no units since the original variable is normalized and bound in [-1,1].

##"Time.Body.Gyroscope.Jerk.Mag.Mean"##
The mean of the Means of the gyroscope after adjusting for gravity and taking the eucledian norm.
It has no units since the original variable is normalized and bound in [-1,1].

##"Time.Body.Gyroscope.Jerk.Mag.Std"##
The mean of the Standar Deviations of the gyroscope after adjusting for gravity and taking the eucledian norm.
