import 'package:applocker/locker.dart';
import 'package:applocker/page2.dart';
import 'package:applocker/page3.dart';
import 'package:applocker/page4.dart';
import 'package:flutter/material.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Flutter Demo',
      debugShowCheckedModeBanner: false,
      theme: ThemeData(
        backgroundColor: Colors.grey[800],
        primarySwatch: Colors.lightGreen,
      ),
      home: const MyHomePage(title: 'AppLocker'),
    );
  }
}

class MyHomePage extends StatefulWidget {
  const MyHomePage({Key? key, required this.title}) : super(key: key);



  final String title;

  @override
  State<MyHomePage> createState() => _MyHomePageState();
}

class _MyHomePageState extends State<MyHomePage> {
  int _selectedIndex = 0;
  static const TextStyle optionStyle =
  TextStyle(fontSize: 30, fontWeight: FontWeight.bold);
  static const List<Widget> _widgetOptions = <Widget>[
    MainScreen(),
    TemaScreen(),
    AyarlarScreen(),
  ];
  void _onItemTapped(int index) {
    setState(() {
      _selectedIndex = index;
    });
  }
  @override
  Widget build(BuildContext context) {
   
    return Scaffold(
      backgroundColor: Colors.grey[900],
      appBar: PreferredSize(
        preferredSize: Size.fromHeight(70.0),

        child: Column(
          crossAxisAlignment: CrossAxisAlignment.center,
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            AppBar(


             backgroundColor: Colors.transparent,
              title: Text(widget.title,style: TextStyle(color: const Color(0xff097969),fontSize: 28,fontWeight: FontWeight.w400),),
              centerTitle: true,
              elevation: 0,

              leading: Padding(
                padding: const EdgeInsets.fromLTRB(18, 0, 0, 0),
                child: IconButton(
                  icon: ImageIcon(AssetImage('assets/crown2.png'),size: 24,color: Colors.white,),
                  tooltip: 'Ücretli sürüm ile reklamlardan kurtul',
                  onPressed: () {
                    // handle the press
                  },
                ),
              ),

              actions: <Widget>[
                Padding(
                  padding: const EdgeInsets.fromLTRB(0, 0, 18, 0),
                  child: IconButton(icon: Icon(Icons.share,color: Colors.white,), onPressed: () {}),
                ),
              ],

            ),
          ],
        ),
      ),

      body: Center(
        child: _widgetOptions.elementAt(_selectedIndex),
      ),
      bottomNavigationBar: SizedBox(
        height: 66,
        child: BottomNavigationBar(
          backgroundColor: const Color(0xffAFE1AF),
          unselectedItemColor: Colors.grey[800],
          iconSize: 26,

          items: const <BottomNavigationBarItem>[
            BottomNavigationBarItem(
              icon: Icon(Icons.home),
              title: Text('Ana Sayfa',style: TextStyle(fontSize: 15),),
            ),
            BottomNavigationBarItem(
              icon: Icon(Icons.amp_stories_rounded),
              title: Text('Tema',style: TextStyle(fontSize: 15),),
            ),
            BottomNavigationBarItem(
              icon: Icon(Icons.settings),
              title: Text('Ayarlar',style: TextStyle(fontSize: 15),),
            ),
          ],
          currentIndex: _selectedIndex,
          selectedItemColor: Colors.black,
          onTap: _onItemTapped,
        ),
      ),


    );
  }
}
