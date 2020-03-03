import 'package:flutter/material.dart';
import 'package:black/model/chat.dart';
import 'ChatDetails.dart';
import 'package:avatar_glow/avatar_glow.dart';


class Chats extends StatefulWidget {
  @override
  _ChatsState createState() => _ChatsState();
}

class _ChatsState extends State<Chats> {
  @override
  Widget build(BuildContext context) {
    return ListView.builder(
      itemCount: messageData.length,
      itemBuilder: (context,i) =>Column(
        children: <Widget>[
          Divider(
height: 20.0,
          ),

ListTile(
  // leading: CircleAvatar(
  //   maxRadius: 25.0,
  //   backgroundImage: NetworkImage(messageData[i].imageUrl),
  // ),
//   leading: AvatarGlow(
//     glowColor: Colors.green,
//     endRadius: 40.0,
//     duration: Duration(milliseconds: 2000),
//     repeat: true,
//     showTwoGlows: true,
//     repeatPauseDuration: Duration(milliseconds: 100),
//     child: Material(
//       elevation: 10.0,
//       shape: CircleBorder(),
//       child: CircleAvatar(
//         backgroundColor:Colors.redAccent ,
//         // child: Image.asset('assets/images/flutter.png',height: 60,),
// maxRadius: 25.0,
// backgroundImage: NetworkImage(messageData[i].imageUrl),
//       ),
//     ),
//   ),

leading: AvatarGlow(
    startDelay: Duration(milliseconds: 1000),
    glowColor: Colors.green,
    endRadius: 40,
    duration: Duration(milliseconds: 1000),
    repeat: true,
    showTwoGlows: true,
    repeatPauseDuration: Duration(milliseconds: 100),
    child: Material(
      elevation: 8.0,
      shape: CircleBorder(),
      child: CircleAvatar(
        backgroundColor:Colors.redAccent ,
        // child: Image.asset('assets/images/flutter.png',height: 60,),
        
        backgroundImage: NetworkImage(messageData[i].imageUrl),
        maxRadius: 25,
        // shape: BoxShape.circle
      ),
    ),
    // shape: BoxShape.circle,
    animate: true,
    curve: Curves.fastOutSlowIn,
  ),


  title: Row(
    mainAxisAlignment: MainAxisAlignment.spaceBetween,
    children: <Widget>[
      Text(messageData[i].name,
       style: TextStyle(fontWeight: FontWeight.bold),
      ),
      Text(
        messageData[i].time,
        style: TextStyle(
          color: Colors.green,
          fontSize: 16.0,
        ),
      )
    ],
  ),
  subtitle: Container(
    padding: EdgeInsets.only(top:5.0),
    child: Text(
      messageData[i].message,
      style: TextStyle(
        color: Colors.grey,
        fontSize: 15.0,

      ),
    ),
  ),
            onTap: (){
              
                        var route = MaterialPageRoute(
                builder: (BuildContext context) => ChatDetails(
                  name: messageData[i].name,
                  profileImage: messageData[i].imageUrl,
                )
              );
              Navigator.of(context).push(route);
            },
)

        ],
      ),
    );
  }
}





















































