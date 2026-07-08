# analysis.R
# Simple reproducible analysis using the Gapminder dataset

# Create output folder if it does not exist
if (!dir.exists("output")) {
  dir.create("output")
}

# Load data
gapminder <- read.csv("data/raw/gapminder.csv")

# Basic summary: average life expectancy by continent and year
summary_data <- aggregate(
  lifeExp ~ continent + year,
  data = gapminder,
  FUN = mean
)

# Save summary table
write.csv(
  summary_data,
  "output/average_life_expectancy_by_continent.csv",
  row.names = FALSE
)

# Create plot
png(
  filename = "output/life_expectancy_by_continent.png",
  width = 900,
  height = 600
)

plot(
  summary_data$year[summary_data$continent == "Europe"],
  summary_data$lifeExp[summary_data$continent == "Europe"],
  type = "l",
  ylim = range(summary_data$lifeExp),
  xlab = "Year",
  ylab = "Average life expectancy",
  main = "Average Life Expectancy by Continent"
)

continents <- unique(summary_data$continent)

for (continent in continents) {
  lines(
    summary_data$year[summary_data$continent == continent],
    summary_data$lifeExp[summary_data$continent == continent]
  )
}

legend(
  "bottomright",
  legend = continents,
  lty = 1,
  cex = 0.8
)

dev.off()

# Print message
cat("Analysis completed. Results saved in the output folder.\n")