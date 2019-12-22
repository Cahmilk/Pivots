'''
Created on May 16, 2018

@author: andres
'''

# 
# Para garantir reprodutibilidade
from numpy.random import seed
seed(1)
from tensorflow import set_random_seed
from sklearn import preprocessing
set_random_seed(2)
# ---------------------------------------------------------------------------

# ---------------------------------------------------------------------------
# Importing the libraries
import os
import sys
import numpy as np
import pandas as pd
import sys
import time
from sklearn import svm
# ---------------------------------------------------------------------------
#D:\\Camila Leite\\Datasets\\Movelets_Supervised\\MASTERMovelets\\FoursquareNY_generic_ED_Witout_Last_Prunning
#D:\\Camila Leite\\Datasets\\Movelets_Supervised\\MASTERMoveletsSupervised\\FoursquareNY_generic_ED_Witout_Last_Prunning
#D:\\Camila Leite\\Datasets\\Movelets_Supervised\\Remasterized_MASTERMoveletsPivots\\FoursquareNY_generic_ED\\Porcentage_10_Witout_Last_Prunning
dir_path="D:\\Camila Leite\\Datasets\\Supervised\\Experiments\\Gowalla\\MASTERMoveletsSupervised_WithPivots_And_AttributeFilter\\Gowalla_MASTER_ED_Witout_Last_Prunning"
startTime = time.time()
#dir_path = "D:\\Camila Leite\\Datasets\\SurveyTests\\Datasets\\Animals\\Pivots\\Animals_spatial"

print("Loading train and test data from... " + dir_path)
dataset_train = pd.read_csv(dir_path + "\\train.csv")
dataset_test  = pd.read_csv(dir_path + "\\test.csv")
#print("Done.")
# dataset_train=dataset_train.drop(dataset_train.columns[[0,1,2]], axis=1)
# dataset_test=dataset_test.drop(dataset_test.columns[[0,1,2]], axis=1)

nattr = len(dataset_train.iloc[1,:])
print("Number of attributes: " + str(nattr))  

X_train = dataset_train.iloc[:, 0:(nattr-1)].values
y_train = dataset_train.iloc[:, (nattr-1)].values

X_test = dataset_test.iloc[:, 0:(nattr-1)].values
y_test = dataset_test.iloc[:, (nattr-1)].values

#Replace distance 0 for presence 1
# and distance 2 to non presence 0
X_train[X_train == 0] = 1
X_train[X_train == 2] = 0
X_test[X_test == 0] = 1
X_test[X_test == 2] = 0

X_train = preprocessing.scale(X_train);   
X_test = preprocessing.scale(X_test);

# min_max_scaler = preprocessing.MinMaxScaler()
# X_train = min_max_scaler.fit_transform(X_train)
# X_test = min_max_scaler.transform(X_test)

# ----------------------------------------------------------------------------------
from Methods import Approach1, Approach2, ApproachRF, ApproachRFHP , ApproachMLP, ApproachDT, ApproachSVM

par_droupout = 0.5
par_batch_size = 200 
par_epochs = 200
par_lr = 0.00095
save_results = True

# ----------------------------------------------------------------------------------

#n_estimators = np.append([1], n_estimators)
n_estimators = [100]
print(n_estimators)

print("Dropout: ", par_droupout, ". Batch: ", par_batch_size, ". Epoch: ", par_epochs, ". Learning Rate: ", par_lr)

ApproachMLP(X_train, y_train, X_test, y_test, par_batch_size, par_epochs, par_lr, par_droupout, save_results, dir_path)

#################################################################################

ApproachRF(X_train, y_train, X_test, y_test, n_estimators, save_results, dir_path)

#print("Building random forest models")
#ApproachRFHP(X_train, y_train, X_test, y_test, save_results, dir_path)

#ApproachDT(X_train, y_train, X_test, y_test, save_results, dir_path)

#ApproachSVM(X_train, y_train, X_test, y_test, save_results, dir_path) 

# ---------------------------------------------------------------------------------

# ---------------------------------------------------------------------------------

elapsedTime = time.time() - startTime
print('Time spent:', int(elapsedTime * 1000))

#print("Done.")
print("Finished.")

# ---------------------------------------------------------------------------------

# ---------------------------------------------------------------------------------

# ---------------------------------------------------------------------------------

# ---------------------------------------------------------------------------------

# Loading train and test data from... D:\Camila Leite\Datasets\SurveyTests2.0\Geolife\Movelets\Geolife_Movelets\minSize=2_WithLastPrunning
# Number of attributes: 287
# Using TensorFlow backend.
# [100]
# Dropout:  0.5 . Batch:  200 . Epoch:  200 . Learning Rate:  0.00095
# ['Trees:', 100, 'ACC:', 0.8195488721804511, 'ACC@1:', 0.8195488721804511, 'ACC5:', 0.9849624060150376, 'F1:', 0.7726267118061537]
# {'classifier': 'RF', 'support': 93.0, 'class': 'bike', 'recall': 0.83, 'precision': 0.8, 'f1_score': 0.81}
# {'classifier': 'RF', 'support': 116.0, 'class': 'bus', 'recall': 0.81, 'precision': 0.8, 'f1_score': 0.8}
# {'classifier': 'RF', 'support': 49.0, 'class': 'car', 'recall': 0.65, 'precision': 0.8, 'f1_score': 0.72}
# {'classifier': 'RF', 'support': 32.0, 'class': 'subway', 'recall': 0.75, 'precision': 0.89, 'f1_score': 0.81}
# {'classifier': 'RF', 'support': 25.0, 'class': 'taxi', 'recall': 0.6, 'precision': 0.68, 'f1_score': 0.64}
# {'classifier': 'RF', 'support': 17.0, 'class': 'train', 'recall': 0.82, 'precision': 0.67, 'f1_score': 0.74}
# {'classifier': 'RF', 'support': 200.0, 'class': 'walk', 'recall': 0.9, 'precision': 0.87, 'f1_score': 0.88}
# [['Trees:', 100, 'ACC:', 0.8195488721804511, 'ACC@1:', 0.8195488721804511, 'ACC5:', 0.9849624060150376, 'F1:', 0.7726267118061537]]
# Time spent: 1515
# Finished.

# (tensorflow) C:\Users\uuario\Documents\Camila Leite\Projeto Python\classifiers>python run.py
# Loading train and test data from... D:\Camila Leite\Datasets\SurveyTests2.0\Geolife\Pivots
# Number of attributes: 400
# Using TensorFlow backend.
# [100]
# Dropout:  0.5 . Batch:  200 . Epoch:  200 . Learning Rate:  0.00095
# ['Trees:', 100, 'ACC:', 0.8101503759398496, 'ACC@1:', 0.8139097744360902, 'ACC5:', 0.9887218045112782, 'F1:', 0.7681922677596965]
# {'class': 'bike', 'recall': 0.82, 'precision': 0.81, 'f1_score': 0.81, 'classifier': 'RF', 'support': 93.0}
# {'class': 'bus', 'recall': 0.78, 'precision': 0.76, 'f1_score': 0.77, 'classifier': 'RF', 'support': 116.0}
# {'class': 'car', 'recall': 0.61, 'precision': 0.83, 'f1_score': 0.71, 'classifier': 'RF', 'support': 49.0}
# {'class': 'subway', 'recall': 0.78, 'precision': 0.86, 'f1_score': 0.82, 'classifier': 'RF', 'support': 32.0}
# {'class': 'taxi', 'recall': 0.56, 'precision': 0.67, 'f1_score': 0.61, 'classifier': 'RF', 'support': 25.0}
# {'class': 'train', 'recall': 0.94, 'precision': 0.67, 'f1_score': 0.78, 'classifier': 'RF', 'support': 17.0}
# {'class': 'walk', 'recall': 0.9, 'precision': 0.86, 'f1_score': 0.88, 'classifier': 'RF', 'support': 200.0}
# [['Trees:', 100, 'ACC:', 0.8101503759398496, 'ACC@1:', 0.8139097744360902, 'ACC5:', 0.9887218045112782, 'F1:', 0.7681922677596965]]
# Time spent: 1848
# Finished.


#Etemad
# 1231/1231 [==============================] - 0s 33us/step - loss: 0.9025 - acc: 0.7628 - accuracy_like_sklearn: 0.1429 - top_k_categorical_accuracy: 0.9878 - f1: 0.7298 - val_loss: 1.0258 - val_acc: 0.7143 - val_accuracy_like_sklearn: 0.1429 - val_top_k_categorical_accuracy: 0.9831 - val_f1: 0.6484
# Epoch 200/200
# 1231/1231 [==============================] - 0s 32us/step - loss: 0.8905 - acc: 0.7652 - accuracy_like_sklearn: 0.1429 - top_k_categorical_accuracy: 0.9903 - f1: 0.7392 - val_loss: 1.0228 - val_acc: 0.6955 - val_accuracy_like_sklearn: 0.1429 - val_top_k_categorical_accuracy: 0.9850 - val_f1: 0.6537
# C:\Anaconda2\envs\tensorflow\lib\site-packages\sklearn\preprocessing\label.py:151: DeprecationWarning: The truth value of an empty array is ambiguous. Returning False, but in future this will result in an error. Use `array.size > 0` to check that an array is not empty.
#   if diff:
# C:\Anaconda2\envs\tensorflow\lib\site-packages\sklearn\preprocessing\label.py:151: DeprecationWarning: The truth value of an empty array is ambiguous. Returning False, but in future this will result in an error. Use `array.size > 0` to check that an array is not empty.
#   if diff:
# (array([[ 46,  13,   0,   0,   0,   0,  34],
#        [  9,  87,   5,   1,   6,   0,   8],
#        [  0,  14,  30,   1,   0,   2,   2],
#        [  1,  10,   1,   7,   6,   2,   5],
#        [  2,  19,   2,   1,   1,   0,   0],
#        [  0,   0,   0,   0,   0,  17,   0],
#        [ 11,   6,   0,   0,   1,   0, 182]], dtype=int64), array(['cbike', 'cbus', 'ccar', 'csubway', 'ctaxi', 'ctrain', 'cwalk'],
#       dtype=object))
# {'classifier': 'MLP', 'class': 'cbike', 'f1_score': 0.57, 'precision': 0.67, 'support': 93.0, 'recall': 0.49}
# {'classifier': 'MLP', 'class': 'cbus', 'f1_score': 0.66, 'precision': 0.58, 'support': 116.0, 'recall': 0.75}
# {'classifier': 'MLP', 'class': 'ccar', 'f1_score': 0.69, 'precision': 0.79, 'support': 49.0, 'recall': 0.61}
# {'classifier': 'MLP', 'class': 'csubway', 'f1_score': 0.33, 'precision': 0.7, 'support': 32.0, 'recall': 0.22}
# {'classifier': 'MLP', 'class': 'ctaxi', 'f1_score': 0.05, 'precision': 0.07, 'support': 25.0, 'recall': 0.04}
# {'classifier': 'MLP', 'class': 'ctrain', 'f1_score': 0.89, 'precision': 0.81, 'support': 17.0, 'recall': 1.0}
# {'classifier': 'MLP', 'class': 'cwalk', 'f1_score': 0.84, 'precision': 0.79, 'support': 200.0, 'recall': 0.91}
# ['Trees:', 100, 'ACC:', 0.8176691729323309, 'ACC@1:', 0.8082706766917294, 'ACC5:', 0.9906015037593985, 'F1:', 0.7288010720553685]
# {'classifier': 'RF', 'class': 'cbike', 'f1_score': 0.86, 'precision': 0.9, 'support': 93.0, 'recall': 0.82}
# {'classifier': 'RF', 'class': 'cbus', 'f1_score': 0.78, 'precision': 0.74, 'support': 116.0, 'recall': 0.83}
# {'classifier': 'RF', 'class': 'ccar', 'f1_score': 0.69, 'precision': 0.7, 'support': 49.0, 'recall': 0.67}
# {'classifier': 'RF', 'class': 'csubway', 'f1_score': 0.67, 'precision': 0.82, 'support': 32.0, 'recall': 0.56}
# {'classifier': 'RF', 'class': 'ctaxi', 'f1_score': 0.26, 'precision': 0.36, 'support': 25.0, 'recall': 0.2}
# {'classifier': 'RF', 'class': 'ctrain', 'f1_score': 0.94, 'precision': 1.0, 'support': 17.0, 'recall': 0.88}
# {'classifier': 'RF', 'class': 'cwalk', 'f1_score': 0.91, 'precision': 0.87, 'support': 200.0, 'recall': 0.96}
# [['Trees:', 100, 'ACC:', 0.8176691729323309, 'ACC@1:', 0.8082706766917294, 'ACC5:', 0.9906015037593985, 'F1:', 0.7288010720553685]]
# ['ACC:', 0.6334586466165414, 'ACC@1:', 0.7086466165413534, 'ACC5:', 0.9887218045112782, 'F1:', 0.5271496940368444]
# {'classifier': 'SVM', 'class': 'cbike', 'f1_score': 0.72, 'precision': 0.7, 'support': 93.0, 'recall': 0.73}
# {'classifier': 'SVM', 'class': 'cbus', 'f1_score': 0.61, 'precision': 0.7, 'support': 116.0, 'recall': 0.54}
# {'classifier': 'SVM', 'class': 'ccar', 'f1_score': 0.35, 'precision': 0.45, 'support': 49.0, 'recall': 0.29}
# {'classifier': 'SVM', 'class': 'csubway', 'f1_score': 0.41, 'precision': 0.39, 'support': 32.0, 'recall': 0.44}
# {'classifier': 'SVM', 'class': 'ctaxi', 'f1_score': 0.21, 'precision': 0.14, 'support': 25.0, 'recall': 0.4}
# {'classifier': 'SVM', 'class': 'ctrain', 'f1_score': 0.58, 'precision': 0.52, 'support': 17.0, 'recall': 0.65}
# {'classifier': 'SVM', 'class': 'cwalk', 'f1_score': 0.81, 'precision': 0.84, 'support': 200.0, 'recall': 0.79}
# Time spent: 33442
# Finished.


#MASTERMOVELETS - Geolife
# 1231/1231 [==============================] - 0s 55us/step - loss: 0.4562 - acc: 0.9269 - accuracy_like_sklearn: 0.1429 - top_k_categorical_accuracy: 1.0000 - f1: 0.9209 - val_loss: 3.1488 - val_acc: 0.4492 - val_accuracy_like_sklearn: 0.1429 - val_top_k_categorical_accuracy: 0.9041 - val_f1: 0.4402
# Epoch 199/200
# 1231/1231 [==============================] - 0s 60us/step - loss: 0.4606 - acc: 0.9204 - accuracy_like_sklearn: 0.1429 - top_k_categorical_accuracy: 1.0000 - f1: 0.9168 - val_loss: 3.0602 - val_acc: 0.4511 - val_accuracy_like_sklearn: 0.1429 - val_top_k_categorical_accuracy: 0.9023 - val_f1: 0.4470
# Epoch 200/200
# 1231/1231 [==============================] - 0s 63us/step - loss: 0.4433 - acc: 0.9301 - accuracy_like_sklearn: 0.1429 - top_k_categorical_accuracy: 1.0000 - f1: 0.9265 - val_loss: 3.0211 - val_acc: 0.4624 - val_accuracy_like_sklearn: 0.1429 - val_top_k_categorical_accuracy: 0.9060 - val_f1: 0.4596
# C:\Anaconda2\envs\tensorflow\lib\site-packages\sklearn\preprocessing\label.py:151: DeprecationWarning: The truth value of an empty array is ambiguous. Returning False, but in future this will result in an error. Use `array.size > 0` to check that an array is not empty.
#   if diff:
# C:\Anaconda2\envs\tensorflow\lib\site-packages\sklearn\preprocessing\label.py:151: DeprecationWarning: The truth value of an empty array is ambiguous. Returning False, but in future this will result in an error. Use `array.size > 0` to check that an array is not empty.
#   if diff:
# (array([[65,  7,  3,  3,  0,  0, 15],
#        [21, 56, 16,  5,  1,  1, 16],
#        [ 9,  8, 21,  4,  1,  0,  6],
#        [ 8,  2,  2, 15,  0,  0,  5],
#        [ 2,  5,  4,  0, 10,  1,  3],
#        [ 0,  4,  1,  0,  0, 10,  2],
#        [50, 45, 24, 10,  0,  2, 69]], dtype=int64), array(['bike', 'bus', 'car', 'subway', 'taxi', 'train', 'walk'],
#       dtype=object))
# {'support': 93.0, 'recall': 0.7, 'class': 'bike', 'precision': 0.42, 'classifier': 'MLP', 'f1_score': 0.52}
# {'support': 116.0, 'recall': 0.48, 'class': 'bus', 'precision': 0.44, 'classifier': 'MLP', 'f1_score': 0.46}
# {'support': 49.0, 'recall': 0.43, 'class': 'car', 'precision': 0.3, 'classifier': 'MLP', 'f1_score': 0.35}
# {'support': 32.0, 'recall': 0.47, 'class': 'subway', 'precision': 0.41, 'classifier': 'MLP', 'f1_score': 0.43}
# {'support': 25.0, 'recall': 0.4, 'class': 'taxi', 'precision': 0.83, 'classifier': 'MLP', 'f1_score': 0.54}
# {'support': 17.0, 'recall': 0.59, 'class': 'train', 'precision': 0.71, 'classifier': 'MLP', 'f1_score': 0.65}
# {'support': 200.0, 'recall': 0.34, 'class': 'walk', 'precision': 0.59, 'classifier': 'MLP', 'f1_score': 0.44}
# ['Trees:', 100, 'ACC:', 0.5488721804511278, 'ACC@1:', 0.5488721804511278, 'ACC5:', 0.9755639097744361, 'F1:', 0.5456702686945636]
# {'support': 93.0, 'recall': 0.61, 'class': 'bike', 'precision': 0.66, 'classifier': 'RF', 'f1_score': 0.64}
# {'support': 116.0, 'recall': 0.51, 'class': 'bus', 'precision': 0.45, 'classifier': 'RF', 'f1_score': 0.48}
# {'support': 49.0, 'recall': 0.24, 'class': 'car', 'precision': 0.32, 'classifier': 'RF', 'f1_score': 0.28}
# {'support': 32.0, 'recall': 0.44, 'class': 'subway', 'precision': 0.48, 'classifier': 'RF', 'f1_score': 0.46}
# {'support': 25.0, 'recall': 0.52, 'class': 'taxi', 'precision': 0.68, 'classifier': 'RF', 'f1_score': 0.59}
# {'support': 17.0, 'recall': 0.94, 'class': 'train', 'precision': 0.67, 'classifier': 'RF', 'f1_score': 0.78}
# {'support': 200.0, 'recall': 0.6, 'class': 'walk', 'precision': 0.59, 'classifier': 'RF', 'f1_score': 0.6}
# [['Trees:', 100, 'ACC:', 0.5488721804511278, 'ACC@1:', 0.5488721804511278, 'ACC5:', 0.9755639097744361, 'F1:', 0.5456702686945636]]
# ['ACC:', 0.37969924812030076, 'ACC@1:', 0.47368421052631576, 'ACC5:', 0.9661654135338346, 'F1:', 0.4069632201237669]
# {'support': 93.0, 'recall': 0.6, 'class': 'bike', 'precision': 0.45, 'classifier': 'SVM', 'f1_score': 0.52}
# {'support': 116.0, 'recall': 0.32, 'class': 'bus', 'precision': 0.36, 'classifier': 'SVM', 'f1_score': 0.34}
# {'support': 49.0, 'recall': 0.33, 'class': 'car', 'precision': 0.29, 'classifier': 'SVM', 'f1_score': 0.3}
# {'support': 32.0, 'recall': 0.59, 'class': 'subway', 'precision': 0.15, 'classifier': 'SVM', 'f1_score': 0.23}
# {'support': 25.0, 'recall': 0.44, 'class': 'taxi', 'precision': 0.73, 'classifier': 'SVM', 'f1_score': 0.55}
# {'support': 17.0, 'recall': 0.53, 'class': 'train', 'precision': 0.53, 'classifier': 'SVM', 'f1_score': 0.53}
# {'support': 200.0, 'recall': 0.27, 'class': 'walk', 'precision': 0.64, 'classifier': 'SVM', 'f1_score': 0.38}
# Time spent: 45640

#NEW FOURSQUARE //  MASTERMOVELETS
# 2 [==============================] - 5s 2ms/step - loss: 0.6047 - acc: 0.9937 - accuracy_like_sklearn: 0.0052 - top_k_categorical_accuracy: 1.0000 - f1: 0.9934 - val_loss: 0.8162 - val_acc: 0.9620 - val_accuracy_like_sklearn: 0.0052 - val_top_k_categorical_accuracy: 0.9873 - val_f1: 0.9583
# Epoch 199/200
# 2052/2052 [==============================] - 5s 2ms/step - loss: 0.6613 - acc: 0.9937 - accuracy_like_sklearn: 0.0052 - top_k_categorical_accuracy: 0.9990 - f1: 0.9932 - val_loss: 0.8563 - val_acc: 0.9611 - val_accuracy_like_sklearn: 0.0052 - val_top_k_categorical_accuracy: 0.9844 - val_f1: 0.9622
# Epoch 200/200
# 2052/2052 [==============================] - 5s 2ms/step - loss: 0.6597 - acc: 0.9966 - accuracy_like_sklearn: 0.0052 - top_k_categorical_accuracy: 0.9995 - f1: 0.9954 - val_loss: 0.8394 - val_acc: 0.9611 - val_accuracy_like_sklearn: 0.0052 - val_top_k_categorical_accuracy: 0.9864 - val_f1: 0.9597
# }
# ['Trees:', 100, 'ACC:', 0.9620253164556962, 'ACC@1:', 0.9620253164556962, 'ACC5:', 0.9892891918208374, 'F1:', 0.953007472902322]