import 'package:flutter/foundation.dart';
import 'package:flutter/material.dart';

class ValidTask extends StatefulWidget {
  const ValidTask({Key? key}) : super(key: key);

  @override
  State<ValidTask> createState() => _ValidTaskState();
}

class _ValidTaskState extends State<ValidTask> {
  String? per;
  GlobalKey<FormState> formState = GlobalKey<FormState>();

  // ignore: prefer_typing_uninitialized_variables
  var username;

  // ignore: prefer_typing_uninitialized_variables
  var password;

  var message = ' ';

  int i = 555;

  var show= ' ';

  login() {
    var formData = formState.currentState;
    if (formData!.validate()) {
      if (kDebugMode) {
        formData.save();
        print('username = $username');
        print('password = $password');
        show = 'valid';
        print('valid');
      }
    } else {
      if (kDebugMode) {
        show = 'not valid';
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
      body: SingleChildScrollView(
        child: Form(
          autovalidateMode: AutovalidateMode.onUserInteraction,
          key: formState,
          child: Container(
            padding: const EdgeInsets.all(10.0),
            margin: const EdgeInsets.all(20.0),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.center,
              children: [
                TextFormField(
                 // autovalidateMode: AutovalidateMode.onUserInteraction,
                  onSaved: (text) {
                    username = text;
                  },
                  validator: (text) {
                    if (text!.length < 4) {
                      return "please that wrong to be under 4";
                    }
                    if (text!.contains('.')) {
                      return 'this user not accept . symbols7r.ak ';
                    }
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
                 // autovalidateMode: AutovalidateMode.onUserInteraction,
                  onSaved: (text) {
                    password = text;
                  },
                  validator: (text) {
                    if (text!.length > 8) {
                      return "please that wrong to be under 8";
                    }
                    if (text!.contains(' ')) {
                      return 'remove space add just number and symbol ';
                    }
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
                const Text(
                  'Permisstion',
                  style: TextStyle(fontSize: 25.0),
                ),
                Row(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    const Text('Admin'),
                    Radio(
                        value: 'admin',
                        groupValue: per,
                        onChanged: (val) {
                          setState(() {
                            per = val!;
                          });
                        }),
                    const Text('User'),
                    Radio(
                        value: 'user',
                        groupValue: per,
                        onChanged: (val) {
                          setState(() {
                            per = val!;
                          });
                        })
                  ],
                ),
                Visibility(
                    visible: per == 'admin' ? true : false,
                    child: TextFormField(
                      validator: (text) {
                        if (text != i.toString()) {
                          return 'must OTP br valid';
                        }
                      },
                      decoration: const InputDecoration(
                          suffixIcon: Icon(Icons.qr_code), hintText: 'OTP'),
                    )),
                const SizedBox(
                  height: 25.0,
                ),
                Text(
                  message,
                  style: TextStyle(fontSize: 15.0, color: Colors.red),
                ),
                const SizedBox(
                  height: 25.0,
                ),
                MaterialButton(
                  onPressed: () {
                    setState(() {
                      if (per == null) {
                        message = 'please you must choose';
                      } else {
                        login();
                        if (show == 'valid') {
                          showDialog(
                              context: context,
                              builder: (context) {
                                return AlertDialog(
                                  title: const Text("Info"),
                                  content: Column(
                                    mainAxisSize: MainAxisSize.min,
                                    children: [
                                      Text('username: $username', style: TextStyle(color: Colors.black),),
                                      Text('password: $password',style: TextStyle(color: Colors.black),),
                                      Text('permission: $per',style: TextStyle(color: Colors.black),)
                                    ],
                                  ),
                                  backgroundColor: Colors.white,
                                  contentTextStyle: const TextStyle(fontSize: 30.0),
                                );
                              });
                        }
                      }
                    });
                  },
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
      ),
    );
  }

  @override
  void debugFillProperties(DiagnosticPropertiesBuilder properties) {
    super.debugFillProperties(properties);
    properties.add(DiagnosticsProperty('username', username));
  }
}
