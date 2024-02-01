import 'package:camera/camera.dart';
import 'package:emotion_detection/main.dart';
import 'package:flutter/material.dart';

class MyWidget extends StatefulWidget {
  const MyWidget({super.key});

  @override
  State<MyWidget> createState() => _MyWidgetState();
}

class _MyWidgetState extends State<MyWidget> {
  CameraImage? cameraImage;
  CameraController? cameraController;
  String output = '';


  loadCamera(){
    cameraController = CameraController(cameras![0], ResolutionPreset.medium);
    cameraController!.initialize().then((value) {
      if(!mounted){
        return;
      }
      else {
        setState(() {
          cameraController!.startImageStream((imageStream) { 
            cameraImage = imageStream;
          });
        });
      }
    });
  }
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: const Text('Emotion Detector')),);
  }
}