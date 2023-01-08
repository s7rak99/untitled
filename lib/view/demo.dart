import 'package:flutter/material.dart';

class CA extends StatefulWidget {
  const CA({Key? key}) : super(key: key);

  @override
  State<CA> createState() => _CAState();
}

class _CAState extends State<CA> {
  @override
  Widget build(BuildContext context) {
    return GridView(
        gridDelegate:
            const SliverGridDelegateWithFixedCrossAxisCount(
                crossAxisCount: 3,
               mainAxisSpacing: 60,
              crossAxisSpacing: 60,
            ),
        children: const [

          CircleAvatar(
            radius: 40,
            backgroundColor: Colors.black,
            child: CircleAvatar(
              radius: 36,
              backgroundImage: AssetImage('images/face.png'),
            ),
          ),
          CircleAvatar(
            radius: 40,
            backgroundColor: Colors.black,
            child: CircleAvatar(
              radius: 36,
              backgroundImage: AssetImage('images/sms.jpg'),
            ),
          ),
          CircleAvatar(
            radius: 40,
            backgroundColor: Colors.black,
            child: CircleAvatar(
              radius: 36,
              backgroundColor: Colors.white,
              child: Icon(
                Icons.attach_email_outlined,
                color: Colors.black,
                size: 40,
              ),
            ),
          ),

        ],

    );
  }
}

