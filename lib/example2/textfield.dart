
import 'package:flutter/material.dart';

class TextFieldEx extends StatefulWidget {
  const TextFieldEx({Key? key}) : super(key: key);

  @override
  State<TextFieldEx> createState() => _TextFieldExState();
}

class _TextFieldExState extends State<TextFieldEx> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Sign In'),
      ),
      drawer: const Drawer(),
      body: Container(
        padding: const EdgeInsets.all(10.0),
        margin: const EdgeInsets.all(20.0),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            //const Text('Username'),
            TextFormField(
              // style: ,
              textAlign: TextAlign.start,
              minLines: 1,
              maxLines: 2,
              maxLength: 20,
              //cursorColor: Colors.blueGrey,
              cursorHeight: 20.0,
              textInputAction: TextInputAction.go,
                            // initialValue: 'sahar',
              // readOnly: true,
              keyboardType: TextInputType.emailAddress,
              decoration: const InputDecoration(

                iconColor: Colors.red,
                labelText: 'Username',
                labelStyle: TextStyle(fontSize: 16.0),
                hintText: 'Enter you user name ',
               // hintStyle: TextStyle(color: Colors.grey[350]),
                hintMaxLines: 2,
                prefixIcon: Icon(Icons.email),
               prefixIconColor: Colors.red,
                //focusColor: Colors.red,



                //suffixIcon: const Icon(Icons.email),
                //prefix: const Text('Email'),
                // prefixIconColor: Colors.grey[350],
               // suffixIcon: const Icon(Icons.email),

                //icon:
                //filled: true,
                 fillColor: Colors.red

                // enabled: false,
                //border: InputBorder.none / outline/underline
                //focusedBorder: //like enabled border



              ),
            ),

            const SizedBox(
              height: 25.0,
            ),

            // const Text('Password'),
            TextFormField(
              maxLength: 16,
              obscureText: true,
              keyboardType: TextInputType.number,
              decoration: InputDecoration(
                labelText: 'Password',
                labelStyle: const TextStyle(fontSize: 16.0),
                hintText: 'Enter you password ',
                hintStyle: TextStyle(color: Colors.grey[350]),
                 // prefixIconColor: Colors.red,
                suffixIcon: const Icon(Icons.password),
              ),
            ),
          ],
        ),
      ),
    );
  }
}



//
// enabledBorder: OutlineInputBorder(
// borderSide: BorderSide(
// color: Colors.black,
//
// ),
// borderRadius: BorderRadius.circular(30.0)
// )


//
// enabledBorder: const UnderlineInputBorder(
// borderSide: BorderSide(
// // color: Colors.black,
// // width: 3.0
// )
// )
