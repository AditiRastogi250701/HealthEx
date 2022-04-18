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


# In[2]:


input_shape=(260,260,3)
conv_base = EfficientNetB2(weights="imagenet", include_top=False, input_shape=input_shape)


# In[3]:


labels=os.listdir(r'C:\Users\Aditi\Desktop\Projects\Retinal Disease Detection\Training')
print(labels)


# In[45]:


list(labels)


# In[4]:


all_files=[]
for item in labels:
    files=os.listdir('C:/Users/Aditi/Desktop/Projects/Retinal Disease Detection/Training'+'/'+item)
    for i in files:
        all_files.append((item,str(item+'/'+i)))


# In[5]:


all_files


# In[6]:


data=pd.DataFrame(data=all_files,columns=['Labels','Image'])


# In[7]:


data


# In[8]:


images=[]
label=[]
path='C:/Users/Aditi/Desktop/Projects/Retinal Disease Detection/Training'
for i in range(0,len(all_files)):
    filepath=str(path+'/'+all_files[i][1])
    img=(cv2.imread(filepath))
    img=cv2.resize(img,(260,260))
    images.append(img)
    label.append(all_files[i][0])


# In[9]:


images=np.array(images)


# In[10]:


images.shape


# In[11]:


y=pd.get_dummies(data.Labels)
print(y)


# # Training

# In[12]:


model = models.Sequential()
model.add(conv_base)
model.add(layers.GlobalMaxPooling2D(name="gap"))


# In[13]:


model.add(layers.Dropout(0.2, name="dropout_out"))


# In[14]:


# model.add(layers.Dense(4, activation="softmax", name="fc_out"))
# conv_base.trainable = False

model.add(layers.Dense(39, activation="softmax"))
conv_base.trainable = False


# In[15]:


from sklearn.model_selection import train_test_split

x_train,x_test,y_train,y_test=train_test_split(images,y,shuffle=True,random_state=42,test_size=0.4)


# In[16]:


print(x_train.shape)
print(y_train.shape)
print(x_test.shape)
print(y_test.shape)


# In[17]:


# model.compile(
#     loss="categorical_crossentropy",
#     optimizer=optimizers.RMSprop(lr=2e-5),
#     metrics=["acc"],
# )

model.compile(
    loss="categorical_crossentropy",
    optimizer="adam",
    metrics=["acc"],
)


# In[18]:


history = model.fit(x_train, y_train, epochs=5, verbose=2)


# In[19]:


test_loss, test_acc = model.evaluate(x_test, y_test, verbose=1)


# In[20]:


print("Test Loss: ",test_loss)
print("Test Accuracy: ",round(test_acc*100,2),"%")


# # Validation

# In[21]:


y_pred=model.predict(x_test)
score=model.evaluate(x_test, y_test,verbose=1)


# # Prediction

# In[22]:


import easygui
import imageio


# In[23]:


name=input("Input patient name  ")


# In[24]:


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


# In[25]:


img.shape


# In[26]:


img=cv2.resize(img,(260,260))


# In[27]:


img.shape


# In[28]:


img


# In[29]:


from PIL import Image as im


# In[30]:


image=im.fromarray(img)


# In[31]:


image


# In[32]:


img=cv2.resize(img,(260,260))


# In[33]:


img.shape


# In[34]:


img=img[np.newaxis,...]


# In[35]:


img.shape


# In[36]:


ans=model.predict(img)


# In[37]:


ans


# In[38]:


index=np.argmax(ans)


# In[39]:


index


# In[40]:


accuracy=round((np.amax(ans)*100),2)


# In[41]:


print("There is a {a}% chance that {n} suffers from {d}".format(a=accuracy, n=name, d=labels[index-1]))


# In[42]:


import pickle


# In[43]:


pickle.dump(model,open('Retinal Disease.pkl','wb'))


# In[ ]:




