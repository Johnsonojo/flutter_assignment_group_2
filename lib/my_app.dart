import 'package:flutter/material.dart';
import 'package:flutter_assignment_group_2/screens/second_page.dart';

import 'screens/homepage.dart';

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'Flutter Demo',
      routes:{
        '/home':(context) => const Homepage(),
        '/secondPage':(context) => const SecondPage(),


      },

      theme: ThemeData(
        primarySwatch: Colors.blue,
      ),
      home: const Homepage(),
    );
  }
}
