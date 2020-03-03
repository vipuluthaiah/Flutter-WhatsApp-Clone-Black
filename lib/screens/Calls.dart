import 'package:flutter/material.dart';
import '../model/call.dart';
import 'package:url_launcher/url_launcher.dart';


class Call extends StatefulWidget {
  @override
  _CallState createState() => _CallState();
}

class _CallState extends State<Call> {



  

  @override



  Widget build(BuildContext context) {
    return ListView.builder(
itemCount: callData.length,
itemBuilder: (context,i)=>
Column(
  children: <Widget>[
    Divider(
      height: 20.0,
    ),
    ListTile(
      leading: CircleAvatar(
        maxRadius: 25,
        backgroundImage: NetworkImage(callData[i].imageUrl),
      ),
      title: Text(
        callData[i].name,
        style: TextStyle(
          fontWeight: FontWeight.bold,

        ),
      ),
      subtitle: Container(
        padding: EdgeInsets.only(top: 5.0),
        child: Text(callData[i].time,
        style: TextStyle(
        fontWeight: FontWeight.bold,
        color:Colors.grey,
        fontSize: 14.0, 
        ),
        ),
        
      ),
      // trailing: Icon(Icons.call),
      trailing: IconButton(
        iconSize: 20,
        icon: Icon(Icons.call),
        color: Colors.redAccent,
        onPressed: (){
          callAction(callData[i].number);
        },
      ),
      selected: true,
    )
  ],
)
    );
  }
       callAction(String number)async{
     String url = 'tel:$number';
     if (await canLaunch(url)) {
       await launch (url);
     }else{
       throw 'Could not call $number';
     }
   }
}