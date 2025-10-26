import 'package:first_app/screens/blogs.dart';
import 'package:first_app/components/bottonnav.dart';
import 'package:first_app/components/increment.dart';
import 'package:first_app/screens/video_player.dart';
import 'package:flutter/material.dart';

class Home extends StatelessWidget {
  const Home({super.key});

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        appBar: AppBar(
          title: const Text(
            'Dixon app',
            style: TextStyle(color: Colors.white),
          ),
          backgroundColor: Colors.black,
        ),
        body: SingleChildScrollView(
          child: Column(
            children: [
              const Text('Video from url'),
              SamplePlayer21(),
              const Increment(),
              const Blogs(),
            ],
          ),
        ),
        
        bottomNavigationBar: const Bottonnav(),
      ),
    );
  }
}
