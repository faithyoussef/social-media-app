import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:mmp/widgets/Screen.dart';

class chatroom extends StatefulWidget {
  const chatroom ({Key? key}) : super(key: key);

  @override
  State<chatroom> createState() => _chatroomState();
}

class _chatroomState extends State<chatroom> {
  Icon customIcon = const Icon(Icons.arrow_circle_right);

  final GlobalKey<ScaffoldState> _scaffoldKey = new GlobalKey<ScaffoldState>();
  int _currentIndex = 3;
  List<String> profilePics = [
    "1.jpg",
    "2.jpg",
    "3.jpg",
    "4.jpg",
    "7.jpg",
    "10.jpg",
    "11.png",
    "12.jpg"
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        key: _scaffoldKey,
        appBar: AppBar(
            backgroundColor: Colors.lightBlue,
            // elevation: 0,
            title: Text(
              "faceMessenger",
              style: TextStyle(
                color: Colors.white,
                fontSize: 26,
                fontWeight: FontWeight.bold,
              ),),
            automaticallyImplyLeading: false,
            actions: [
              IconButton(
                onPressed: () {
                  Navigator.of(context).push(MaterialPageRoute(
                      builder: (_) => customNavBar(
                      )));
                },
                icon: customIcon,
                color: Colors.white,
              ),
            ],),
    body: ListView(

     children:[ SingleChildScrollView(
    child: Column(
    crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Container(
            height: 80,
              child: ListView(
            scrollDirection: Axis.horizontal,
            children: <Widget>[
                 Padding(
                  padding: const EdgeInsets.all( 5),
                  child: CircleAvatar(
                  radius: 30,
                   backgroundColor: Colors.black,
                   backgroundImage: AssetImage("assets/m2.jpg"),
                ),
             ),
                Divider(
                thickness: 10,
                color: Colors.grey[300],
              ),
                Padding(
                padding: const EdgeInsets.all( 5),
                  child: CircleAvatar(
                  radius: 30,
                  backgroundColor: Colors.black,
                  backgroundImage: AssetImage("assets/w2.jpg"),
                ),
              ),
                Divider(
                thickness: 10,
                color: Colors.grey[300],
              ),
              Padding(
                padding: const EdgeInsets.all( 5),
                child: CircleAvatar(
                  radius: 30,
                  backgroundColor: Colors.black,
                  backgroundImage: AssetImage("assets/m2.jpg"),
                ),
              ),
              Divider(
                thickness: 10,
                color: Colors.grey[300],
              ),
              Padding(
                padding: const EdgeInsets.all(5),
                child: CircleAvatar(
                  radius: 30,
                  backgroundColor: Colors.black,
                  backgroundImage: AssetImage("assets/w2.jpg"),
                ),
              ),
              Padding(
                padding: const EdgeInsets.all( 5),
                child: CircleAvatar(
                  radius: 30,
                  backgroundColor: Colors.black,
                  backgroundImage: AssetImage("assets/m2.jpg"),
                ),
              ),
              Divider(
                thickness: 10,
                color: Colors.grey[300],
              ),
              Padding(
                padding: const EdgeInsets.all( 5),
                child: CircleAvatar(
                  radius: 30,
                  backgroundColor: Colors.black,
                  backgroundImage: AssetImage("assets/w2.jpg"),
                ),
              ),
              ],
             ),
            ),

      Column(
        children:[
          Container(
      margin: EdgeInsets.only(left: 16, right: 16, top: 8, bottom: 200),
      height: 1000,
      child: ListView.builder(
      shrinkWrap: false,
      itemBuilder: (context, index) {
      return ListTile(
      contentPadding: EdgeInsets.only(bottom: 10, right: 8),
      leading: Stack(
      children: <Widget>[
      Container(
      height: 60,
      width: 60,
      decoration: BoxDecoration(
      borderRadius: BorderRadius.all(Radius.circular(30)),
      color: Color.fromRGBO(51, 51, 51, 1),
      ),
      child: ClipOval(
      child: Image.asset(
          "assets/${profilePics[index]}",

          fit: BoxFit.fill),
      ),
      ),
      Positioned(
      child: Container(
      height: (index % 2 == 0) ? 18 : 0,
      width: 18,
      decoration: BoxDecoration(
      borderRadius:
      BorderRadius.all(Radius.circular(9)),
      color: Colors.green,
      border:
      Border.all(color: Colors.black, width: 3)),
      ),
      bottom: 0,
      right: 0,
      )
      ],
      ),
      title: Padding(
      padding: EdgeInsets.only(bottom: 15),
      child: Text(
      "Zidoun Mohamed",
      style: TextStyle(
      fontFamily: "Roboto",
      fontWeight: FontWeight.w500,
      color: Colors.black),
      ),
      ),
      subtitle: Text(
      "This is message from Zidoun Mohamed",
      style: TextStyle(
      fontFamily: "Roboto",
      fontWeight: FontWeight.w400,
      color: Color.fromRGBO(66, 99, 66, 99)),
      ),
      trailing: Icon(
      Icons.check_circle,
      size: 20,
      color: (index % 2 == 0)
      ? Color.fromRGBO(101, 107, 115, 1)
          : Colors.transparent,
      ),
      );
      },
      itemCount: 7,
      ),
    ),
    ],
      ),
    ],),
    ),
    ],),
         );
    }
  }
