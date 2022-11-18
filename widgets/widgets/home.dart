import 'package:firebase_core/firebase_core.dart';
import 'package:flutter/material.dart';

import '../../Screen/CountrySearch.dart';
import '../../Screen/chatroom.dart';
import '../../Screen/notification/notification_notifier.dart';
import '../../Screen/searchfield.dart';
import '../Screen.dart';
import '../assets.dart';
import '../postCard.dart';
import '../sections/headerButtonSection.dart';
import '../sections/room.dart';
import '../sections/statusSection.dart';
import '../sections/storySelection.dart';
import '../sections/suggestionSection.dart';
import 'headerButton.dart';

void main() {
  //NotificationService().initialize();

}
class Home extends StatefulWidget {

  HomeState createState() => HomeState();
}
class HomeState extends State<Home> {
 final Future <FirebaseApp> _fbApp = Firebase.initializeApp();
  @override
  void initState(){
    const onActionReceivedMethod = NotificationNotifier.onActionReceivedMethod;

  /** AwesomeNotifications().setListeners(
      onActionReceivedMethod: onActionReceivedMethod,
    );**/
    super.initState();
    //NotificationService().requestPermission();
  }
  final GlobalKey<ScaffoldState> _scaffoldKey = new GlobalKey<ScaffoldState>();
  var dateNow = new DateTime.now();
  Icon customIcon = const Icon(Icons.search);
  Icon customMessages = const Icon(Icons.message);
  Widget customSearchBar = const Text('search');
  List<Map<String, dynamic>> todos = [];

  List<page> display_list = List.from(main_search);
  static List<page> main_search = [];

  final DescriptionController = TextEditingController();
  Color butt = Colors.pink;
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      key: _scaffoldKey,
      appBar: AppBar(
        backgroundColor: Colors.lightBlue,
        // elevation: 0,
        title: const Text(
          "faceMe",
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
                  builder: (_) => CountrySearch(
                    title: 'Country List',
                  )));
            },
            icon: customIcon,
            color: Colors.white,
          ),
          IconButton(
            onPressed: () {
              Navigator.of(context).push(MaterialPageRoute(
                  builder: (_) =>  chatroom()));
            },
            icon: customMessages,
            color: Colors.white, )
        ],
        centerTitle: true,
      ),
      body: ListView(
        children: [
          SingleChildScrollView(
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                StatusSection(),
                Divider(
                  thickness: 1,
                  color: Colors.grey[300],
                ),
                HeaderButtonSection(
                    buttonOne: headerbutton(
                        buttontext: "Live",
                        buttonicon: Icons.video_call,
                        buttonaction: () {
                  FutureBuilder(future: _fbApp, builder:
                               (BuildContext context,AsyncSnapshot snapshot) {
                                 if (snapshot.hasError) {
                                   print("there is  a problem");
                                 }
                                 return Text("something is wrong");}

                          );
                        },
                        buttoncolor: Colors.red),
                    buttonTwo: headerbutton(
                        buttontext: "Photos",
                        buttonicon: Icons.photo_library,
                        buttonaction: () {

                        },
                        buttoncolor: Colors.green),
                    buttonThree: headerbutton(
                        buttontext: "Room",
                        buttonicon: Icons.video_call,
                        buttonaction: () {
                          Navigator.of(context).push(MaterialPageRoute(
                              builder: (_) => record()));
                        },
                        buttoncolor: Colors.purple)),
                Divider(
                  thickness: 10,
                  color: Colors.grey[300],
                ),
                Room(),
                Divider(
                  thickness: 10,
                  color: Colors.grey[300],
                ),
                StorySection(),
                Divider(
                  thickness: 10,
                  color: Colors.grey[300],
                ),
                PostCard(
                  varifiedpost: true,
                  pics: ylw,
                  name: "Spiderman",
                  time: "4h",
                  postImage: bat,
                  postTitle: "hay gorgeous",
                  like: "15K",
                  comments: "2K",
                  share: "432",
                ),
                Divider(
                  thickness: 10,
                  color: Colors.grey[300],
                ),
                PostCard(
                  varifiedpost: true,
                  pics: bat,
                  name: "Batman",
                  time: "8h",
                  postImage: sup,
                  postTitle: "yoo bud",
                  like: "30K",
                  comments: "2K",
                  share: "344",
                ),
                Divider(
                  thickness: 10,
                  color: Colors.grey[300],
                ),
                PostCard(
                  varifiedpost: true,
                  pics: red,
                  name: "Scarlett",
                  time: "4h",
                  postImage: bat,
                  postTitle: " I am scarlett,",
                  like: "15K",
                  comments: "2K",
                  share: "232",
                ),
                Divider(
                  thickness: 10,
                  color: Colors.grey[300],
                ),
                SuggestionSection(),
                Divider(
                  thickness: 10,
                  color: Colors.grey[300],
                ),
                PostCard(
                  varifiedpost: true,
                  pics: haf,
                  name: "Batman",
                  time: "8h",
                  postImage: sup,
                  postTitle:
                  "yooo dude how are you man..",
                  like: "15K",
                  comments: "2K",
                  share: "211",
                ),
              ],
            ),
          ),
        ],
      ),

    );
  }
}
