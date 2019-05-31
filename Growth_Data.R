#Download the Growth_Data.csv file from GitHub Repository
download.file("https://raw.githubusercontent.com/markziemann/SLE712_files/master/week10_files/growth_data.csv", destfile = "growth_data.csv")

#Read the File in R
a<-read.table("growth_daata.csv", header = T, sep = ",")

#Separate the data according to their groups
northeast<-subset(a, Site== 'northeast')
southwest<-subset(a, Site== 'southwest')

#Find the mean for 1999 and 2019 for both groups using summary
summary (northeast)
summary (southwest)

#Find the standard deviation for northeast
sd (northeast$Circumf_1999_cm)
sd (northeast$Circumf_2019_cm)

#Find the standard deviation for southwest
sd (southwest$Circumf_1999_cm)
sd (southwest$Circumf_2019_cm)

#Create a Boxplot of northeast
boxplot(northeast$Circumf_1999_cm,northeast$Circumf_2019_cm, names = c("1999","2019", xlab="Year", ylab= "Circumference", col="pink")

#Create a Boxplot of southwest
boxplot(southwest$Circumf_1999_cm,southwest$Circumf_2019_cm, names = c("1999","2019", xlab="Year", ylab="Circumference", col="light blue")


