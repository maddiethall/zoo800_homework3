#####################################
### ZOO 800 Homework 3
#####################################
### Sophia Mummert & Maddie Thall 
#####################################

## Part 1
temp_C = 18.5#setting variable
temp_F = (temp_C * 1.8) + 32 #converting Celcius to Fahrenheit
cat(paste("The water temperature is", temp_C,"°C (",temp_F,"°F)")) #prints line of code using variables

## Part 2
species_counts = c(Bluegill = 12, Bass = 7, Sunfish = 21, Carp = 3)
#creating vector with values
total_fish = sum(species_counts) #code for total fish
print(total_fish) #answer
highest_count = names(which.max(species_counts))
#using function which.max(), and function names() to get nominal answer
print(highest_count)

chlorophyll_concentrations = array(
  data = c(13, 28, 41, #day_1
           17, 33, 38, #day_2
           11, 23, 43), #day_3
  dim = c(3,3),
  dimnames = list(
  Depth = c("Surface", "Middle", "Bottom"),
  Day = c("Day_1", "Day_2", "Day_3")))
print(chlorophyll_concentrations) #result
#that took some learning via readings and AI just about the dimnames() function
averages_of_depth = rowMeans(chlorophyll_concentrations)
print(averages_of_depth) #averages answer

## Part 3
lakes = data.frame(
  Lake = c("Mendota", "Wingra", "Monona", "Waubesa", "Kegonsa"),
  Temp_C = c(22.4, 25.1, 23.7, 24.6, 26.0),
  DO_mgL = c(8.3, 6.7, 7.5, 7.9, 6.2))
print(lakes) #dataframe created

mean_temp = mean(lakes$Temp_C) #using the $ to find something within a dataframe
mean_DOmgL = mean(lakes$DO_mgL)
print(mean_temp) #answer to mean temp in C
print(mean_DOmgL) #answer to mean DO in mgL

lakes$Temp_F = lakes$Temp_C * 1.8 + 32
#using that same $ tool to add new variable to the lakes dataframe
print(lakes) #result of adding new variable Temp_F

install.packages("LakeMetabolizer")
library(LakeMetabolizer)
#Not sure how to do lake equilibrium part

##Part 4: Loops
for (variable in 1:10) {
  print(variable^2)
} #answer to first part 

#variables for equation
N0 = 10
r = 0.3
time_steps = 10 #0-9
pop = numeric(time_steps) #vector for storing results

#loop for population at time step
for (t in 0:(time_steps - 1)) {
  pop[t + 1] = N0 * exp(r*t)
  
}
print(pop) #answer for part 2
#I had to use help here because I was unsure of how to set up
#this loop with an equation. I understand now

phosphorus = list(
  Lake_1 = c(10, 11, 12, 13),
  Lake_2 = c(14, 15, 16, 17),
  Lake_3 = c(17, 18, 19, 20),
  Lake_4 = c(20, 21, 22, 23),
  Lake_5 = c(23, 24, 25, 26),
)
##maddie can you give this next part a go im having issues