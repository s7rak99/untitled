import 'package:flutter/material.dart';

class TestField extends StatefulWidget {
  const TestField({Key? key}) : super(key: key);

  @override
  State<TestField> createState() => _TestFieldState();
}

class _TestFieldState extends State<TestField> {
  bool en = false;
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(),
      body: Column(
        children: [
          TextFormField(
            onTap: (){
              setState(() {
                en = true;
              });
            },
            onEditingComplete: (){
              print('edit');
            },
            onFieldSubmitted: (val){
              print(val);
            },
            decoration: InputDecoration(

                prefixIcon: Icon(
                  Icons.email,
                  color: en==true?Colors.red:Colors.grey,),

                focusedBorder: OutlineInputBorder(
                  borderSide: const BorderSide(color: Colors.red, width: 2.0),
                  borderRadius: BorderRadius.circular(25.0),
                )),
          )
        ],
      ),
    );
  }
}
