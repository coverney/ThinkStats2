# Project 1 Proposal

## Self-perception of Class Compared to Income

### Cassandra Overney

#### Overview

I am planning to use the [GSS dataset](https://gssdataexplorer.norc.org/) to study how respondents' actual family income relate to (1) their self reported classes and (2) their thoughts on how their family incomes compare to the average American family's income. I currently have all the data that I need. In Homework 2, I practiced creating Data Extracts and reading in the data files with python.   

After going through the GSS Terms and Conditions page, I learned that when using GSS in publications or presentations, I have to cite GSS and NORC. I also have to make sure that I responsibly use the data, software, and documentation obtained from the website. Lastly, I have to acknowledge the fact that NORC assumes no legal liability or responsibility for completeness, accuracy, usefulness, or fitness of the data.

The main question I want to answer in this project is **How does the self-perception of social class compare to real income?** I am interested in this topic because I personally have a really misguided perception of the cutoff between the middle and upper classes. I am curious to see if this lack of understanding is shared by other people. Some other questions/topics I would like to answer/explore include
- How does the difference between the self-perception of social class and income compare to the difference between the self-perception of relative income (i.e. below or above the average American income) and actual income?
- What is the most effective way to visualize these differences (i.e. using pairwise differences)?
- Are there differences in class perception depending on geographic location (i.e. urban vs rural)?
- What other factors could impact self-perception of class (i.e. education and background)?
- How do potential period, cohort, and age effects come into play?

#### Current Progress
In Homework 2, I started exploring the self-perception of class and income data. The class data has four possible values (lower, working, middle and upper classes). I decided to use the real income data that adjusts for inflation by calculating income relative to 1986.

After doing some basic research, I found that in 2017, the middle class corresponded to incomes between $40,500 and $122,000; the lower class corresponded to incomes below $40,500; the working class corresponded to incomes between $14,000 and $40,500; the upper class corresponded to incomes above $122,000. I then used an [inflation calculator](https://www.usinflationcalculator.com/) to translate my 2017 income values to 1986 amounts. From there, I computed that the lower class is below $6,259.79; working class is between $6,259.79 and $18,108.68; middle class is between $18,108.68 and $54,549.61; upper class is above $54,549.61.

My next step involved converting all of the income data into classes and plotting a histogram of reported and calculated classes.    

![Histogram](https://github.com/coverney/ThinkStats2/blob/master/project1/histogram.png)

According to the above histogram, it seems like people may think they are in a lower class than they actually are considering their incomes with most people considering themselves as part of the working or middle classes. The difference is especially apparent in the working class (more people think they are in that class compared to where their incomes say they are). Also, more people qualify as upper class than they think. This observation is beautifully summarized by Stephen Rose's quote that “because people tend to live in communities with similar incomes, they view themselves as being near the middle because their neighbors’ circumstances are similar to their own even if their incomes are significantly below or above the US median.”

I also computed the Cohen effect size and got -0.39, which indicates that reported classes tend to be lower than calculated classes.  

#### Next Steps
My current next steps include
- Find a better way to handle income data from different years. The cutoff for the middle class in the 1980s is probably very different from the cutoff in the 2010s. Instead of using one income to social class conversion scale and adjusting it for inflation, I am thinking of finding the conversion for each year. This would require more research into how these cutoff values are determined.
- Conduct pairwise comparisons for respondents that answered both questions.
- Explore the relative income variable.
- Introduce subgroups (i.e. geographic location and education levels).

#### Resources
I found the following resources that could provide potential explanations for patterns I find in the data
- [Investopedia's "Which Income Class Are You?"](https://www.investopedia.com/financial-edge/0912/which-income-class-are-you.aspx)
- ["Lower, Middle and Upper Class Income Levels"](https://finance.zacks.com/lower-middle-upper-class-income-levels-9877.html)
- [Wikipedia's "Social class in the United States"](https://en.wikipedia.org/wiki/Social_class_in_the_United_States)
- ["The Class Structure in the U.S."](https://courses.lumenlearning.com/boundless-sociology/chapter/the-class-structure-in-the-u-s/)
