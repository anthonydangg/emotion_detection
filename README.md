# Facial Expression Emotion Detector

This is the Quarter 1 Project for the course DSC 180A. In this project, we collected and created multiple baseline models for predicting emotions purely based off facial expression. To be able to run the code you must download the dataset below. Then, run the notebooks as is. 

![fer_img](img.jpg)

Download the dataset from [here](https://paperswithcode.com/dataset/fer2013)

## Mobile Net V2 Model

In order to run the code in this notebook, you must install the following dependencies:

### Dependencies:
- OpenCV (cv2)
- TensorFlow (tensorflow)
- Keras (tensorflow.keras)
- NumPy (numpy)
- Matplotlib (matplotlib)

### Specific TensorFlow/Keras Modules:
- tensorflow.keras.models
- tensorflow.keras.layers
- tensorflow.keras.optimizers
- keras.models.Sequential
- keras.layers.Dense
- keras.layers.Activation
- keras.layers.Flatten
- keras.layers.Dropout
- keras.metrics.categorical_crossentropy
- keras.layers.BatchNormalization

### Other Python Modules:
- os
- random
- collections.defaultdict

Run the corresponding notebook on Google Colab. Download the dataset [here](https://paperswithcode.com/dataset/fer2013) and upload the data to the google drive associated with your colab environment. Edit the file paths to match your system settings. Run the cells and you will be able to reproduce the results.


## Vision Transformer Model

In order to run the code in this notebook, you must install the following dependencies:

- ### Dependencies:
  - **json**: Included in the Python standard library.
  - **PIL (Pillow)**: Install with `pip install Pillow`.
  - **torch**: Install with `pip install torch`.
  - **torchvision**: Install with `pip install torchvision`.
  - **pytorch_pretrained_vit**: Install with `pip install pytorch-pretrained-vit`.
  - **cv2 (OpenCV)**: Install with `pip install opencv-python`.
  - **tensorflow**: Install with `pip install tensorflow`.
  - **numpy**: Install with `pip install numpy`.
  - **matplotlib**: Install with `pip install matplotlib`.
 
Replacing train_path = '/Users/varundinesh/Downloads/archive (3)/train/' with file path of downloaded dataset from [here](https://paperswithcode.com/dataset/fer2013)

## Neural Network Model

In order to run the code in this notebook, you must install the following dependencies:

### Dependencies:
- Pandas (pandas)
- NumPy (numpy)
- OS (os)
- Matplotlib (matplotlib)

### Specific Scikit-Learn Modules:
- sklearn.metrics.confusion_matrix

### Specific MLxtend Modules:
- mlxtend.plotting.plot_confusion_matrix

### Specific Keras Modules:
- keras.models (from Keras)
- keras.layers.Dense
- keras.layers.Dropout
- keras.layers.Flatten
- keras.layers.Conv2D
- keras.layers.MaxPool2D
- keras.optimizers.RMSprop
- keras.optimizers.Adam
- keras.utils.to_categorical

