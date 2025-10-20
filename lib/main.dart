import 'package:first_app/blogs.dart';
import 'package:first_app/card.dart';
import 'package:first_app/increment.dart';
import 'package:first_app/video_player.dart';
// import 'package:first_app/youtube.dart';
import 'package:flutter/material.dart';

void main() {
  runApp(const MainApp());
}

class MainApp extends StatefulWidget {
  const MainApp({super.key});

  @override
  State<MainApp> createState() => _MainAppState();
}

class _MainAppState extends State<MainApp> {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: SafeArea(
        child: Scaffold(
          appBar: AppBar(
            title: Text(
              'Dixon app',
              style: TextStyle(color: Colors.white),
            ),
            backgroundColor: Colors.black,
          ),
          body: SingleChildScrollView(
            child: Column(
              children: [
                Text('Video from url'),
                SamplePlayer21(),

                // Row(
                //   mainAxisAlignment: MainAxisAlignment.center,
                //   children: [
                //     Expanded(
                //       flex: 2,
                //       child: Container(
                //       height: 200,
                //       margin: EdgeInsets.all(10),
                //       color: Colors.amber,
                //       child: Center(child: Text('1')),
                //     )),
                //     Expanded(
                //       flex: 1,
                //       child: Container(
                //       height: 200,
                //       margin: EdgeInsets.all(10),
                //       color: Colors.blue,
                //       child: Center(child: Text('2')),
                //     )),
                //   ],
                // ),

                Increment(),
                // Blogs(),
                CustomCard()

                // Text('Video from assets'),
                // SamplePlayer2(),
                // Text('Video from Youtube'),
                // YoutubeVideo(),
                // Text('Video from Youtube'),
                // YoutubeVideoPlayerFlutter(),
              ],
            ),
          ),
          bottomNavigationBar: BottomAppBar(
            shape: CircularNotchedRectangle(),
            notchMargin: 8.0,
            child: Row(
              mainAxisSize: MainAxisSize.max,
              mainAxisAlignment: MainAxisAlignment.spaceAround,
              children: [
                IconButton(icon: Icon(Icons.home), onPressed: () {
                  
                }),
                IconButton(icon: Icon(Icons.search), onPressed: () {}),
                Padding(
                  padding: const EdgeInsets.only(
                      top: 16.0), // Add padding to the top
                  child:
                      IconButton(icon: Icon(Icons.headset), onPressed: () {}),
                ),
                IconButton(icon: Icon(Icons.notifications), onPressed: () {}),
                IconButton(icon: Icon(Icons.settings), onPressed: () {}),
              ],
            ),
          ),
        ),
      ),
    );
  }
}
