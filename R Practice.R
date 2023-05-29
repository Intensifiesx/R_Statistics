cat("STAT 411 Assignments for R Practice\n\n")

# Problem: 1.13 A manufacturer of electronic components is
# interested in determining the lifetime of a certain type
# of battery. A sample, in hours of life, is as follows:
#   123, 116, 122, 110, 175, 126, 125, 111, 118, 117.
# (a) Find the sample mean and median.
# (b) What feature in this data set is responsible for the
# substantial difference between the two?
lifetime_batteries <- c(123, 116, 122, 110, 175, 126, 125, 111, 118, 117)
cat("Problem 1.13\n")
cat("\t(a)  Sample Mean: ", mean(lifetime_batteries)) # Display the mean
cat("\n\t     Sample Median: ", median(lifetime_batteries)) # Display the median
cat("\n\t(b)  The feature in this data set that is responsible for the
            substantial difference between the two is the outlier 175.")
# Create png
png("1.13BoxPlot.png")
# create a boxplot
boxplot(lifetime_batteries,
    main = "Lifetime of a Certain Type of Battery",
    xlab = "Battery Life (in hours)",
    col = "lightblue",
    border = "blue",
    horizontal = TRUE
)
# close png
dev.off()

# ------------------------------------------------------------
# Problem: 1.17 A study of the effects of smoking on sleep
# patterns is conducted. The measure observed is the time,
# in minutes, that it takes to fall asleep. These data are
# obtained:
#   Smokers: 69.3 56.0 22.1 47.6
#       53.2 48.1 52.7 34.4
#       60.2 43.8 23.2 13.8
#   Nonsmokers: 28.6 25.1 26.4 34.9
#       29.8 28.4 38.5 30.2
#       30.6 31.8 41.6 21.1
#       36.0 37.9 13.9
# (a) Find the sample mean for each group.
# (b) Find the sample standard deviation for each group.
# (c) Make a dot plot of the data sets A and B on the
# same line.
# (d) Comment on what kind of impact smoking appears
# to have on the time required to fall asleep.
smokers <- c(
    69.3, 56.0, 22.1, 47.6,
    53.2, 48.1, 52.7, 34.4,
    60.2, 43.8, 23.2, 13.8
)
nonsmokers <- c(
    28.6, 25.1, 26.4, 34.9,
    29.8, 28.4, 38.5, 30.2,
    30.6, 31.8, 41.6, 21.1,
    36.0, 37.9, 13.9
)
cat("\n\nProblem 1.17\n")
cat("\t(a)  Sample Mean for Smokers: ", mean(smokers))
cat("\n\t     Sample Mean for Nonsmokers: ", mean(nonsmokers))
cat("\n\t(b)  Sample Standard Deviation for Smokers: ", sd(smokers))
cat("\n\t     Sample Standard Deviation for Nonsmokers: ", sd(nonsmokers))
cat("\n\t(c)  Dot Plot is in \"", getwd(), "\"")
png("1.17DotPlot.png") # Create png
# create a dot plot
dotchart(c(smokers, nonsmokers),
    main = "Sleep Patterns",
    xlab = "Time to Fall Asleep (minutes)",
    col = c("#001eff", "#ff2f00"),
)
dev.off()
cat("\n\t(c)  Smoking increases the time it takes to fall asleep.")
png("1.17BoxPlot.png") # Create png
# create a boxplot
boxplot(smokers, nonsmokers,
    main = "Sleep Patterns",
    xlab = "Time to Fall Asleep (minutes)",
    col = c("lightblue", "#ffc400"),
    border = c("blue", "#a87104"),
    horizontal = TRUE,
    names = c("Smokers", "Nonsmokers")
)
# close png
dev.off()
# show image

# ------------------------------------------------------------
# Problem: 1.22 The following data are the measures of the
# diameters of 36 rivet heads in 1/100 of an inch.
#   6.72 6.77 6.82 6.70 6.78 6.70 6.62 6.75
#   6.66 6.66 6.64 6.76 6.73 6.80 6.72 6.76
#   6.76 6.68 6.66 6.62 6.72 6.76 6.70 6.78
#   6.76 6.67 6.70 6.72 6.74 6.81 6.79 6.78
#   6.66 6.76 6.76 6.72
# (a) Compute the sample mean and sample standard
# deviation.
# (b) Construct a relative frequency histogram of the
# data.
# (c) Comment on whether or not there is any clear indication
# that the sample came from a population that has a bell-shaped distribution.
diameters <- c(
    6.72, 6.77, 6.82, 6.70, 6.78, 6.70, 6.62, 6.75,
    6.66, 6.66, 6.64, 6.76, 6.73, 6.80, 6.72, 6.76,
    6.76, 6.68, 6.66, 6.62, 6.72, 6.76, 6.70, 6.78,
    6.76, 6.67, 6.70, 6.72, 6.74, 6.81, 6.79, 6.78,
    6.66, 6.76, 6.76, 6.72
)
cat("\n\nProblem 1.22\n")
cat("\t(a)  Sample Mean: ", mean(diameters))
cat("\n\t     Sample Standard Deviation: ", sd(diameters))
cat("\n\t(b)  Histogram is in \"", getwd(), "\"")
png("1.22Histogram.png") # Create png
# create a histogram
hist(diameters,
    main = "Diameters of Rivet Heads",
    xlab = "Diameter (1/100 of an inch)",
    col = "lightblue",
    border = "blue"
)
# close png
dev.off()
cat("\n\t(c)  There is no clear indication that the sample came
        from a population that has a bell-shaped distribution.")
# Create png
png("1.22BoxPlot.png")
# create a boxplot
boxplot(diameters,
    main = "Diameters of Rivet Heads",
    xlab = "Diameter (1/100 of an inch)",
    col = "lightblue",
    border = "blue",
    horizontal = TRUE
)
# close png
dev.off()

# ------------------------------------------------------------
# Problem: 1.25 The following data set is related to that in
# Exercise 1.24. It gives the percentages of the families that
# are in the upper income level, for the same individual
# schools in the same order as in Exercise 1.24.
#   72.2 31.9 26.5 29.1 27.3 8.6 22.3 26.5
#   20.4 12.8 25.1 19.2 24.1 58.2 68.1 89.2
#   55.1 9.4 14.5 13.9 20.7 17.9 8.5 55.4
#   38.1 54.2 21.5 26.2 59.1 43.3
# (a) Calculate the sample mean.
# (b) Calculate the sample median.
# (c) Construct a relative frequency histogram of the
# data.
# (d) Compute the 10% trimmed mean. Compare with
# the results in (a) and (b) and comment.
upper_income <- c(
    72.2, 31.9, 26.5, 29.1, 27.3, 8.6, 22.3, 26.5,
    20.4, 12.8, 25.1, 19.2, 24.1, 58.2, 68.1, 89.2,
    55.1, 9.4, 14.5, 13.9, 20.7, 17.9, 8.5, 55.4,
    38.1, 54.2, 21.5, 26.2, 59.1, 43.3
)
cat("\n\nProblem 1.25\n")
cat("\t(a)  Sample Mean: ", mean(upper_income))
cat("\n\t(b)  Sample Median: ", median(upper_income))
cat("\n\t(c)  Histogram is in \"", getwd(), "\"")
png("1.25Histogram.png") # Create png
# create a histogram
hist(upper_income,
    main = "Upper Income Levels",
    xlab = "Percentage of Families",
    col = "lightblue",
    border = "blue"
)
# close png
dev.off()
cat("\n\t(d)  10% Trimmed Mean: ", mean(upper_income, trim = 0.1))
cat("\n\t     The 10% trimmed mean is very close to the sample mean.")
# Create png
png("1.25BoxPlot.png")
# create a boxplot
boxplot(upper_income,
    main = "Upper Income Levels",
    xlab = "Percentage of Families",
    col = "lightblue",
    border = "blue",
    horizontal = TRUE
)
# close png
dev.off()

# ------------------------------------------------------------
# Problem: 1.30 Below are the lifetimes, in hours, of fifty 40-watt,
# 110-volt internally frosted incandescent lamps, taken
# from forced life tests:
#   919 1196 785 1126 936 918
#   1156 920 948 1067 1092 1162
#   1170 929 950 905 972 1035
#   1045 855 1195 1195 1340 1122
#   938 970 1237 956 1102 1157
#   978 832 1009 1157 1151 1009
#   765 958 902 1022 1333 811
#   1217 1085 896 958 1311 1037
#   702 923
# Construct a box plot for these data.
lifetimes <- c(
    919, 1196, 785, 1126, 936, 918,
    1156, 920, 948, 1067, 1092, 1162,
    1170, 929, 950, 905, 972, 1035,
    1045, 855, 1195, 1195, 1340, 1122,
    938, 970, 1237, 956, 1102, 1157,
    978, 832, 1009, 1157, 1151, 1009,
    765, 958, 902, 1022, 1333, 811,
    1217, 1085, 896, 958, 1311, 1037,
    702, 923
)
cat("\n\nProblem 1.30")
cat("\n\t     Boxplot is in \"", getwd(), "\"\n")
# Create png
png("1.30BoxPlot.png")
# create a boxplot
boxplot(lifetimes,
    main = "Lifetimes of Incandescent Lamps",
    xlab = "Lifetime (hours)",
    col = "lightblue",
    border = "blue",
    horizontal = TRUE
)
# close png
dev.off()
