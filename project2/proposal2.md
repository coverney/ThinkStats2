## **It’s Still Not the Day for Equal Pay**

### Cassandra Overney and Khang Vu

The main question we want to answer is how does median female income compare to median male income in the last three decades. We will answer that question with the following sub-questions:

1. How do the proportions of median weekly female income to median weekly white male income compare for different races and from 1979 to 2018? Can we predict what the proportions would be in 2019?
2. What factors (i.e. education, occupation, industry) have the most impact on wage/salary income? How does sex impact income after controlling for those factors?
3. For specific occupations, how does pay gap and sex segregation change over time (from 2003 to 2018)?

We obtained median weekly income data from the Current Population Survey (CPS), which is a monthly survey of households conducted by the Bureau of Census for the Bureau of Labor Statistics (BLS). CPS is the primary source of labor force statistics for the US population. The data for median weekly income for males and females of different races can be found [here](https://www.bls.gov/webapps/legacy/cpswktab3.htm). The data for median weekly income for males and females of different occupations can be found [here](https://www.bls.gov/cps/tables.htm). Since the Bureau of Census and BLS are Federal government agencies, everything they publish, both in hard copy and electronically, is in the public domain, except for copyrighted photographs and illustrations, which we do not use. This means that we are free to use the CPS data tables without specific permission, but we are asked to cite BLS as the source (reference resources section).

For the regression analysis, we downloaded respondent CPS data from IPUMS USA for 2018. In order to use the IPUMS USA dataset, we have to cite it accordingly (reference resources section). Furthermore, the licensing agreement for use of IPUMS USA data requires us to provide a citation to our report. We will make sure to add our citation to the [IPUMS bibliography](https://bibliography.ipums.org/) after completing our project. Since IPUMS directly got its 2018 data from the Bureau of Census, the same terms and conditions apply.

So far, we gathered and cleaned all of the data. For the CPS data, we had to write quite a few python functions to merge the excel and txt files from 2003 to 2018 into one Dataframe. We also had to convert 2002 Census occupation titles into 2010 Census occupation titles.

After data cleaning, we started some initial analyses to answer our questions. We plotted the proportions of median female income to median white male income for different races from 1979 to 2018 (reference first figure below) and attempted ARAMA to predict the proportions till 2025. We found that the predictions were pretty inaccurate, so we will just predict the proportions for 2019 and possibly 2020. We also started data mining with IPUMS to identify the variables that produced the highest R^2 values for ordinary least squares regression with income as the dependent variable. Education, degree, and occupation resulted in the highest R^2 values. In terms of specific occupations, we found that in 2018 more women did jobs that paid the least (reference second figure below). From 2003 to 2018, the percent of women who are pharmacists, physicians and surgeons, and human resources managers increased the most. However, the pay gaps remained relatively flat even with more women working in those occupations.

![proportion-female-to-male-income](https://raw.githubusercontent.com/coverney/ThinkStats2/master/project2/proportion-female-to-male-income.png)

![occupations-sex-segregation.jpg](https://raw.githubusercontent.com/coverney/ThinkStats2/master/project2/occupations-sex-segregation.jpg)

#### Next Steps

- To answer question 1, we will use ARAMA to predict the proportions of median female weekly income to median white male weekly income for 2019.
- To answer question 2, we will:
    - Estimate the distribution of weeks worked per year in order to convert yearly income into hourly income
    - Find the estimate of pay gap after controlling for variables besides sex that impact income the most
    - Conduct some exploratory data analysis of the variables associated with the highest R^2 values using the same method as in HW4
- To answer question 3, we will:
    - Find occupations that have a positive relationship between percent female and pay gap (as more women enter an occupation, does the pay gap increase)

#### Resources

- “CPS Tables.” *U.S. Bureau of Labor Statistics*, U.S. Bureau of Labor Statistics, 18 Jan. 2019, [www.bls.gov/cps/tables.htm](http://www.bls.gov/cps/tables.htm).
- “Table 3. Median Usual Weekly Earnings by Age, Race, Hispanic or Latino Ethnicity, and Sex.” *U.S. Bureau of Labor Statistics*, U.S. Bureau of Labor Statistics, 16 Sept. 2015, [www.bls.gov/webapps/legacy/cpswktab3.htm](http://www.bls.gov/webapps/legacy/cpswktab3.htm).
- *IPUMS USA, University of Minnesota, www.ipums.org.*
