==================================================================
This is a quick explanation of the code run_analysis.R written for the coursera
class Getting and Cleaning Data 
=========================================

The code for this project is in run_analysis.R and is fairly straightforward.  
Note though, that the code HARDCODES DIRECTORIES three times, so you probably have to rewrite this. 

The code pulls data from the directory and merges the X_test and X_train files. 

It then pulls column names from the parent directory features_list.txt file and uses those names as the column names for the merged file.  

It then filters all column names for ones that calculate mean and std, using a grep command. 

Finally, it summarizes this data and outputs the summary to a file called X_data_trim_colMeans.txt


