# Machine Learning with Two Hearts
### Cassandra Overney and Khang Vu

We will be participating in one of the DrivenData competitions, [Machine Learning with a Heart](https://www.drivendata.org/competitions/54/machine-learning-with-a-heart/page/109/), which strives to use data science to detect heart disease, the number one cause of death worldwide. The task is to predict the presence or absence of heart disease given various data about a patient, such as resting blood pressure, maximum heart rate, EKG readings, sex, and age. The data comes from the Statlog Heart dataset, which is part of the [UCI Machine Learning Repository](http://archive.ics.uci.edu/ml/datasets/statlog+(heart)).

The UCI Machine Learning Repository contains a collection of datasets that are used by the machine learning community to analyze machine learning algorithms. The datasets in this repository are open to the public. According to the citation policy, we need to include a citation when publishing material based on their data (reference resources section).       

We are hoping to use the heart data to attempt various machine learning algorithms to see which ones have the highest accuracy, precision, sensitivity, and specificity. Currently, we have already started the analysis. We [downloaded](https://www.drivendata.org/competitions/54/machine-learning-with-a-heart/data/) the data and loaded it into a Jupyter notebook using `pandas`. There are four data files:
- Training Values: contains data for 13 features and is used to train the models with patients making up the rows and features making up the columns.
- Training Labels: contains the output (0 for no heart disease and 1 for heart disease) for the patients in Training Values.    
- Test Values: same structure as Training Values but with different patients. This data is used to make predictions after training the model.
- Submission Format: same structure as Training Labels but without the `heart_disease_present` data. We will need to fill up that column to be scored.

After reading in the data and merging the Training Values and Training Labels csv files, we conducted simple logistic regression with `heart_disease_present` as the dependent variable and each of the 13 features as the explanatory variable. Running 13 simple logistic regressions allows us to see which explanatory variables can better predict the presence of heart disease. For each variable, we construct a model, compute $R^{2}$, and append the results to a list. The higher the $R^{2}$ value, the more predictive power the corresponding variable has. We found that the variables that affect `heart_disease_present` the most are `thal`, `exercise_induced_angina`, and `num_major_vessels`. `thal` contains the results of thallium stress tests that measure blood flow to the heart, with possible values `normal`, `fixed_defect`, `reversible_defect`. `exercise_induced_angina` corresponds to exercise-induced chest pain (0: False, 1: True). `num_major_vessels` is the number of major vessels (0-3) colored by fluoroscopy. `thal` has a predictive power of around 29%; `exercise_induced_angina` has a predictive power of around 20%, and `num_major_vessels` has a predictive power of around 17.8%.    

We also experimented with 3 machine learning models: logistic regression, KNN, and a simple neural network. Our data processing includes categorizing the `thal` independent variable, splitting the data into training (80%) and validation (20%) sets, and applying standardization to improve the prediction accuracy. For logistic regression, we used the Receiver Operating Characteristic (ROC) metric to evaluate the output result and obtain the ROC curve. For KNN, we performed grid search with cross validation (`GridSearchCV`) to exhaustively search for the best number of nearest neighbors (`n_neighbors` = 17). Our neural network approach involved many experimentations with different number of hidden layers and number of nodes in each layer as well as different optimization methods such as Adam and stochastic gradient descent (SGD). The performance of the neural network, however, is still unpredictable and not as good as the simpler models like logistic regression and KNN. Currently, the logistic regression approach with an appropriate decision threshold produces the best result on the validation set (89%).  

## Next Steps
- Conduct more exploratory data analysis, including plotting the relationships between the features and labels. (We can also do some cluster visualization and multivariate analysis.)
- Run Principal Component Regression (PCR) with logistic regression to remove potential impacts of multicollinearity.
- Apply regularized regression (lasso and ridge) and penalized logistic regression.
- Implement a Support Vector Machine (SVM) as a classifier.

## Resources
- Aha, D., and Dennis Kibler. "Instance-based prediction of heart-disease presence with the Cleveland database." University of California 3.1 (1988): 3-2.
