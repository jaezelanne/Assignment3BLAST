#Download the file containing the Gene Expression
download.file("https://raw.githubusercontent.com/markziemann/SLE712_files/master/week10_files/gene_expression.tsv", destfile = "gene_expression.tsv")

#Read the file
head(read.table("gene_expression.tsv"))
x<-read.table("gene_expression.tsv")
head(read.table("gene_expression.tsv"))
x<-read.table("gene_expression.tsv"))
typeof(x)
str(x)

#Making the Gene Accession Numbers the Row Names
x<-read.table("gene_expression.tsv",header=T)
str(x)
x<-read.table("gene_expression.tsv",header=T,row.names=1)
head(x)
x<-as.data.frame(x)

#Creating a new column representing the average of the other two columns
x$ColumnMean<-rowMeans(x)

#Ordering the Column to determine genes with the highest mean expression
x[order(-x$ColumnMean),]

#Determining the number of genes with an average less than 10
subset[order(-x$ColumnMean),]
nrow(subset(x, ColumnMean<10))

#Making a Pairs Plot
pairs (x[,1:2])

