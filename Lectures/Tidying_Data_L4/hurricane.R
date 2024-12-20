# tibble is a smaller verion of a table. 

library("dplyr")


# sort as per the strongest hurricane from the Data Set. 

hurricane <- read.csv("/Users/sarthakbwj/Documents/GitHub/Statistical_R/Lectures/Tidying_Data_L4/hurricanes.csv")

View(hurricane)

hurricane |>
  group_by(year) |>
  slice_max(order_by = wind)|>
  filter(year >= 1980 & year <= 1990)


# slice_head - returns the 1st row of the group.
# slice_tail - returns the last row of the group.
# slice_max - returns the maximum value from the group.
# slice_min - returns the minimum value from the group. 

hurricane |>
  group_by(year) |>
  summarize(hurricane = n()) # summarize number of rows in each group with name hurricane. 




