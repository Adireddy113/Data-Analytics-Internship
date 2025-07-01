
## EDA – Project Overview

This project is a basic Exploratory Data Analysis (EDA) on the Titanic dataset. The goal is to understand the data, find interesting patterns, and draw insights using Python libraries like Pandas, Matplotlib, and Seaborn.


## What This Project Covers

* First, I loaded the dataset and checked its structure using `.info()`, `.describe()`, and `.head()`.
* I explored the target column `Survived` to see how many passengers lived or died.
* I visualized different columns like gender, class, fare, and age to understand the distribution.
* I used visual tools like countplots, histograms, boxplots, scatterplots, heatmaps, and pairplots to see relationships between variables.
* I handled missing values in the `Age` and `Embarked` columns, and dropped the `Cabin` column since it had too many missing values.


## Tools Used

Everything was done in Python using Jupyter Notebook. I used Pandas for data handling, Seaborn and Matplotlib for plotting and visualizations. These tools helped in making the data easy to understand visually.


## Key Insights

* Women and 1st class passengers had a much higher survival rate.
* Most passengers were in 3rd class and many embarked from port ‘S’.
* Fare values had some high outliers, while age was fairly normally distributed.
* There's a clear relationship between gender/class and survival chances.


## Final Thoughts

This project helped me understand how to explore real-world datasets, create meaningful plots, clean data, and summarize findings. 