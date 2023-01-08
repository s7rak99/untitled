import 'package:flutter/material.dart';

class TextFieldEx extends StatefulWidget {
  const TextFieldEx({Key? key}) : super(key: key);

  @override
  State<TextFieldEx> createState() => _TextFieldExState();
}

class _TextFieldExState extends State<TextFieldEx> {

  TextEditingController userNameController = TextEditingController();


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
          crossAxisAlignment: CrossAxisAlignment.center,
          children: [
            TextFormField(
              onTap: (){},
              onChanged: (text){
                print(text);
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
                labelText: 'Username',
                labelStyle: const TextStyle(fontSize: 16.0),
                hintText: 'Enter you user name ',
                hintStyle: TextStyle(color: Colors.grey[350]),
                hintMaxLines: 2,
                suffixIcon: const Icon(Icons.email),
              ),
            ),
            const SizedBox(
              height: 25.0,
            ),
            TextFormField(
              maxLength: 16,
              obscureText: true,
              keyboardType: TextInputType.number,
              decoration: InputDecoration(
                labelText: 'Password',
                labelStyle: const TextStyle(fontSize: 16.0),
                hintText: 'Enter you password ',
                hintStyle: TextStyle(color: Colors.grey[350]),
                suffixIcon: const Icon(Icons.password),
              ),
            ),
            const SizedBox(
              height: 25.0,
            ),
            MaterialButton(
              onPressed: (){
                print(userNameController.text);
              },
              minWidth: 300,
              color: Colors.blue,
              height: 60.0,
              textColor: Colors.white,
              shape: RoundedRectangleBorder(
                borderRadius: BorderRadius.circular(30.0)
              ),
              child: const Text('Login', style: TextStyle(fontSize: 22),),
            )
          ],
        ),
      ),
    );
  }
}
