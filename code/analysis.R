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

continents <- unique(summary_data$continent)
## A color-blind safe color palette
okabe_ito <- c("#E69F00", "#56B4E9", "#009E73", "#F0E442",
               "#0072B2", "#D55E00", "#CC79A7", "#000000")

plot(
  summary_data$year[summary_data$continent == continents[1]],
  summary_data$lifeExp[summary_data$continent == continents[1]],
  type = "l",
  ylim = range(summary_data$lifeExp),
  xlab = "Year",
  ylab = "Average life expectancy",
  main = "Average Life Expectancy by Continent",
  col = okabe_ito[1]
)

for (i in seq_along(continents)) {
  lines(
    summary_data$year[summary_data$continent == continents[i]],
    summary_data$lifeExp[summary_data$continent == continents[i]],
    col = okabe_ito[i]
  )
}

legend(
  "bottomright",
  legend = continents,
  lty = 1,
  cex = 0.8,
  col = okabe_ito[seq_along(continents)]
)

dev.off()

# Print message
cat("Analysis completed. Results saved in the output folder.\n")
