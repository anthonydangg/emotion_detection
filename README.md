<!-- Improved compatibility of back to top link: See: https://github.com/othneildrew/Best-README-Template/pull/73 -->
<a name="readme-top"></a>
<!--
*** Thanks for checking out the Best-README-Template. If you have a suggestion
*** that would make this better, please fork the repo and create a pull request
*** or simply open an issue with the tag "enhancement".
*** Don't forget to give the project a star!
*** Thanks again! Now go create something AMAZING! :D
-->

<!-- PROJECT LOGO -->
<br />
<div align="center">
  <a href="https://github.com/github_username/repo_name">
    <img src="https://media2.giphy.com/media/v1.Y2lkPTc5MGI3NjExMGtlZXZpeXRjOTBpbG04Mm5rY3JjdGgyYnF3eWdyZmUyc3NwcnRzZSZlcD12MV9pbnRlcm5hbF9naWZfYnlfaWQmY3Q9cw/ETY5vYoZjLD6Ibf37u/giphy.gif" alt="Logo" width="80" height="80">
  </a>

<h3 align="center">Facial Expression Recognition</h3>

  <p align="center">
    Predicting Early Signs of
Psychopathological Disease Among Children
    <br />
  </p>
</div>







<!-- ABOUT THE PROJECT -->
## About The Project

<div align="center">
  <img src="fer_img.jpeg" alt="Logo" width="500" height="400">
</div>


We are building an app that streamlines an existing research process, known as Incredible Cake Kids, which creates an interactive user experience for children, while also allowing us to collect valuable data that can give insight into the child's risk of mental heath deterioration.

There are two version of this app. There is a website version that can easily be ran in your browser and a iOS version (*incomplete, doesn't incorporate the cake research task*).




### Built With

* ![Python](https://img.shields.io/badge/python-3670A0?style=for-the-badge&logo=python&logoColor=ffdd54)
* ![JavaScript](https://img.shields.io/badge/javascript-%23323330.svg?style=for-the-badge&logo=javascript&logoColor=%23F7DF1E)
* ![HTML5](https://img.shields.io/badge/html5-%23E34F26.svg?style=for-the-badge&logo=html5&logoColor=white)
* ![CSS3](https://img.shields.io/badge/css3-%231572B6.svg?style=for-the-badge&logo=css3&logoColor=white)
* ![Flutter](https://img.shields.io/badge/Flutter-%2302569B.svg?style=for-the-badge&logo=Flutter&logoColor=white)


<!-- GETTING STARTED -->
## Getting Started (Web Version)

The website version can be played in your browser [here](https://cakekids.onrender.com/).

The data used in the models can be found [here](https://paperswithcode.com/dataset/fer2013). Be sure to change the directory of the data in the notebook to where you downloaded it or else it won't run. The Dartmouth dataset which some of the models use is not available for the public, however, the code is still there for reference. In other words, the Dartmouth Model file cannot be ran without contacting Dartmouth.

All of the content for this is in the "website-version" folder.

### Prerequisites

You will need the following to run the app:
* Camera
* Web Browser (Google Chrome, Safari, Edge, etc.)

The dependencies for the models include:
- Pandas (pandas)
- NumPy (numpy)
- OS (os)
- Matplotlib (matplotlib)
- sklearn
- mlxtend
- keras



### Installation

   ```sh
   git clone https://github.com/anthonydangg/emotion_detection.git
   ```

To install all required dependencies for the models. Run below:

  ```sh
  pip install opencv-python tensorflow numpy matplotlib Pillow torch torchvision pytorch-pretrained-vit pandas scikit-learn mlxtend
  ```


<!-- GETTING STARTED -->
## Getting Started (iOS Version) WIP
The IOS app is currently in development but a developer version can be ran with minimal features. We plan to have an easier way to run the app in the future. To do so follow the steps below. All of the content for this is in the "emotion_detection_app" folder. *Note: This only detects emotions, doesn't implement the cake research task*

### Prerequisites

You will need the following to run the app:
* [Flutter IOS](https://docs.flutter.dev/get-started/install/macos/mobile-ios)
* Visual Studio Code + [Flutter Extension](https://marketplace.visualstudio.com/items?itemName=Dart-Code.flutter)
* [XCode 15](https://developer.apple.com/xcode/)
* [CocoaPods](https://guides.cocoapods.org/using/getting-started.html#installation)
* iPhone + USB


### Installation

   ```sh
   git clone https://github.com/anthonydangg/emotion_detection.git
   ```

To install all required dependencies for the models. Run below:

  ```sh
   pip install opencv-python tensorflow numpy matplotlib Pillow torch torchvision pytorch-pretrained-vit pandas scikit-learn mlxtend
  ```




<!-- USAGE EXAMPLES -->
## How to Use

The easiest way to run the app is to ensure you have all the prerequisites installed, follow the directory below, and run the **runner.xcworkspace**:

**_emotion_detection_app -> ios -> Runner.xcworkspace_**

This will open the app in Xcode. Ensure that you have an iPhone with the most updated iOS connected to your computer. Click the play button at the left top corner on Xcode. It may ask you for permission to trust the developer, if this happens just follow the instructions on the pop-up.
