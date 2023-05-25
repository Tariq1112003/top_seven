import 'dart:math';
import 'package:flutter/material.dart';
import 'package:shared_preferences/shared_preferences.dart';
import 'package:share_plus/share_plus.dart';
import 'package:rflutter_alert/rflutter_alert.dart';
import 'package:cupertino_icons/cupertino_icons.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'package:english_words/english_words.dart';
import 'package:awesome_icons/awesome_icons.dart';
import 'package:flutter_downloader/flutter_downloader.dart';
import 'package:photo_view/photo_view.dart';






//2. Create a new StatelessWidget or StatefulWidget:
main() {
  runApp(
    MyApp(),
  );
}

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: MyHomePage(),
    );
  }
}

//3. Create a new StatefulWidget for the home page:

class MyHomePage extends StatefulWidget {
  @override
  _MyHomePageState createState() => _MyHomePageState();
}

//4. In the _MyHomePageState class, create a scaffold with an AppBar and a ListView:

class _MyHomePageState extends State<MyHomePage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.black87,
        title: Center(
            child: Text(
          'Libraries App',
          style: TextStyle(fontSize: 40),
        )),
      ),
      body: ListView(
        children: [
          ListTile(
            onLongPress: () =>Icon(Icons.airplane_ticket),
subtitle: Text("Tap for More information"),
            title: Center(
                child: Text(
              'English Words',
              style: TextStyle(fontSize: 20, color: Colors.green),

            )

            ),
            leading: Icon(Icons.font_download_outlined,size: 60,
              color: Colors.purple,),
            onTap: () {setState(() {

              syllables('beautiful');  // 3
              syllables('abatement');  // 3
              syllables('zoology');  // 4

              Navigator.push(
                context,
                MaterialPageRoute(builder: (context) => NewPage()),
              );
            });
            },
          ),
          ListTile(
            onLongPress: () =>Share.shareXFiles([XFile('assets/hello.txt')], text: 'Great picture'),

            title: Center(
                child: Text(
              'Share_plus',
              style: TextStyle(fontSize: 20, color: Colors.green),
            )),
            leading: Icon(Icons.share, size: 60,),
            subtitle: Text('tap for more information'),
            splashColor: Colors.white,
            iconColor: Colors.deepPurpleAccent,

            onTap: () {
              Share.share('check out my website https://example.com', subject: 'Look what I made!');
              Navigator.push(
                context,
                MaterialPageRoute(builder: (context) => NewPage()),
              );
            },
          ),
          ListTile(

            title: Center(child: Text('rflutter Alert', style: TextStyle(fontSize: 20,color: Colors.green),)),
            leading: Icon(Icons.add_alert_outlined, size: 60,),
            subtitle: Text('tap for more information'),
            splashColor: Colors.purple,
            iconColor: Colors.red,

            onTap: () {
              Alert(
                context: context,
                type: AlertType.warning,
                title: "RFLUTTER ALERT",
                desc: "Flutter is more awesome with RFlutter Alert.",
                buttons: [
                  DialogButton(
                    child: Text(
                      "FLAT",
                      style: TextStyle(color: Colors.white, fontSize: 20),
                    ),
                    onPressed: () => Navigator.pop(context),
                    color: Color.fromRGBO(0, 179, 134, 1.0),
                  ),
                  DialogButton(
                    child: Text(
                      "GRADIENT",
                      style: TextStyle(color: Colors.white, fontSize: 20),
                    ),
                    onPressed: () => Navigator.pop(context),
                    gradient: LinearGradient(colors: [
                      Color.fromRGBO(116, 116, 191, 1.0),
                      Color.fromRGBO(52, 138, 199, 1.0)
                    ]),
                  )
                ],
              ).show();
              Navigator.push(
                context,
                MaterialPageRoute(builder: (context) => NewPage()),
              );
            },
          ),
          ListTile(
            leading: Icon(Icons.photo,size: 60,),
            subtitle: Text("Tap for More information"),
            title: Center(
                child: Text(
                    'Photo_View',
              style: TextStyle(fontSize: 20, color: Colors.green),
            )
            ),

            splashColor: Colors.purple,
            iconColor: Colors.red,
            onTap: () {
              @override
              Widget build(BuildContext context) {
                return Container(
                    child: PhotoView(
                      imageProvider: AssetImage("assets/large-image.jpg"),
                    )
                );
              }
              Navigator.push(
                context,
                MaterialPageRoute(builder: (context) => NewPage()),
              );
            },
          ),
          ListTile(
            leading: Icon(Icons.font_download,size: 60,),
            title: Center(
              child: Text(
                'Font_awesome',
                style: TextStyle(fontSize: 20, color: Colors.green),
              ),
            ),
            onTap: () {
              Navigator.push(
                context,
                MaterialPageRoute(builder: (context) => NewPage()),
              );
            },
          ),
          ListTile(
            leading: Icon(Icons.auto_awesome,size: 60,),
            title: Center(
                child: Center(
                    child: Text(
              'awesome_icon',
              style: TextStyle(fontSize: 20, color: Colors.green),
            ))),
            onTap: () {
              Navigator.push(
                context,
                MaterialPageRoute(builder: (context) => NewPage()),
              );
            },
          ),
          ListTile(
            title: Center(
                child: Text(
              'Library 7#',
              style: TextStyle(fontSize: 20, color: Colors.green),
            )),
            onTap: () {
              Navigator.push(
                context,
                MaterialPageRoute(builder: (context) => NewPage()),
              );
            },
          ),
        ],
      ),
    );
  }
}

//5. Create a new StatelessWidget for the new page:

class NewPage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('New Page'),
      ),
      body: Text("data"),
    );
  }
}
