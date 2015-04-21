setwd("C:/My Crap/Learnin/Data Science/Getting and Cleaning Data (Coursera)/Course Project/")

workdir<-"C:/My Crap/Learnin/Data Science/Getting and Cleaning Data (Coursera)/Course Project/Data/"
testdata_dir<-"C:/My Crap/Learnin/Data Science/Getting and Cleaning Data (Coursera)/Course Project/Data/test/"
traindata_dir<-"C:/My Crap/Learnin/Data Science/Getting and Cleaning Data (Coursera)/Course Project/Data/train/"

X_test<-read.delim(paste(testdata_dir,"X_test.txt", sep=""), sep="", header=FALSE)
X_train<-read.delim(paste(traindata_dir,"X_train.txt", sep=""), sep="", header=FALSE)

X_list<-read.delim(paste(workdir,"features.txt", sep=""), sep="", header=FALSE)

col_num<-X_list[,1]
col_names<-X_list[,2]

X_data<-rbind(X_test,X_train)
colnames(X_data)<-col_names

X_data_trim<-X_data[,grep("mean()|std()",colnames(X_data))]

X_data_trim_colMeans<-colMeans(X_data_trim)

write.table(X_data_trim_colMeans, file="X_data_trim_colMeans.txt",row.name=FALSE)
