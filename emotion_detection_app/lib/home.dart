import 'package:camera/camera.dart';
import 'package:flutter/material.dart';
import 'package:tflite_v2/tflite_v2.dart';
import 'package:emotion_detection_app_v2/main.dart';

class MyWidget extends StatefulWidget {
  const MyWidget({super.key});

  @override
  State<MyWidget> createState() => _MyWidgetState();
}

class _MyWidgetState extends State<MyWidget> {
  CameraImage? cameraImage;
  CameraController? cameraController;
  String output = '';

  @override
  void initState() {
    super.initState();
    loadCamera();
    loadmodel();
  }

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
            // runModel();
          });
        });
      }
    });
  }

  runModel() async {
    if(cameraImage!=null) {
      var predictions = await Tflite.runModelOnFrame(bytesList: cameraImage!.planes.map((plane) {
        return plane.bytes;
      }).toList(),
      imageHeight: cameraImage!.height,
      imageWidth: cameraImage!.width,
      imageMean: 127.5,
      imageStd: 127.5,
      rotation: 90,
      numResults: 2,
      threshold: 0.1,
      asynch: true);
      
      predictions!.forEach((element) {
        setState(() {
          output = element['label'];
        });
      });
    }
  }

  loadmodel() async {
    await Tflite.loadModel(
    model: "assets/model.tflite",
    labels: "assets/labels.txt");
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: const Text('Emotion Detector')),
      body: Column(
        children: [
          Padding(padding:
          EdgeInsets.all(20),
          child: Container(
            height: MediaQuery.of(context).size.height*0.7,
            width: MediaQuery.of(context).size.width,
            child: !cameraController!.value.isInitialized?
          Container():
          AspectRatio(aspectRatio: cameraController!.value.aspectRatio,
          child: CameraPreview(cameraController!),),
          ),
          ),
          Text(
            output, 
            style: TextStyle(fontWeight: FontWeight.bold, fontSize: 20),
          )
        ]),
      );
  }
}