
# This is the R code I used in class 
#
# Note: you'll need to change the working directory to
#       one containing the "blocks.csv" file

## reading in the file 
blocks = read.csv("blocks.csv", header=TRUE)

## examining the data 
blocks
head(blocks)

## the target or study population average weight 
muy = mean(blocks$Weights)
muy
plot(blocks$Weights)
hist(blocks$Weights)
hist(blocks$Weights, seq(10, 130, 5))

## the target or study population average Perimeter 
mux = mean(blocks$Perimeter)
mux
plot(blocks$Perimeter)
hist(blocks$Perimeter)
hist(blocks$Perimeter, seq(20, 50, 1))

plot(blocks$Perimeter, blocks$Weights, xlab = "perimeter", ylab = "weight" )





##
##
## A single random sample without replacement 
sample1 = sample(1:100, 10)

# Block numbers
sample1

# Block weights from the sample
sample1y =  blocks$Weights[sample1]


## the sample average of the weights. 
ybar = mean(sample1y)
ybar

## the sample standard deivation of the weights. 
sd(sample1y)




##### The data from class
data = read.csv("stat332_data.csv", header=TRUE)

##### The data from class
data = read.csv("stat332_data_F15.csv", header=TRUE)
nrow(data)
head(data)

hist(data$Judgement, breaks=seq(20, 80, 3) )
abline(v=muy, col=2)
mean(data$Judgement)
muy

### Compare the average of all the samples and the population average.
c(muy, mean(data$Judgement) )



hist(data$Random, breaks=seq(20, 80, 3) )
abline(v=muy, col=2)

### Compare the average of all the samples and the population average.
c(muy, mean(data$Random) )



## Compare the variability of the samples from 
## judgement and SRSWOR
c(sd(data$Judgement), sd(data$Random) )


### Compare the two distributions
plot(ecdf(data$Judgement) )
plot(ecdf(data$Random), add=TRUE, col=2)





