# lines 2-9 read data for subjects (s), labels (l) and measurements
test_s<-read.table("subject_test.txt") 
train_s<-read.table("subject_train.txt")
train<-read.table("X_train.txt")
train_l<-read.table("y_train.txt")
test<-read.table("X_test.txt")
test_l<-read.table("y_test.txt")
features<-read.table("features.txt")
activities<-read.table("activity_labels.txt")
# lines 11-14 combine the data to a matrix
test_full<-cbind(test_s,test_l,test)
train_full<-cbind(train_s,train_l,train)
data<-rbind(train_full,test_full)
dfr<-as.data.frame(data)
##Choosing Variables
Subject<-dfr[,1]
Activity<-dfr[,2]
Time.Body.Accel.Mag.Mean<-dfr[,203]
Time.Body.Accel.Mag.Std<-dfr[,204]
Time.Body.Accel.Jerk.Mag.Mean<-dfr[,229]
Time.Body.Accel.Jerk.Mag.Std<-dfr[,230]
Time.Body.Gyroscope.Mag.Mean<-dfr[,242]
Time.Body.Gyroscope.Mag.Std<-dfr[,243]
Time.Body.Gyroscope.Jerk.Mag.Mean<-dfr[,255]
Time.Body.Gyroscope.Jerk.Mag.Std<-dfr[,256]

dataframe<-cbind(Subject,Activity,Time.Body.Accel.Mag.Mean,Time.Body.Accel.Mag.Std,Time.Body.Accel.Jerk.Mag.Mean,Time.Body.Accel.Jerk.Mag.Std,Time.Body.Gyroscope.Mag.Mean,Time.Body.Gyroscope.Mag.Std,Time.Body.Gyroscope.Jerk.Mag.Mean,Time.Body.Gyroscope.Jerk.Mag.Std)

Time.Body.Accel.Mag.Mean.Mean.Factored<-aggregate(dfr[,3] ~ dfr[,1] + dfr[,2], data = dfr, FUN= "mean" )
Time.Body.Accel.Mag.Std.Mean.Factored<-aggregate(dfr[,4] ~ dfr[,1] + dfr[,2], data = dfr, FUN= "mean" )
Time.Body.Accel.Jerk.Mag.Mean.Mean.Factored<-aggregate(dfr[,5] ~ dfr[,1] + dfr[,2], data = dfr, FUN= "mean" )
Time.Body.Accel.Jerk.Mag.Std.Mean.Factored<-aggregate(dfr[,6] ~ dfr[,1] + dfr[,2], data = dfr, FUN= "mean" )
Time.Body.Gyroscope.Mag.Mean.Mean.Factored<-aggregate(dfr[,7] ~ dfr[,1] + dfr[,2], data = dfr, FUN= "mean" )
Time.Body.Gyroscope.Mag.Std.Mean.Factored<-aggregate(dfr[,8] ~ dfr[,1] + dfr[,2], data = dfr, FUN= "mean" )
Time.Body.Gyroscope.Jerk.Mag.Mean.Mean.Factored<-aggregate(dfr[,9] ~ dfr[,1] + dfr[,2], data = dfr, FUN= "mean" )
Time.Body.Gyroscope.Jerk.Mag.Std.Mean.Factored<-aggregate(dfr[,10] ~ dfr[,1] + dfr[,2], data = dfr, FUN= "mean" )

final<-cbind(Time.Body.Accel.Mag.Mean.Mean.Factored,Time.Body.Accel.Mag.Std.Mean.Factored[,3],Time.Body.Accel.Jerk.Mag.Mean.Mean.Factored[,3],Time.Body.Accel.Jerk.Mag.Std.Mean.Factored[,3],Time.Body.Gyroscope.Mag.Mean.Mean.Factored[,3],Time.Body.Gyroscope.Mag.Std.Mean.Factored[,3],Time.Body.Gyroscope.Jerk.Mag.Mean.Mean.Factored[,3],Time.Body.Gyroscope.Jerk.Mag.Std.Mean.Factored[,3])
names(final)<-c("Subject","Activity","Time.Body.Accel.Mag.Mean","Time.Body.Accel.Mag.Std","Time.Body.Accel.Jerk.Mag.Mean","Time.Body.Accel.Jerk.Mag.Std","Time.Body.Gyroscope.Mag.Mean","Time.Body.Gyroscope.Mag.Std","Time.Body.Gyroscope.Jerk.Mag.Mean","Time.Body.Gyroscope.Jerk.Mag.Std")

for (i in 1:dim(final)[1]){
  final[i,2]<-activities[final[i,1],2]
}

write.table(final, file="tidy.txt",row.names=FALSE)
