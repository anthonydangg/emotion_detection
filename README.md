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

<h3 align="center">Emotion Detection App WIP</h3>

  <p align="center">
    App that uses facial expressions to predict emotions. Built for research
    and academic purposes.
    <br />
  </p>
</div>



<!-- TABLE OF CONTENTS -->
<details>
  <summary>Table of Contents</summary>
  <ol>
    <li>
      <a href="#about-the-project">About The Project</a>
      <ul>
        <li><a href="#built-with">Built With</a></li>
      </ul>
    </li>
    <li>
      <a href="#getting-started">Getting Started</a>
      <ul>
        <li><a href="#prerequisites">Prerequisites</a></li>
        <li><a href="#installation">Installation</a></li>
      </ul>
    </li>
    <li>
    <a href="#how-to-use">How to Use</a>

  </ol>
</details>



<!-- ABOUT THE PROJECT -->
## About The Project

![fer_img](fer_img.jpeg)

Information from emotions can greatly benefit researchers as it can be used as an informative predictor for mental health symptoms. Many researchers may find themselves needing to collect emotional data from facial expressions, however, there is no universal standard. While there are big companies with apps in this field already, they do not offer a solution that emphasizes privacy and convenience. We developed a mobile app that researchers can use to easily gather data about emotions for research purposes. The app works as a skeleton that can plug in machine learning models that predict emotions from facial expressions.




### Built With

* ![Python](https://img.shields.io/badge/python-3670A0?style=for-the-badge&logo=python&logoColor=ffdd54)
* ![Flutter](https://img.shields.io/badge/Flutter-%2302569B.svg?style=for-the-badge&logo=Flutter&logoColor=white)




<!-- GETTING STARTED -->
## Getting Started

The app is currently in development but a developer version can be ran with minimal features. We plan to have an easier way to run the app in the future. To do so follow the steps below.

The EDA notebook is for context on what kind of models are being used in the app.

### Prerequisites

You will need the following:
* [Flutter IOS](https://docs.flutter.dev/get-started/install/macos/mobile-ios)
* Visual Studio Code + [Flutter Extension](https://marketplace.visualstudio.com/items?itemName=Dart-Code.flutter)
* [XCode 15](https://developer.apple.com/xcode/)
* [CocoaPods](https://guides.cocoapods.org/using/getting-started.html#installation)
* iPhone + USB

### Installation

   ```sh
   git clone https://github.com/anthonydangg/emotion_detection.git
   ```




<!-- USAGE EXAMPLES -->
## How to Use

The easiest way to run the app is to ensure you have all the prerequisites installed, follow the directory below, and run the **runner.xcworkspace**:

**_emotion_detection_app -> ios -> Runner.xcworkspace_**

This will open the app in Xcode. Ensure that you have an iPhone with the most updated iOS connected to your computer. Click the play button at the left top corner on Xcode. It may ask you for permission to trust the developer, if this happens just follow the instructions on the pop-up.
