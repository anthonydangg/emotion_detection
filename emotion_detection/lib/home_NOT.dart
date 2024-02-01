// import 'package:camera/camera.dart';
// import 'package:emotion_detection/main.dart';
// import 'package:flutter/material.dart';
// // import 'package:tflite_v2/tflite_v2.dart';


// class Home extends StatefulWidget {
//   const Home({super.key});

//   @override
//   State<Home> createState() => _HomeState();
// }

// class _HomeState extends State<Home> {
//   CameraImage? cameraImage;
//   CameraController? cameraController;
//   //controls camera ? is null safety
//   String output = '';

//   void initState() {
//     super.initState();
//     loadCamera;
//     // loadmodel();
//   }

//   loadCamera(){
//     cameraController = CameraController(cameras![0], ResolutionPreset.medium);
//     cameraController!.initialize().then((value){
//       if(!mounted){
//         return;
//         //if not mounted return nothing
//       } else {
//         setState(() {
//           cameraController!.startImageStream((imageStream) {
//             cameraImage = imageStream;
//             // runModel(); // can rename
//           });
//         });
//       }
//     });
//   }

//   // runModel() async {
//   //   if(cameraImage != null) {
//   //     var predictions = await Tflite.runModelOnFrame(
//   //       bytesList: cameraImage!.planes.map((plane) {
//   //       return plane.bytes;
//   //     }).toList(),
//   //     imageHeight: cameraImage!.height,
//   //     imageWidth: cameraImage!.width,
//   //     imageMean: 127.5,
//   //     imageStd: 127.5,
//   //     rotation: 90,
//   //     numResults: 2,
//   //     threshold: 0.1,
//   //     asynch: true);
//   //     //iterate through the predictions
//   //     predictions!.forEach((element) {
//   //       setState(() {
//   //         output = element['label'];
//   //       });
//   //     });
//   //   }
//   // }

//   // loadmodel() async{
//   //   await Tflite.loadModel(model: "assets/model.tflite", labels: "assets/labels.txt");
//   //   //no labels?
//   // }

// @override
// Widget build(BuildContext context) {
//   return Scaffold(
//     appBar: AppBar(
//       title: const Text('Live Emotion Detection App'),
//     ),
//     body: Column(
//       children: [
//         Padding(
//           padding: EdgeInsets.all(20),
//           child: Container(
//             height: MediaQuery.of(context).size.height * 0.7,
//             width: MediaQuery.of(context).size.width,
//             child: !cameraController!.value.isInitialized
//                 ? Container()
//                 : AspectRatio(
//                     aspectRatio: cameraController!.value.aspectRatio,
//                     child: CameraPreview(cameraController!),
//                   ),
//           ),
//         ),
//         Text(
//           output,
//           style: TextStyle(
//             fontWeight: FontWeight.bold,
//             fontSize: 20,
//           ),
//         ),
//       ],
//     ),
//   );
// }
// }