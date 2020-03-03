import 'dart:ui';
import 'package:flutter/material.dart';
import 'dart:async';
import 'package:image_picker/image_picker.dart';
import 'dart:io';

class Camera extends StatefulWidget {




  @override
  _CameraState createState() => _CameraState();
}

class _CameraState extends State<Camera> {
  File _image;
  @override
  
  
  Widget build(BuildContext context) {
    return Scaffold(
body: Column(
  children: <Widget>[
    Container(
padding: EdgeInsets.all(20.0),
child: _image == null
?Image(
  image: AssetImage("assets/logo.png"),
)
:Image.file(_image)
    ),
          RaisedButton(
            padding: EdgeInsets.fromLTRB(50, 15, 50, 15),
            color: Colors.black,
            child: Text("Add Photo", style: TextStyle(color: Colors.white,fontWeight: FontWeight.bold)),
            onPressed: openBox,
          ),
  ],
),
    );
  }






Future openCamera()async{
  var image = await ImagePicker.pickImage(source: ImageSource.camera);
  setState(() {
    _image = image;
  });
}

Future openGallery()async{
  var image = await ImagePicker.pickImage(source: ImageSource.gallery);
  setState(() {
    
_image = image;
  });
}


Future<void> openBox() {
    Dialog dialogWithImage = Dialog(
      child: Container(
        height: 300.0,
        width: 300.0,
        child: Column(
          children: <Widget>[
            Container(
              padding: EdgeInsets.all(12),
              alignment: Alignment.center,
              decoration: BoxDecoration(color: Colors.black),
              child: Text(
                "Upload Status",
                style: TextStyle(
                    color: Colors.white,
                    fontSize: 18,
                    fontWeight: FontWeight.w600),
              ),
            ),
            Container(
              height: 200,
              width: 300,
              child: Image.asset(
                'assets/s2.gif',
                fit: BoxFit.scaleDown,
              ),
            ),
            Row(
              mainAxisAlignment: MainAxisAlignment.center,
              crossAxisAlignment: CrossAxisAlignment.end,
              children: <Widget>[
                RaisedButton(
                  color: Colors.black,
                  onPressed:openCamera,
                  child: Text(
                    'Camera',
                    style: TextStyle(fontSize: 18.0, color: Colors.white),
                  ),
                ),
                SizedBox(
                  width: 20,
                ),
                RaisedButton(
                  color: Colors.black,
                  onPressed:openGallery,
                  child: Text(
                    'Gallery!',
                    style: TextStyle(fontSize: 18.0, color: Colors.white),
                  ),
                )
              ],
            ),
          ],
        ),
      ),
    );

    showDialog(
        context: context, builder: (BuildContext context) => dialogWithImage);
        return null;
}

}

