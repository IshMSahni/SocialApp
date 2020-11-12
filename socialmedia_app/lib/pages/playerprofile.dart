import 'package:flutter/material.dart';
import 'package:video_player/video_player.dart';


class PlayerProfile extends StatefulWidget {
  @override
  _PlayerProfileState createState() => _PlayerProfileState();
}

class _PlayerProfileState extends State<PlayerProfile> {
  int iQ = 1;
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.grey[900],
      appBar: AppBar(
        title: Text('Ishanov Sahni'),
        centerTitle: true,
        backgroundColor: Colors.grey[850],
        elevation: 0,
      ),
      floatingActionButton: FloatingActionButton(
        onPressed: (){
          setState(() {
            iQ += 1;
          });
        },
        child: Center(child:
        Text(
            'Click me!',
            textAlign: TextAlign.center,)
        ),
      ),
      body: Padding(
        padding: EdgeInsets.fromLTRB(30.0, 40.0, 30.0, 0.0),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: <Widget>[
            Center(
              child: CircleAvatar(
                backgroundImage: NetworkImage('https://scontent.fybz2-2.fna.fbcdn.net/v/t1.0-9/49251660_1817416458368010_728957796690690048_o.jpg?_nc_cat=103&ccb=2&_nc_sid=09cbfe&_nc_ohc=_L6l9J0kVaMAX-ELB-1&_nc_ht=scontent.fybz2-2.fna&oh=6ea2d21fe8128c05526a5a80927290f4&oe=5FD024E6'),
                radius: 40.0,

              ),

            ),
            Center(
              child:Text(
                'Ishanov Sahni',
                style: TextStyle(
                color: Colors.red[600],
                letterSpacing: 2.0,
                fontSize: 28.0,
                fontWeight: FontWeight.bold
            )),
            ),
            Divider(
              height: 10,
              color: Colors.grey[600],
            ),
            SizedBox(height: 20.0),
            Text(
                  '1 LIKE = 1 RESPECT (CLICK THE FLOATING BUTTON)',
                  style: TextStyle(
                  color: Colors.grey,
                  letterSpacing: 2.0,
                  height: 1.5,
                ),
            ),
            SizedBox(height: 10.0),
            Text(
                '$iQ',
                style: TextStyle(
                    color: Colors.amberAccent[200],
                    letterSpacing: 2.0,
                    fontSize: 20.0,
                    fontWeight: FontWeight.bold
                )
            ),
            SizedBox(height: 20.0),
            Row(
                children: <Widget>[
                  Icon(
                      Icons.email,
                      color: Colors.grey[400]
                  ),
                  SizedBox(width: 10.0),
                  Text(
                      'ishmsahni@gmail.com',
                      style: TextStyle(
                      color: Colors.grey[400],
                      fontSize: 18.0,
                      letterSpacing: 1.0,
                    ),
                  ),
                ]),

              SizedBox(height: 10.0),
                Text(
                  'Friends',
                  style: TextStyle(
                  color: Colors.grey[400],
                  fontSize: 18.0,
                  letterSpacing: 1.0,
                  fontWeight: FontWeight.bold,
                  ),
                ),
              SizedBox(height: 5.0),
              SizedBox( width: 125.0,
                    child: Column(
                      children: <Widget>[
                        Card(
                          color: Colors.grey[850],
                            child:
                              Padding(
                                padding: const EdgeInsets.fromLTRB(0.0, 5.0, 0.0, 0.0),
                                child: Center(
                                  child: Column(
                                    children: <Widget>[
                                      CircleAvatar(
                                        backgroundImage: NetworkImage('https://scontent.fybz2-1.fna.fbcdn.net/v/t1.0-9/42303335_1856285737821567_7023646382351187968_o.jpg?_nc_cat=100&ccb=2&_nc_sid=09cbfe&_nc_ohc=31NP5tSq5wcAX92BZ4f&_nc_ht=scontent.fybz2-1.fna&oh=f768a6093ae6239c6e6429ed41897a1e&oe=5FD2FD38'),
                                        radius: 30.0,
                                        ),
                                      SizedBox(width: 10.0),
                                      Text(
                                            'Monishkumar Sivakumar',
                                            textAlign: TextAlign.center,
                                            style:
                                            TextStyle(
                                              color: Colors.white,
                                              fontSize: 12.0,
                                              letterSpacing: 1.0,
                                            ),
                                        ),
                                    ],
                                  ),
                                ),
                              ),
                            ),
                         ]
                    ),
              ),
          ],
        ),
      ),
    );
  }
}
