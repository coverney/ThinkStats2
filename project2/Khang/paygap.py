import pandas as pd
import thinkplot
import thinkstats2
import numpy as np
import matplotlib.pyplot as plt
import seaborn as sns
from statsmodels.tsa.api import Holt

colors = ['crimson', 'goldenrod', 'green', 'navy']

def ReadBLS(filename='Data/weeklyincome_occupation_gender_2018.xlsx'):
    bls = pd.read_excel(filename)
    bls.replace(' ', np.nan, inplace=True)
    bls = bls.dropna()
    bls = bls.copy()
    for col in bls.columns:
        if col != 'Occupation':
            bls[col] = bls[col].astype(float)
    return bls

def ReadCPS(filename='Data/weeklyincome_gender_race_1979to2018.xlsx'):
    cps = pd.read_excel(filename)
    cps = cps.copy()
    for col in cps.columns:
        if col != 'Category':
            cps[col] = cps[col].astype(float)
    return cps

def ShowTableResult(df, title=None):
    cm = sns.light_palette("green", as_cmap=True)
    df_copy = df.copy()
    df_copy['Weekly Pay'] = df_copy['Weekly Pay'].astype(object) # convert to object so that we don't color this column
    return df_copy.style.format({'Percent Female' : '{:.2f}%', 'Weekly Pay' : '${:,.0f}'}).hide_index().set_caption(title).background_gradient(cmap=cm)


def GetColor():
    global colors
    color = colors.pop(0)
    colors.append(color)
    return color