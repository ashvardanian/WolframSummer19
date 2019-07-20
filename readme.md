# Quantifying the influence of Urban Design on Quality of Life

## Intro

This project is a **prototype** intended to inspire **computational thinking** in the domain of **urban design**. 
It was developed during the Wolfram Summer School 2019. It is formatted as a "Computational Notebook", so the content should be self-explanatory, but here is a brief overview.

## Problem Definition

In recent years we have started shifting towards larger construction projects. Such projects would often rebuild entire neighbourhoods and would have costs in billions of dollars. Being as complex as they are, they require thorough planning, but it's not always clear, what's the final objective of the project. Which metric are we maximizing? 
- The revenue from real estate sales/rent? 
- The quality of life in the neighbourhood/city? 
- The long-term economic benefits for the region?

Every group involved in the process generally has very different objectives, but the correlations between them are not obvious. In this project, I have tried to combine many different sources of information to check, if there are any plausible relations between **features of cities** and **quality of life** in them.

## Two Approaches

### Explainable
1. Manually extracting features.
2. Fit linear regression model.
3. Compare the importance of features.

### Black-Box
1. Build a deep convolutional neural network model.
2. Train it for regression task.
3. Check if it converges.

I wanted those 2 systems to compete with each other and reveal new ideas for city design in the process.

# Datasources & Features

- Mercer 2019 ranking of cities.
- Basic metrics of cities (population, location, traits of the enclosing country).
- Sentiment data (from Tweets related to those cities).
- Land use statistics (parks, water banks).
- Features of the transportation network (centrality & connectivity metrics of the road graph).

# Results & Plans

I didn't find a proper subset of features, capable of predicting the score with a simple linear regression model.
The fine-tuning of the pre-trained CNN model required more than 10Gb of data that I had at my disposal.
I will revisit this problem with more data and faster tools in the future. Feel free to contribute!
