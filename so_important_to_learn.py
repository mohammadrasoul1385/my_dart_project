# -*- coding: utf-8 -*-
"""so important to learn

Automatically generated by Colaboratory.

Original file is located at
    https://colab.research.google.com/drive/1xfP0XArPTL0AtTIG-Njad7W90AacXfk0
"""

import pandas as pd
import numpy as np
from sklearn.preprocessing import OneHotEncoder
from sklearn.model_selection import train_test_split

df=pd.read_csv('mushrooms.csv')
y=pd.DataFrame(df["class"])
y
x=df.drop(columns=["class"])
x

ohe=OneHotEncoder(sparse_output=False)
x_prepared=pd.DataFrame(ohe.fit_transform(x))
x_prepared

dataframe_info=df.info()

x_train,x_test,y_train,y_test=train_test_split(x_prepared,y,test_size=0.33,random_state=42)

from sklearn.svm import SVC
from sklearn.metrics import classification_report
svc=SVC()
svc.fit(x_train,y_train)

pred_svc=svc.predict(x_test)
pred_svc

from sklearn.neighbors import KNeighborsClassifier
knn=KNeighborsClassifier(n_neighbors=3)
knn.fit(x_train,y_train)

from sklearn.ensemble import RandomForestClassifier
rf=RandomForestClassifier(random_state=69)
rf.fit(x_train,y_train)

pred_rf=rf.predict(x_test)
pred_rf

print(classification_report(pred_rf,y_test))