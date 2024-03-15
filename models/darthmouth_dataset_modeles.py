#!/usr/bin/env python
# coding: utf-8

# In[4]:


# Specify the name of the uploaded zip file
import zipfile

# List of zip file names
zip_file_names = ['40males.zip', '40females.zip']

# Specify the folder where you want to extract the contents
extract_folder_path = 'images/'

# Iterate through each zip file
for zip_file_name in zip_file_names:
    # Open the zip file and extract its contents
    with zipfile.ZipFile(zip_file_name, 'r') as zip_ref:
        zip_ref.extractall(extract_folder_path)

    print(f"Contents of {zip_file_name} have been extracted to {extract_folder_path}")


# In[9]:


import cv2
import tensorflow as tf
import numpy as np
import matplotlib.pyplot as plt
import os
import random
files_in_folder = os.listdir(extract_folder_path)

# Print the list of files
print("Files in the extracted folder:")
for file_name in files_in_folder:
    print(file_name)


# In[5]:


from PIL import Image
from tensorflow.keras.preprocessing import image

from deepface import DeepFace
import deepface


# In[14]:


emotion_dict = {'Angry': 0, 'Disgust': 1, 'Fear': 2, 'Happy': 3, 'Neutral': 4, 'Sad': 5, 'Surprise': 6}

# Create a reverse dictionary to map numerical labels back to emotion classes
emotion_dict_reverse = {v: k for k, v in emotion_dict.items()}


# In[15]:


labels = []
x_total = []
y_total = []

lst_emotion_probability = []

# Labels
classes = ['Angry', 'Disgusted', 'Afraid', 'Happy', 'Neutral', 'Sad', 'Surprised']

for emo_class in classes:
    class_path = os.path.join(files_in_folder[0], emo_class)
    
    for root, dirs, files in os.walk(class_path):
        for subdir in dirs:
            subdir_path = os.path.join(root, subdir)

            for filename in os.listdir(subdir_path):
                
                if filename == '.DS_Store':
                    continue

                file_path = os.path.join(subdir_path, filename)
                
                if 'Edited' in file_path:
                    continue
                
                print(file_path)


                # Check if the current path is a file (not a directory)
                if os.path.isfile(file_path):
                    try:
      
                        img = cv2.imread(file_path)

                
            
                        result = DeepFace.analyze(img, actions = ['emotion'], enforce_detection = False)
                
                        dictionary_emotions = result[0]['emotion']
                        #deep face emotion detection array
                        lst_emotion_probability.append(max(dictionary_emotions,  key=dictionary_emotions.get))
                        #true emotion label array
                        y_total.append(emo_class)
                
                    except (OSError, Image.UnidentifiedImageError):
                        # Skip files that cannot be opened as images
                        print(f"Skipping {file_path} - not a valid image file")
                        continue


# In[16]:


updated_y = []
for string in y_total:
    if string == 'Afraid':
        string = 'fear'
    elif string == 'Disgusted':
        string = 'disgust'
    elif string == 'Surprised':
        string = 'surprise'
    updated_y.append(string.lower())
    


# In[17]:


matching_elements = sum(x == y for x, y in zip(updated_y, lst_emotion_probability))

# Calculate the percentage of matches
percentage_matches = (matching_elements / max(len(updated_y), len(lst_emotion_probability))) * 100
percentage_matches


# In[105]:


np.unique(np.array(lst_emotion_probability))
#np.unique(np.array(updated_y))


# In[106]:


np.unique(np.array(updated_y))


# In[46]:


from PIL import Image

labels = []
x_total = []
y_total = []

# Labels
classes = ['Angry', 'Disgust', 'Fear', 'Happy', 'Neutral', 'Sad', 'Surprise']

for emo_class in classes:
    class_path = os.path.join(files_in_folder[0], emo_class)
    
    for root, dirs, files in os.walk(class_path):
        for subdir in dirs:
            subdir_path = os.path.join(root, subdir)

            for filename in os.listdir(subdir_path):
                if filename == '.DS_Store':
                    continue

                file_path = os.path.join(subdir_path, filename)

                # Check if the current path is a file (not a directory)
                if os.path.isfile(file_path):
                    try:
                        # Attempt to open the file as an image
                        #img = Image.open(file_path)
                        #img = img.convert('L')  # Convert to grayscale
                        #img = img.resize((48, 48))  # Resize if needed
                        #x = image.img_to_array(img)
                        img = cv2.imread(file_path)

                        # Convert the image to grayscale
                        gray_img = cv2.cvtColor(img, cv2.COLOR_BGR2GRAY)
                        resized_img = cv2.resize(gray_img, (48, 48))
                        x = resized_img.astype('float32') / 255.0
                        x = np.expand_dims(x, axis=0)

                        x /= 255
                        labels.append(emo_class)
                        x_total.append(x)
                        y_total.append(emotion_dict[emo_class])
                    except (OSError, Image.UnidentifiedImageError):
                        # Skip files that cannot be opened as images
                        print(f"Skipping {file_path} - not a valid image file")
                        continue

                    
                    
        result = DeepFace.analyze(img_arr, actions = ['emotion'], enforce_detection = False)

        dictionary_emotions = result[0]['emotion']
        lst_emotion_probability.append(max(dictionary_emotions,  key=dictionary_emotions.get))


# In[17]:


labels = []
x_total = []
y_total = []
#labels
classes = ['angry', 'disgust', 'fear', 'happy', 'neutral', 'sad', 'surprise']
for emo_class in classes:
    path = os.path.join('/Users/varundinesh/Downloads/' + files_in_folder[0], emo_class)
    for i in os.listdir(path):
        img = image.load_img(os.path.join(path, i), grayscale=True, target_size=(48, 48))
        x = image.img_to_array(img)
        x = np.expand_dims(x, axis = 0)

        x /= 255
        labels.append(emo_class)

        x_total.append(x)
        y_total.append(emotion_dict_reverse[emo_class])


# In[ ]:


labels = []
x_total_males = []
y_total_males = []
for emo_class in classes:
    path = os.path.join(darthmuth_path_males, emo_class)
    for i in os.listdir(path):
        img = image.load_img(os.path.join(path, i), grayscale=True, target_size=(48, 48))
        x = image.img_to_array(img)
        x = np.expand_dims(x, axis = 0)

        x /= 255
        labels.append(emo_class)

        x_total_males.append(x)
        y_total_males.append(emotion_dict_reverse[emo_class])


# In[ ]:


X_train, X_test, y_train, y_test = train_test_split(
    file_paths, y, test_size=0.2, random_state=42, stratify=y
)


# In[ ]:





# In[ ]:




