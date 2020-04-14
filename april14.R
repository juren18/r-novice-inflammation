library(readr)
data01 <- read.csv("data/data/inflammation-01.csv", header = FALSE, sep = ',')
data01

class(data01)

dim(data01)

# first value in dat, row 1, column 1
data01[1, 1]

# middle value in dat, row 30, column 20
data01[30, 20]

#select columns 10 and 20 from rows 1, 3, and 5
data01[c(1, 3, 5), c(10, 20)]

#select the first ten columns of values for the first four rows
data01[1:4, 1:10]

# All columns from row 5
data01[5, ]

# All rows from column 16-18
data01[, 16:18]

#Use Column info instead of pdata01[, 'V16']

# first row, all of the columns
patient_1 <- data01[1, ]
# max inflammation for patient 1
max(patient_1)
sum(patient_1)

max(data01[2,])

# min inflammation for patient 2 on day 7
max(data01[2,7])

max(data01[1, ])

mean(data01[1, ])

mean(as.numeric(data01[1, ]))

avg_patient_inflammation <- apply(data01, 1, mean)

avg_day_inflammation <- apply(data01, 2, mean)

plot(avg_day_inflammation)

max_day_inflammation <- apply(data01, 2, max)
plot(max_day_inflammation)

min_day_inflammation <- apply(data01, 2, min)
plot(min_day_inflammation)



