#!/usr/bin/env python
# coding: utf-8

# In[1]:


import sys
import os
import numpy as np
import pandas as pd
import matplotlib.pyplot as plt
import seaborn as sns
import cv2
import shutil
import tensorflow as tf
import PIL.Image as Image
from tensorflow import keras
from tensorflow.keras.applications.imagenet_utils import decode_predictions
from tensorflow.keras.applications import *
from tensorflow.keras import models
from tensorflow.keras import layers
from keras.preprocessing.image import ImageDataGenerator
from sklearn import model_selection
from tqdm import tqdm
from tensorflow.keras import optimizers


# In[3]:


input_shape=(224,224,3)
conv_base = MobileNet(weights="imagenet", include_top=False, input_shape=input_shape)


# In[5]:


labels=os.listdir(r'C:\Users\Aditi\Desktop\Projects\Breast Cancer Detection n Prediction\Training')
print(labels)


# In[7]:


all_files=[]
for item in labels:
    files=os.listdir('C:/Users/Aditi/Desktop/Projects/Breast Cancer Detection n Prediction/Training'+'/'+item)
    for i in files:
        all_files.append((item,str(item+'/'+i)))


# In[8]:


all_files


# In[9]:


data=pd.DataFrame(data=all_files,columns=['Labels','Image'])


# In[10]:


data


# In[14]:


images=[]
label=[]
path='C:/Users/Aditi/Desktop/Projects/Breast Cancer Detection n Prediction/Training'
for i in range(0,len(all_files)):
    filepath=str(path+'/'+all_files[i][1])
    img=(cv2.imread(filepath))
    img=cv2.resize(img,(224,224))
    images.append(img)
    label.append(all_files[i][0])


# In[15]:


images=np.array(images)


# In[16]:


images.shape


# In[17]:


y=pd.get_dummies(data.Labels)
print(y)


# # Training

# In[22]:


model = models.Sequential()
model.add(conv_base)
model.add(layers.GlobalMaxPooling2D(name="gap"))


# In[23]:


model.add(layers.Dropout(0.2, name="dropout_out"))


# In[24]:


model.add(layers.Dense(3, activation="softmax"))
conv_base.trainable = False


# In[26]:


from sklearn.model_selection import train_test_split

x_train,x_test,y_train,y_test=train_test_split(images,y,shuffle=True,random_state=42,test_size=0.4)


# In[27]:


print(x_train.shape)
print(y_train.shape)
print(x_test.shape)
print(y_test.shape)


# In[28]:


model.compile(loss="categorical_crossentropy", optimizer="adam", metrics=["acc"])


# In[29]:


history = model.fit(x_train, y_train, epochs=10, verbose=2)


# In[30]:


test_loss, test_acc = model.evaluate(x_test, y_test, verbose=1)


# In[31]:


print("Test Loss: ",test_loss)
print("Test Accuracy: ",round(test_acc*100,2),"%")


# # Validation

# In[32]:


y_pred=model.predict(x_test)
score=model.evaluate(x_test, y_test,verbose=1)


# # Prediction

# In[33]:


import easygui
import imageio


# In[34]:


name=input("Input patient name  ")


# In[35]:


print("Submit your image for diagnosis")
flag=0
while(flag==0):    
    ImagePath=easygui.fileopenbox()
    img=cv2.imread(ImagePath)
    if img is None:
            print("Can not find any image. Choose appropriate file")
            continue
    else:
        flag=1


# In[36]:


img.shape


# In[37]:


img=cv2.resize(img,(224,224))


# In[38]:


img.shape


# In[39]:


img


# In[42]:


from PIL import Image as im


# In[43]:


image=im.fromarray(img)


# In[44]:


image


# In[45]:


img=img[np.newaxis,...]


# In[46]:


img.shape


# In[47]:


ans=model.predict(img)


# In[48]:


ans


# In[49]:


index=np.argmax(ans)


# In[50]:


index


# In[51]:


accuracy=round((np.amax(ans)*100),2)


# In[52]:


print("There is a {a}% chance that {n} suffers from {d} tumor".format(a=accuracy, n=name, d=labels[index]))


# In[ ]:




