import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:hive_flutter/hive_flutter.dart';

import 'pages/todo_home.dart';

void main() async {
  //init hive flutter
  await Hive.initFlutter();

  //opening a box
  var box = await Hive.openBox('todo');

  SystemChrome.setSystemUIOverlayStyle(
      const SystemUiOverlayStyle(statusBarColor: Colors.transparent));

  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'To Do App',
      theme: ThemeData(
        primarySwatch: Colors.yellow,
        fontFamily: GoogleFonts.bebasNeue().fontFamily,
      ),
      home: const ToDoHome(),
    );
  }
}
