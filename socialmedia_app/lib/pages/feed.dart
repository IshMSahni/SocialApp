import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';
import 'package:socialmedia_app/pages/feedfiller.dart';
import 'package:share/share.dart';



class Feed extends StatefulWidget {
  @override
  _FeedState createState() => _FeedState();
}

class _FeedState extends State<Feed> {
  void share(BuildContext context, String link){
    //share button not functioning correctly, syntactical issue.
    Share.share(link, subject: 'interesting post',);
  }
  List<FeedFiller> posts = [
    FeedFiller(results: '',
        pname: 'Ishanov Sahni',
        texts: 'Check out this Crazy Frog Video!',
        comment: 'This was my favorite video today!',
        image: 'I thought it was great how this frog can dance so well.',
        person: 'https://scontent.fybz2-2.fna.fbcdn.net/v/t1.0-9/49251660_1817416458368010_728957796690690048_o.jpg?_nc_cat=103&ccb=2&_nc_sid=09cbfe&_nc_ohc=_L6l9J0kVaMAX-ELB-1&_nc_ht=scontent.fybz2-2.fna&oh=6ea2d21fe8128c05526a5a80927290f4&oe=5FD024E6'),
    FeedFiller(results: '',
        pname: 'Stinky Binky',
        texts: 'Check out this Crazy Frog Video!',
        comment: 'This was my favorite video today!',
        image: 'I thought it was great how this frog can dance so well.',
        person: 'https://scontent.fybz2-2.fna.fbcdn.net/v/t1.0-9/49251660_1817416458368010_728957796690690048_o.jpg?_nc_cat=103&ccb=2&_nc_sid=09cbfe&_nc_ohc=_L6l9J0kVaMAX-ELB-1&_nc_ht=scontent.fybz2-2.fna&oh=6ea2d21fe8128c05526a5a80927290f4&oe=5FD024E6'),
    FeedFiller(results: '',
        pname: 'George Washington',
        texts: 'Check out this Crazy Frog Video!',
        comment: 'This was my favorite video today!',
        image: 'I thought it was great how this frog can dance so well.',
        person: 'https://scontent.fybz2-2.fna.fbcdn.net/v/t1.0-9/49251660_1817416458368010_728957796690690048_o.jpg?_nc_cat=103&ccb=2&_nc_sid=09cbfe&_nc_ohc=_L6l9J0kVaMAX-ELB-1&_nc_ht=scontent.fybz2-2.fna&oh=6ea2d21fe8128c05526a5a80927290f4&oe=5FD024E6'),
    FeedFiller(results: '',
        pname: 'Allen Iverson',
        texts: 'Check out this Crazy Frog Video!',
        comment: 'This was my favorite video today!',
        image: 'I thought it was great how this frog can dance so well.',
        person: 'https://scontent.fybz2-2.fna.fbcdn.net/v/t1.0-9/49251660_1817416458368010_728957796690690048_o.jpg?_nc_cat=103&ccb=2&_nc_sid=09cbfe&_nc_ohc=_L6l9J0kVaMAX-ELB-1&_nc_ht=scontent.fybz2-2.fna&oh=6ea2d21fe8128c05526a5a80927290f4&oe=5FD024E6'),
    FeedFiller(results: '',
        pname: 'Albert Einstein',
        texts: 'Check out this Crazy Frog Video!',
        comment: 'This was my favorite video today!',
        image: 'I thought it was great how this frog can dance so well.',
        person: 'https://scontent.fybz2-2.fna.fbcdn.net/v/t1.0-9/49251660_1817416458368010_728957796690690048_o.jpg?_nc_cat=103&ccb=2&_nc_sid=09cbfe&_nc_ohc=_L6l9J0kVaMAX-ELB-1&_nc_ht=scontent.fybz2-2.fna&oh=6ea2d21fe8128c05526a5a80927290f4&oe=5FD024E6'),
  ];

  String link = 'https://flutter.github.io/assets-for-api-docs/assets/videos/butterfly.mp4';
  Color iconColor;
  int count = 5;
  bool turnOn = true;
  String CrazyFrog = 'https://external-content.duckduckgo.com/iu/?u=http%3A%2F%2Fmedia.e2save.com%2Fimages%2Fcommunity%2F2015%2F02%2FCrazy-Frog.jpg&f=1&nofb=1'; //could be added to the feedfiller list but more images = more slowdowns
  //final fieldText = TextEditingController();
  // this was for making the field Text go back to null.

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body:

      SafeArea(child: ListView.builder(
          itemCount: count,
          itemBuilder: (context, count) {
            return Container(
              child: Column(
                children: <Widget>[
                  Padding(
                    padding: const EdgeInsets.fromLTRB(5.0, 2.0, 5.0, 0.0),
                    child: Column(
                      children: <Widget>[
                        Card(
                          child: Padding(
                            padding: const EdgeInsets.all(5.0),
                            child: Column(
                              children: <Widget>[
                                Row(children: <Widget>[
                                  FlatButton.icon(
                                    onPressed: () {
                                      String bgImage = posts[count].pname ==
                                          'Ishanov Sahni'
                                          ? 'You picked the right post'
                                          : 'this stinks! wish i made more profiles!';
                                      print(bgImage);
                                      Navigator.pushNamed(context, '/home');
                                      //if i had more time it would not be difficult to implement multiple profiles using a list or a map for the different users and passed those through the feedfiller
                                    },
                                    label: Text(posts[count].pname,
                                      style: TextStyle(
                                        fontWeight: FontWeight.bold,
                                        fontSize: 15.0,
                                        color: Colors.blueAccent[100],
                                      ),
                                    ),
                                    icon: CircleAvatar(
                                      backgroundImage: NetworkImage(
                                          'https://scontent.fybz2-2.fna.fbcdn.net/v/t1.0-9/49251660_1817416458368010_728957796690690048_o.jpg?_nc_cat=103&ccb=2&_nc_sid=09cbfe&_nc_ohc=_L6l9J0kVaMAX-ELB-1&_nc_ht=scontent.fybz2-2.fna&oh=6ea2d21fe8128c05526a5a80927290f4&oe=5FD024E6'),
                                      radius: 15.0,
                                    ),

                                  ),
                                ],),
                                SizedBox(height: 10.0),
                                Row(

                                  children: <Widget>[
                                    FlatButton.icon(
                                      onPressed: () {
                                        Navigator.pushNamed(
                                            context, '/videoplayer');
                                        //could've pushed a video url from the feedfiller if passed through to then be loaded by the videoplayer
                                        //also the video was suppposed to be a rick roll but nobody uploads video onto urls where the video is easily accessible :((
                                      },
                                      label: Text('',
                                        style: TextStyle(
                                          fontWeight: FontWeight.bold,
                                          fontSize: 15.0,
                                          color: Colors.blueAccent[100],
                                        ),
                                      ),
                                      icon: CircleAvatar(
                                        backgroundImage: NetworkImage(
                                            '$CrazyFrog'),
                                        radius: 40.0,
                                      ),

                                    ),
                                    SizedBox(width: 20.0),
                                    Column(children: <Widget>[
                                      Text('${posts[count].texts}',
                                        style: TextStyle(
                                          fontWeight: FontWeight.bold,
                                          fontSize: 11.0,
                                          color: Colors.blueAccent[100],
                                        ),
                                      ),
                                      Text('${posts[count].comment}',
                                        style: TextStyle(
                                          fontSize: 10.0,
                                          color: Colors.black,
                                        ),
                                      ),

                                      Text('${posts[count].image}',
                                        //i know this is wrongly labelled as this is not an image IM SORRY! truly :'(
                                        style: TextStyle(
                                          fontSize: 10.0,
                                          color: Colors.black,
                                        ),

                                      ),
                                    ]),

                                  ],
                                ),
                              ],
                            ),
                          ),
                        ),
                      ],
                    ),
                  ),

                  Padding(
                    padding: const EdgeInsets.fromLTRB(7.0, 0.0, 7.0, 0.0),
                    child: Container(
                      child: Column(
                        crossAxisAlignment: CrossAxisAlignment.stretch,
                        children: <Widget>[
                          Card(
                            child: Padding(
                              padding: const EdgeInsets.fromLTRB(0, 1, 0, 1),
                              child: Column(
                                children: [
                                  Row(
                                      mainAxisAlignment: MainAxisAlignment
                                          .spaceEvenly,
                                      children: <Widget>[FlatButton.icon(
                                        onPressed: () {
                                          setState(() {
                                            turnOn =
                                            turnOn == true ? false : true;
                                            turnOn == true ?
                                            iconColor = Colors.red : iconColor =
                                                Colors.black;
                                            //improvements, separating it from the buildview so that it can change singly when upvoted or downvoted
                                          });
                                        },
                                        label: Text(''),
                                        icon: Icon(Icons.arrow_circle_up,
                                          color: iconColor,
                                        ),


                                      ),
                                        FlatButton.icon(
                                          onPressed: () => Share.share('${posts[count].pname}'),
                                          label: Text(''),
                                          icon: Icon(Icons.email_outlined),
                                        ),
                                      ]
                                  ),

                                  TextField(
                                    decoration: InputDecoration(
                                        border: InputBorder.none,
                                        hintText: 'Click enter button to send your comment away!!!'
                                    ),
                                    onSubmitted: (String str) {
                                      setState(() {
                                        //Textclear function for textfield needs to be included
                                        posts[count].results = str;
                                      });
                                    },
                                  ),
                                  Text('${posts[0].pname} - ${posts[count]
                                      .results}',
                                    //assumes that the user u are using is me when making a post
                                    style: TextStyle(
                                      fontSize: 10.0,
                                      color: Colors.black,
                                    ),
                                  ),
                                ],
                              ),
                            ),
                          ),
                        ],
                      ),
                    ),
                  ),
                ],
              ),
            );
          }
      ),
      ),
    );
  }
}

