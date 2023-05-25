import 'package:flutter/material.dart';
import 'package:notes_app/views/widgets/custom_app_bar.dart';
import 'package:notes_app/views/widgets/custom_text_field.dart';
class EditNoteViewBody extends StatelessWidget {
  const EditNoteViewBody({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Padding(
        padding: const EdgeInsets.symmetric(horizontal: 24, vertical: 16),
        child: Column(
          children: const [
             CustomAppBar(title: 'Edit Note' , icon: Icons.check,),
            SizedBox(height: 50,),
            CustomTextFormField(hint: 'Title'),
            SizedBox(height: 16,),
            CustomTextFormField(hint: 'Content' , maxLines: 5,),
          ],
        ),
      ),
    );
  }
}
