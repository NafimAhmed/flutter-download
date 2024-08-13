



import 'dart:io';

import 'package:flutter/material.dart';
import 'package:http/http.dart' as http;

class Home extends StatelessWidget{
  @override
  Widget build(BuildContext context) {
    // TODO: implement build
    return Scaffold(

      appBar: AppBar(
        title: Text(""),
      ),
      body: Column(

        children: [

          IconButton(onPressed: ()async{


            var path="/storage/emulated/0/Download/abc.mp3";

            var file=File(path);

            var res= await http.get(Uri.parse("https://commondatastorage.googleapis.com/codeskulptor-assets/Epoq-Lepidoptera.ogg"));


            file.writeAsBytes(res.bodyBytes);





          }, icon: Icon(Icons.download))
        ],

      ),
    );
  }
}