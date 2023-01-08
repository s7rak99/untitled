import 'package:flutter/material.dart';

class TextFieldEx extends StatefulWidget {
  const TextFieldEx({Key? key}) : super(key: key);

  @override
  State<TextFieldEx> createState() => _TextFieldExState();
}

class _TextFieldExState extends State<TextFieldEx> {

  TextEditingController userNameController = TextEditingController();
  String value = '';

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Copy Text'),
      ),
      drawer: const Drawer(),
      body: Container(
        padding: const EdgeInsets.all(10.0),
        margin: const EdgeInsets.all(20.0),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.center,
          children: [
            TextFormField(
              onTap: (){},
              onChanged: (text){
               setState(() {
                 value = text;
               });
              },

              controller: userNameController,
              textAlign: TextAlign.start,
              minLines: 1,
              maxLines: 2,
              maxLength: 20,
              cursorColor: Colors.blueGrey,
              cursorHeight: 20.0,
              textInputAction: TextInputAction.go,
              keyboardType: TextInputType.emailAddress,
              decoration: InputDecoration(
                suffixIconColor: Colors.red,

                labelText: 'Input Text',
                labelStyle: const TextStyle(fontSize: 16.0),
                hintText: 'Enter any text you want ',
                hintStyle: TextStyle(color: Colors.grey[350]),
                hintMaxLines: 2,
                suffixIcon: const Icon(Icons.text_fields),
                border: OutlineInputBorder(
                    borderSide: const BorderSide(
                        color: Colors.black,
                      ),
                      borderRadius: BorderRadius.circular(30.0))),
            ),
            const SizedBox(height: 100.0,),

            Text('Text: $value' ,style: const TextStyle(color: Colors.black, fontSize: 20.0),)
          ],
        ),
      ),
    );
  }
}
