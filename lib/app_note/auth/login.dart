import 'package:flutter/material.dart';

class Login extends StatefulWidget {
  const Login({Key? key}) : super(key: key);

  @override
  State<Login> createState() => _LoginState();
}

class _LoginState extends State<Login> {
  bool iconFocus = false;
  bool iconFocus2 = false;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SingleChildScrollView(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Center(child: Image.asset('images/note.png')),
            Container(
              padding: const EdgeInsets.all(10.0),
              child: Form(
                  child: Column(
                children: [
                  Container(
                    padding: const EdgeInsets.all(10.0),
                    alignment: Alignment.center,
                    width: double.infinity,
                    child: Row(
                      children: [
                        const Text(
                          "if you don't have account press here ",
                          style: TextStyle(fontSize: 15.0, color: Colors.grey),
                        ),
                        IconButton(
                          onPressed: () {
                            Navigator.of(context).pushNamed('signup');
                          },
                          icon: const Icon(
                            Icons.login,
                            color: Colors.green,
                            size: 20,
                          ),
                        ),
                      ],
                    ),
                  ),
                  TextFormField(
                    onTap: () {
                      setState(() {
                        iconFocus = true;
                      });
                    },
                    onEditingComplete: () {
                      setState(() {
                        iconFocus = false;
                      });
                    },
                    cursorColor: Colors.green,
                    decoration: InputDecoration(
                        hintText: 'username',
                        prefixIcon: Icon(
                          Icons.person,
                          color:
                              iconFocus == true ? Colors.green : Colors.grey[400],
                        ),
                        border: OutlineInputBorder(
                            borderRadius: BorderRadius.circular(30.0)),
                        focusedBorder: OutlineInputBorder(
                            borderSide: const BorderSide(
                                width: 2,
                                color: Colors.green,
                                style: BorderStyle.solid),
                            borderRadius: BorderRadius.circular(30.0))),
                  ),
                  const SizedBox(
                    height: 30.0,
                  ),
                  TextFormField(
                    onTap: () {
                      setState(() {
                        iconFocus2 = true;
                      });
                    },
                    onEditingComplete: () {
                      setState(() {
                        iconFocus2 = false;
                      });
                    },
                    cursorColor: Colors.green,
                    obscureText: true,
                    decoration: InputDecoration(
                        hintText: 'password',
                        prefixIcon: Icon(
                          Icons.password,
                          color: iconFocus2 == true
                              ? Colors.green
                              : Colors.grey[400],
                        ),
                        border: OutlineInputBorder(
                            borderRadius: BorderRadius.circular(30.0)),
                        focusedBorder: OutlineInputBorder(
                            borderSide: const BorderSide(
                                width: 2,
                                color: Colors.green,
                                style: BorderStyle.solid),
                            borderRadius: BorderRadius.circular(30.0))),
                  ),
                  const SizedBox(
                    height: 30.0,
                  ),
                  MaterialButton(
                    onPressed: () {
                      Navigator.pushReplacementNamed(context, 'homepage');
                    },
                    minWidth: 300.0,
                   color: Colors.green,
                    height: 60.0,
                    textColor: Colors.white,
                    shape: RoundedRectangleBorder(
                        borderRadius: BorderRadius.circular(30.0)),
                    child: const Text(
                      'Login',
                      style: TextStyle(fontSize: 22),
                    ),
                  ),
                  // ElevatedButton(onPressed: (){}, child: Text('hi')
                  // )
                ],
              )),
            )
          ],
        ),
      ),
    );
  }
}
