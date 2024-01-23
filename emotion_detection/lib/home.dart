import 'package:camera/camera.dart';
import 'package:emotion_detection/main.dart';
import 'package:flutter/material.dart';
import 'package:tflite_flutter/tflite_flutter.dart';

class Home extends StatefulWidget {
  const Home({super.key});

  @override
  State<Home> createState() => _HomeState();
}

class _HomeState extends State<Home> {
  CameraImage? cameraImage;
  CameraController? cameraController;
  String output = '';

  loadCamera(){
    cameraController = CameraController(cameras![0], ResolutionPreset.medium);
    cameraController!.initialize().then((value){
      if(!mounted){
        return;
      } else {
        setState(() {
          cameraController!.startImageStream((imageStream) {
            cameraImage = imageStream;
            // runModel();
          });
        });
      }
    });
  }

  // runModel()async{
  //   if(cameraImage != null) {
  //     var predictions = await Tflite.runModelOnFrame(bytesList: cameraImage!.planes.map((plane){
  //       return planes.bytes;
  //     }).toList()
  //     imageHeight: camerImage);
  //   }
  // }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Live Emotion Detection App')
      ),
    );
  }
}