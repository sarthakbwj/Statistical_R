library("stringr")
shows <- read.csv("/Users/sarthakbwj/Documents/GitHub/Statistical_R/Lectures/Tidying_Data_L4/shows.csv")

shows$show <- shows$show |> 
  str_trim() |>   # removes white spaces from the beginning and the end. 
  str_squish() |>   # removes extra white spaces between the words.
  str_to_title()  
  
# detect the word "Avatar" in data set and replace all of them with "Avatar: The Last Airbender" 
shows$show[str_detect(shows$show, "Avatar")] <- "Avatar: The Last Airbender"


shows |>
  group_by(show) |> 
  summarize(votes = n()) |> # make column votes and display the number of times it has been repeated.
  ungroup() |>
  arrange(desc(votes))

  
  
 shows
