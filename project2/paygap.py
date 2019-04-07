import pandas as pd
import thinkplot
import thinkstats2
import numpy as np
import matplotlib.pyplot as plt
import seaborn as sns
from statsmodels.tsa.api import Holt

colors = ['crimson', 'goldenrod', 'green', 'navy']

def ReadBLS(filename='Data/weeklyincome_occupation_gender_clean_2018.xlsx'):
    bls = pd.read_excel(filename)
    bls.replace('-', np.nan, inplace=True)
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

# CREDIT: Allen Downey's thinkplot.py
def set_font_size(title_size=16, label_size=16, ticklabel_size=14, legend_size=14, ax=plt.gca()):
    """Set font sizes for the title, labels, ticklabels, and legend.
    """
    def set_text_size(texts, size):
        for text in texts:
            text.set_size(size)

    # TODO: Make this function more robust if any of these elements
    # is missing.

    # title
    ax.title.set_size(title_size)

    # x axis
    ax.xaxis.label.set_size(label_size)
    set_text_size(ax.xaxis.get_ticklabels(), ticklabel_size)

    # y axis
    ax.yaxis.label.set_size(label_size)
    set_text_size(ax.yaxis.get_ticklabels(), ticklabel_size)

    # legend
    legend = ax.get_legend()
    if legend is not None:
        set_text_size(legend.texts, legend_size)
        
def GetColor():
    global colors
    color = colors.pop(0)
    colors.append(color)
    return color