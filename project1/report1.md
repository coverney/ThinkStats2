# Project 1 Report

## Subjective Class Compared to Income Class

### Cassandra Overney

#### Introduction
In this project, I utilize the [GSS dataset](https://gssdataexplorer.norc.org/) to study how respondents' family income relate to their self-identified class. The main question that I want to answer is: **How does the subjective class compare to income class?** I am personally interested in this topic because back in my hometown many people consider themselves middle class regardless of their income. I grew up without knowing that an official cutoff between the different income classes existed. Now that I know more about income class, I am curious to see whether a discrepancy between subjective and income class exists throughout America.

In 2007, Michael Hout published a paper, ["How Class Works in Popular Conception"](http://ucdata.berkeley.edu/rsfcensus/papers/Hout-ClassIDJan07.pdf), on a similar topic. Hout also used the GSS dataset. Since an important component of data science involves data replication, I plan to compare my results with Hout's to determine whether we reach the same conclusions.

**Question: what tense should I use?**

#### Methodology and Results
After reading in the data for a few variables from GSS into a Pandas DataFrame and substituting nan for responses like no answer, don't know, or not applicable, I had to find a way to convert from income to income class. The income data came from the realinc variable, which contains family incomes (one year prior to interview) in constant 1986 dollars.

According to the Pew Research Center, income class can be determined based on how a given income compares to the median income. Upper class corresponds to earning more than double the median income. Middle class corresponds to earning between 2/3 and double the median income. Working (lower-middle) class corresponds to earning between 1/2 and 2/3 the median income. Lower class corresponds to earning less than 1/2 the median income.

The most recent data in GSS is from 2016, which means that the most recent income data is from 2015. As a result, the real income data was converted to constant 2015 dollars using the Consumer Price Index Research Series (CPI-U-RS). For better comparison, incomes were adjusted for household size and scaled to reflect a household size of three.

Median incomes (in 2015 dollars) were obtained from the Census Bureau. (The median household size from 1971 to 2015 was 3, so I did not need to adjust the medians for household size.) For each respondent, I found the proportion between respondent income and median income for the same year and then converted the proportion to an income class.

Once I had income classes, I conducted pairwise comparisons to discover what classes respondents with a particular income identified as. I visualized the pairwise comparisons with a confusion matrix, in which income classes were on the x-axis and subjective classes were on the y-axis. Each cell of the 4-by-4 matrix was colored by density. The confusion matrix was found using the pandas_ml library.  

The subjective class data came from the class_ variable. The question asked to respondents was, "If you were asked to use one of four names for your social class, which would you say you belong in: the lower class, the working class, the middle class, or the upper class?" The possible classes have the following keys: 1: lower class 2: working class 3: middle class 4: upper class.

**input confusion matrix**

**input segmented bar charts?**

#### Conclusion

#### Resources
- [Investopedia's "Which Income Class Are You?"](https://www.investopedia.com/financial-edge/0912/which-income-class-are-you.aspx)
- [Pew's "The American Middle Class Is Losing Ground"](http://www.pewsocialtrends.org/2015/12/09/the-american-middle-class-is-losing-ground/#fnref-21084-7)
- ["How Class Works in Popular Conception"](http://ucdata.berkeley.edu/rsfcensus/papers/Hout-ClassIDJan07.pdf)
- [2015 Census Bureau Data](https://www.census.gov/library/publications/2016/demo/p60-256.html)
- [Census Bureau CPI-U-RS Data](https://www.census.gov/topics/income-poverty/income/guidance/current-vs-constant-dollars.html)
