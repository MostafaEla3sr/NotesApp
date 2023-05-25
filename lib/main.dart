import 'package:flutter/material.dart';
import 'package:notes_app/views/notes_view.dart';
import 'package:hive_flutter/hive_flutter.dart';
import 'helper/constants.dart';

void main() async {
  
  await Hive.initFlutter();
  await Hive.openBox(kNotesBox);

  runApp(const NotesApp());
}


class NotesApp extends StatelessWidget {
  const NotesApp({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      theme: ThemeData(
        brightness: Brightness.dark,
        fontFamily: 'Poppins',
      ),
      debugShowCheckedModeBanner: false,
      routes:{
        NotesView.id :(context) => const NotesView(),
      },
      initialRoute: NotesView.id,
    );
  }
}

