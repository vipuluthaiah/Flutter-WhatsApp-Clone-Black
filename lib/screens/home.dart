import 'package:flutter/material.dart';
import 'Camera.dart';
import 'Chats.dart';
import 'Status.dart';
import 'Calls.dart';
import 'package:url_launcher/url_launcher.dart';


class Home extends StatefulWidget {
  @override
  _HomeState createState() => _HomeState();
}

class _HomeState extends State<Home> with SingleTickerProviderStateMixin{

  TabController _tabController ;

  
  @override
  void initState(){
    super.initState();
    _tabController = TabController(initialIndex: 1, length: 4, vsync: this);
  }
  @override


  Widget build(BuildContext context) {
    return Scaffold(
appBar: AppBar(
  title: Text("WhatsApp",
  style: TextStyle(color: Colors.white),
  ),
  actions: <Widget>[
    IconButton(
      icon: Icon(Icons.search),
       onPressed: (){},
       color: Colors.white,
       ),

           IconButton(
      icon: Icon(Icons.more_vert),
       onPressed: (){},
       color: Colors.white,
       ),
  ],

  bottom: TabBar(
    isScrollable: true,
    controller: _tabController,
    tabs: <Widget>[
      Tab(
        icon: Icon(Icons.camera_alt,color: Colors.white,),
        
      ),
      Tab(
        child: Text("CHATS",
        style: Theme.of(context).textTheme.button,
        ),
            ),
      
            Tab(
        child: Text("STATUS",
        style: Theme.of(context).textTheme.button,
        ),
            ),
                        Tab(
        child: Text("CALLS",
        style: Theme.of(context).textTheme.button,
        ),
            ),
    ],
  ),
),

body: TabBarView(
  controller: _tabController,
  children: <Widget>[
    Camera(),
    Chats(),
    Status(),
    Call(),
  ],
),
floatingActionButton: FloatingActionButton(onPressed: (){
},
child: Icon(Icons.message,color: Colors.white,),
backgroundColor: Theme.of(context).accentColor,
)
    );
  }
     smsAction(String number )async{
     String url ='sms:$number';
     if (await canLaunch(url)) {
       await launch(url);
     }else{
       throw 'Could not open sms $number';
     }
   }
}