import 'package:flutter/foundation.dart';
import 'package:flutter/material.dart';

class TextFieldEx extends StatefulWidget {
  const TextFieldEx({Key? key}) : super(key: key);

  @override
  State<TextFieldEx> createState() => _TextFieldExState();
}

class _TextFieldExState extends State<TextFieldEx> {
  GlobalKey<FormState> formState = GlobalKey<FormState>();
  // ignore: prefer_typing_uninitialized_variables
  var username;

  // ignore: prefer_typing_uninitialized_variables
  var password;

  login() {
    var formData = formState.currentState;
    if (formData!.validate()) {
      if (kDebugMode) {
        formData.save();
        print ('username = $username');
        print('password = $password');
        print('valid');
      }

    } else {
      if (kDebugMode) {
        print('not valid');
      }
    }
  }

  TextEditingController userNameController = TextEditingController();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Sign In'),
      ),
      drawer: const Drawer(),
      body: Form(
        autovalidateMode: AutovalidateMode.always,
        key: formState,
        child: Container(
          padding: const EdgeInsets.all(10.0),
          margin: const EdgeInsets.all(20.0),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.center,
            children: [
              TextFormField(

                // auto-validateMode: Auto validateMode.always,
                onSaved: (text) {
                  username = text;
                },
                validator: (text) {
                  if (text != null) {
                    if (text.length < 4) {
                      return "please that wrong to be under 4";
                    }
                    if (text.contains('.')) {
                      return 'this user not accept . symbols7r.ak ';
                    }
                  }
                  return null;
                },
                maxLength: 20,
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
                onSaved: (text){
                  password = text;
                },
                validator: (text) {
                  if (text != null) {
                    if (text.length < 8) {
                      return "please that wrong to be under 8";
                    }
                    if (text.contains(' ')) {
                      return 'remove space add just number and symbol ';
                    }
                  }
                  return null;
                },
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
                onPressed: login,
                minWidth: 300,
                color: Colors.blue,
                height: 60.0,
                textColor: Colors.white,
                shape: RoundedRectangleBorder(
                    borderRadius: BorderRadius.circular(30.0)),
                child: const Text(
                  'Login',
                  style: TextStyle(fontSize: 22),
                ),
              )
            ],
          ),
        ),
      ),
    );
  }
  @override
  void debugFillProperties(DiagnosticPropertiesBuilder properties) {
    super.debugFillProperties(properties);
    properties.add(DiagnosticsProperty('username', username));
  }
}
