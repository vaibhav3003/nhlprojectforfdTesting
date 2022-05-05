/// This is a paragraph of regular text.
///
/// This sentence has *two* _emphasized_ words (i.e. italics) and **two**
/// __strong__ ones (bold).
///
/// A blank line creates another separate paragraph. It has some `inline code`
/// delimited using backticks.
///
/// * Unordered lists.
/// * Look like ASCII bullet lists.
/// * You can also use `-` or `+`.
///
/// Links can be:
///
/// * http://www.just-a-bare-url.com
/// * [with the URL inline](http://google.com)
/// * [or separated out][ref link]
///
/// [ref link]: http://google.com
///
/// # A Header
///
/// ## A subheader
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

void main() {
  runApp(MaterialApp(
    home: MyApp(),
  ));
}

class MyApp extends StatefulWidget {
  @override

  _State2 createState()=> _State2();
  const MyApp({Key? key}) : super(key: key);
}
class _State2 extends State<MyApp> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      resizeToAvoidBottomInset: false,
      appBar: AppBar(
        title: Text(' Fandemand NHL Tracker'),
        backgroundColor: Colors.black54,

      ),

      body: ListView(
        children: <Widget>[

          ClipRRect(
              borderRadius: BorderRadius.circular(20),
              child: Image(
                  image: NetworkImage('https://media-exp1.licdn.com/dms/image/C4E0BAQG_Vc_wQYxVHQ/company-logo_200_200/0/1619443880920?e=2147483647&v=beta&t=_S-KJUvILSzzlxt5MBw1c3aFn2td_e5ZYwe69ICs0wo')
              )
          ),

          Padding(padding: EdgeInsets.all(12.0),
            child:ElevatedButton(

              child: const Text('To Eastern Conference Fixtures'),
              onPressed: () {
                Navigator.push(
                  context,
                  MaterialPageRoute(builder:
                      (context) => _State()),);

              },
              style:
              ElevatedButton.styleFrom(primary: Colors.black54),

            )
          ),


          Padding(
            padding: EdgeInsets.all(12.0),
            child: ElevatedButton(
              child: const Text('To Western Conference Fixtures'),
              onPressed: () {
                Navigator.push(
                  context,
                  MaterialPageRoute(builder: (context) => const SecondRoute()), );
              },
              style:
              ElevatedButton.styleFrom(primary: Colors.black54),

            ),

          )

        ],
      ), );
  }
}
class SecondRoute extends StatelessWidget {
  const SecondRoute({Key? key}) : super(key: key);
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Western Conference Upcoming Fixtures'),
        backgroundColor: Colors.black54,
      ),
      body: ListView(
        children: <Widget>[
          ListTile(

            title: Text('-------------------------CENTRAL DIVISION--------------------------'),
          ),
          ListTile(
            leading: Icon(Icons.sports_hockey_rounded),
            title: Text('17:00 AVALNCHE VS WILD '),
          ),
          ListTile(
            leading: Icon(Icons.sports_hockey_rounded),
            title: Text('18:00 BLUES VS PREDATORS'),
          ),
          ListTile(
            leading: Icon(Icons.sports_hockey_rounded),
            title: Text('18:30 STARS VS JETS'),
          ),
          ListTile(
            leading: Icon(Icons.sports_hockey_rounded),
            title: Text('19:00 BLACKHAWKS VS COYOTES'),
          ),

          ListTile(

            title: Text('------------------------PACIFIC DIVISION-----------------------------'),
          ),
          ListTile(
            leading: Icon(Icons.sports_hockey_rounded),
            title: Text('21:00 FLAMES VS OILERS'),
          ),
          ListTile(
            leading: Icon(Icons.sports_hockey_rounded),
            title: Text('22:00 KINGS VS GOLDEN KNIGHTS'),
          ),
          ListTile(
            leading: Icon(Icons.sports_hockey_rounded),
            title: Text('18:30 CANUCKS VS DUCKS'),
          ),

          ListTile(
            leading: Icon(Icons.sports_hockey_rounded),
            title: Text('20:00 SHARKS VS KRAKEN'),
          ),

          ElevatedButton(
            onPressed: () {
              Navigator.push(
                context,
                MaterialPageRoute(builder: (context) => _State()), );
            },

            child: const Text('To Eastern Conference'),
            style:
            ElevatedButton.styleFrom(primary: Colors.black54),
          ),
        ],
      ),
    );
  }
}

class _State extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      resizeToAvoidBottomInset: false,
      appBar: AppBar(
        title: Text('Eastern Conference Upcoming Fixtures'),
        backgroundColor: Colors.black54,

      ),

      body: ListView(
        children: <Widget>[
          ListTile(

            title: Text('-----------------------ATLANTIC DIVISION------------------------'),
          ),
          ListTile(
            leading: Icon(Icons.sports_hockey_rounded),
            title: Text('17:00 PANTHERS VS CANADIENS '),
          ),
          ListTile(
            leading: Icon(Icons.sports_hockey_rounded),
            title: Text('18:00 LIGHTNING VS MAPLE LEAFS'),
          ),
          ListTile(
            leading: Icon(Icons.sports_hockey_rounded),
            title: Text('18:30 REDWINGS VS BRUINS'),
          ),
          ListTile(
            leading: Icon(Icons.sports_hockey_rounded),
            title: Text('19:00 SENATORS VS SABRES'),
          ),

          ListTile(

            title: Text('------------------METROPOLITIAN DIVISION------------------'),
          ),
          ListTile(
            leading: Icon(Icons.sports_hockey_rounded),
            title: Text('21:00 PENGUINS VS DEVILS'),
          ),
          ListTile(
            leading: Icon(Icons.sports_hockey_rounded),
            title: Text('22:00 CAPITALS VS FLYERS'),
          ),

          ListTile(
            leading: Icon(Icons.sports_hockey_rounded),
            title: Text('19:00 ISLANDERS VS DEVILS'),
          ),
          ListTile(
            leading: Icon(Icons.sports_hockey_rounded),
            title: Text('20:00 RANGERS VS BLUE JACKETS'),
          ),

          ElevatedButton(
            child: const Text('To Western Conference'),
            onPressed: () {
              Navigator.push(
                context,
                MaterialPageRoute(builder: (context) => const SecondRoute()), );
            },
            style:
            ElevatedButton.styleFrom(primary: Colors.black54),
          ),
        ],
      ), );
  }
}