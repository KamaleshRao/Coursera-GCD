testdata_dir<-"C:/My Crap/Learnin/Data Science/Getting and Cleaning Data (Coursera)/Course Project/Data/test/"
traindata_dir<-"C:/My Crap/Learnin/Data Science/Getting and Cleaning Data (Coursera)/Course Project/Data/train/"

X_test<-read.delim(paste(testdata_dir,"X_test.txt", sep=""), sep="", header=FALSE)
X_train<-read.delim(paste(traindata_dir,"X_train.txt", sep=""), sep="", header=FALSE)

dim(X_test)
