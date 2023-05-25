import 'package:flutter/material.dart';
import 'package:notes_app/views/widgets/custom_app_bar.dart';
import 'package:notes_app/views/widgets/notes_list_view.dart';

class NotesViewBody extends StatelessWidget {
  const NotesViewBody({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Padding(
        padding: const EdgeInsets.symmetric(horizontal: 24 , vertical: 16),
        child: Column(
          children: const [
            CustomAppBar(title: 'Notes' , icon: Icons.search,),
            Expanded(child: NotesListView()),
          ],
        ),
      ),
    );
  }
}