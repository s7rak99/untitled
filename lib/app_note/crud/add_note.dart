import 'package:flutter/material.dart';

class AddNote extends StatefulWidget {
  const AddNote({Key? key}) : super(key: key);

  @override
  State<AddNote> createState() => _AddNoteState();
}

class _AddNoteState extends State<AddNote> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Add Note'),
      ),
      body: Container(
          padding: const EdgeInsets.all(10),
          margin: const EdgeInsets.all(10),
          child: Column(
            children: [
              Form(
                  child: Column(
                children: [
                  TextFormField(
                    decoration: const InputDecoration(
                      filled: true,
                      focusColor: Colors.white,
                      labelText: 'Note Title',
                      labelStyle: TextStyle(color: Colors.green),
                      prefixIcon: Icon(
                        Icons.title,
                        color: Colors.green,
                      ),
                    ),
                    cursorColor: Colors.green,
                  ),
                  const SizedBox(
                    height: 10,
                  ),
                  TextFormField(
                    minLines: 1,
                    maxLines: 3,
                    decoration: const InputDecoration(
                      filled: true,
                      focusColor: Colors.white,
                      labelText: 'Note describe',
                      labelStyle: TextStyle(color: Colors.green),
                      prefixIcon:
                          Icon(Icons.note_alt_outlined, color: Colors.green),
                    ),
                    cursorColor: Colors.green,
                  ),
                  const SizedBox(
                    height: 10,
                  ),
                  Row(
                    mainAxisSize: MainAxisSize.min,
                    children: [
                      const Text(
                        'Add Photo',
                        style: TextStyle(color: Colors.green, fontSize: 20),
                      ),
                      const SizedBox(
                        width: 20.0,
                      ),
                      IconButton(
                        icon: const Icon(
                          Icons.add_a_photo_outlined,
                          size: 35,
                          color: Colors.green,
                        ),
                        onPressed: () {
                          showBottomSheet();
                        },
                      ),
                    ],
                  ),
                  const SizedBox(height: 15.0,),
                  MaterialButton(
                    onPressed: () {},
                    minWidth: 300.0,
                    color: Colors.green,
                    height: 60.0,
                    textColor: Colors.white,
                    shape: RoundedRectangleBorder(
                        borderRadius: BorderRadius.circular(30.0)),
                    child: const Text(
                      'Add Note',
                      style: TextStyle(fontSize: 22),
                    ),
                  ),
                ],
              ))
            ],
          )),
    );
  }
  showBottomSheet(){
    return showModalBottomSheet(context: context, builder: (context){
      return Container(
        padding: EdgeInsets.all(20.0),
        height: 150,
        child: Column(
          children: [
            const Text('please choose image', style: TextStyle(fontSize: 20, color: Colors.grey),textAlign: TextAlign.center,),
            Row(
              mainAxisSize: MainAxisSize.min,
              children: [
                IconButton(onPressed: (){}, icon: Icon(Icons.image_search , color: Colors.green , size: 50,)),
                const SizedBox(width: 25,),
                IconButton(onPressed: (){}, icon: Icon(Icons.camera_enhance_outlined , color: Colors.green , size: 50,)),
              ],
            )
          ],
        ),
      );
    });
  }
}
