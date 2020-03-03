import 'package:flutter/material.dart';
import 'package:flutter/cupertino.dart';
import 'package:avatar_glow/avatar_glow.dart';


class Wcards extends StatelessWidget {

  final String name,imageurl,time;
  
  Wcards(this.name,this.imageurl,this.time);

  @override

  Widget build(BuildContext context) {

    return ListTile(

// leading: CircleAvatar(

//   maxRadius: 25,

//   foregroundColor: Colors.black12,

//   backgroundImage: NetworkImage(imageurl),
// ),
leading: AvatarGlow(
    startDelay: Duration(milliseconds: 1000),
    glowColor: Colors.red,
    endRadius: 40.0,
    duration: Duration(milliseconds: 500),
    repeat: true,
    showTwoGlows: true,
    repeatPauseDuration: Duration(milliseconds: 100),
    child: Material(
      elevation: 8.0,
      shape: CircleBorder(),
      child: CircleAvatar(
        backgroundColor:Colors.redAccent ,
        // child: Image.asset('assets/images/flutter.png',height: 60,),
        backgroundImage: NetworkImage(imageurl),
        // backgroundImage: NetworkImage(messageData[i].imageUrl),
        maxRadius: 25,
        // shape: BoxShape.circle
      ),
    ),
    // shape: BoxShape.circle,
    animate: true,
    curve: Curves.fastOutSlowIn,
  ),


title: Text( name,style: TextStyle(fontWeight: FontWeight.bold),),

subtitle: Text(time),
    );
  }
}