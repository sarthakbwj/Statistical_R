# Tuples in R can store numeric and character types.  
# Outliers are data points which fall outside of the Data range. 

load("temps.RData") # load Data in IDE
mean(temps) 

# index into the data using position values
temps[2] 
temps[4]
temps[7] 
temps[c(2,4,7)]  # combine individual places of a vector in a new vector. 

# creating a vector(list) of outliers and removing them from
# the original vector - Transforming Vectors
temps[-c(2,4,7)]


# Logical Expressions is a 'comparison operator' that give us an output in TRUE or FALSE (T/F). 
# similar to bools in Python. 

# == 'equal to'
# != 'not equal to'
#  > 'greater than'
#  < 'less than'
# >= 'greater than or equal to'
# <= 'less than or equal to'

# Example of Logical Expression to ask questions and get output in TRUE or FALSE
temps[1] < 0


# outputs indexes which return TRUE as the result of the evaluating each expression.
which(temps < 0) 


# 'Logical operators' allows the user to combine 2 or more expressing and ask complex questions.
# & - 'and'
# | - 'or'

# Logical Expressions asks 1 question whereas Logical Operators ask 2 or more.  

which(temps < 0 | temps > 60) 
# -which will remove all the elements which evaluate to TRUE from the vector. 

# 'any' logical operator = if any data point evaluated results to True, the output is TRUE and vice versa. 
# are any of these values outliers? 
any(temps < 0 | temps > 60)
 
# 'all' logical operator = if all data points evaluated result to True, the output is TRUE and vice versa. 
# are all of these values outliers? 
all(temps < 0 | temps > 60)


# 'filter' vector stores the answers(T/F) to the evaluated elements which result to TRUE. 
filter <- (temps < 0 | temps > 60)
# passing 'filter' through 'temps' returns the values - a subset of outliers. 
temps[filter]

# ! means the opposite...

sieve <- !(temps < 0 | temps > 60)
no_outliers <- temps[sieve]
no_outliers

save(no_outliers, file = "no_outliers.RData")


# LISTS vs VECTORS
# Lists can store more than one datatype whereas vectors can only store single datatype at a time. 



