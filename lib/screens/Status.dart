import 'package:flutter/material.dart';
import '../resuable/Wcards.dart';
import '../model/chat.dart';


class Status extends StatefulWidget {
  @override
  _StatusState createState() => _StatusState();
}

class _StatusState extends State<Status> {
  @override
  Widget build(BuildContext context) {
    return ListView(
children: <Widget>[
  Wcards("My Status", "https://avatars2.githubusercontent.com/u/45168922?s=460&v=4", "Tap to add status update"),
Divider(),
Heading("Recet updates"),

  Wcards(messageData[2].name, messageData[2].imageUrl, messageData[2].time),
  Wcards(messageData[3].name, messageData[3].imageUrl, messageData[3].time),
  Wcards(messageData[4].name, messageData[4].imageUrl, messageData[4].time),
  Wcards(messageData[5].name, messageData[5].imageUrl, messageData[5].time),
Divider(),
Heading("Viewed updates"),
  Wcards(messageData[1].name, messageData[1].imageUrl, messageData[1].time),
  Wcards(messageData[2].name, messageData[2].imageUrl, messageData[2].time),
  Wcards(messageData[5].name, messageData[5].imageUrl, messageData[5].time),
  Wcards(messageData[6].name, messageData[6].imageUrl, messageData[6].time),
  Wcards(messageData[7].name, messageData[7].imageUrl, messageData[7].time),
  Wcards(messageData[3].name, messageData[3].imageUrl, messageData[3].time),
  Wcards(messageData[4].name, messageData[4].imageUrl, messageData[4].time),  
],
    );
    }
}

class Heading extends StatelessWidget {
  final String heading;
  Heading(this.heading);

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: EdgeInsets.only(left:5.0,top: 5.0),
      child: Text(
        heading,
        style: TextStyle(
          fontSize: 16.0,
          fontWeight: FontWeight.bold,
          color: Colors.grey,
        ),
      ),
    );
  }
}