# Intro

-----Same text as in the notebook


Here are the cities that we were looking into.
[image of map]


# Brief overview of results

I didn't find direct correlations between the **sentiment of related Twitter posts** and the *position of the city in the ranking*.
[image of twitter distribution]

I didn't find direct correlations between the **economic and geographical features of the city** and the *position of the city in the ranking*.
I didn't find direct correlations between the **topology of the transportation network** and the *position of the city in the ranking*.
I didn't find direct correlations between the **distribution of land by designation** and the *position of the city in the ranking*.
[image]


I saw a positive trend when training CNN to analyze the hidden features of the city, as opposed to manually extracting them and feeding them into a machine learning models. But those approaches require a lot more data. One of the more interesting ideas was trying to repurpose a CNN trained for a similar task. The closest one availiable in the Wolfram repository was probably the ResNet-101 trained to predict locations of different sights by their images, but carving out the right parts of the network and fine-tuning it afterwards was extremely problematic from both analytical and computational perspective. For reference here is the content of the original network:
[image]


# Good cities vs bad cities

Even though the advanced tools for analytics required far more data than what we had at our disposal (and could efficiently analyze in-RAM), some of the difference are much easier to see with naked eye. Take a look at the following chart.
[image]


# Links

[Full project code on GitHub.](https://www.github.com/ashvardanian/WolframSummer19)
[Archived datasets with ~10Gbs of maps and other features.](https://www.google.com)
[Mercer 2019 ranking of livable cities.](https://www.google.com)