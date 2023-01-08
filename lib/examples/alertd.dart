import 'package:flutter/foundation.dart';
import 'package:flutter/material.dart';

class AlertDialogExample extends StatefulWidget {
  const AlertDialogExample({Key? key}) : super(key: key);

  @override
  State<AlertDialogExample> createState() => _AlertDialogExampleState();
}

class _AlertDialogExampleState extends State<AlertDialogExample> {
 
  GlobalKey<ScaffoldState> scaffoldKey = GlobalKey<ScaffoldState>();
  String name = 'sahar';

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      key: scaffoldKey,
      appBar: AppBar(
        title: const Text('Fazeal Team'),
        backgroundColor: Colors.black,
      ),
      drawer: const Drawer(),
      body: Center(
        child: MaterialButton(
          color: Colors.black,
          textColor: Colors.white,
          height: 60.0,
          shape: RoundedRectangleBorder(
              borderRadius: BorderRadius.circular(30.0)),
          onPressed: () {
            showDialog(
              context: context,
              builder: (context) {
                String contentText = "SAHAR";
                return StatefulBuilder(
                  builder: (context, setState) {
                    return AlertDialog(
                      title: const Text("Title of Dialog"),
                      content: Container(
                        height: 200,
                          width: double.infinity,
                          child: Text(contentText)),
                      actions: <Widget>[
                        TextButton(
                          onPressed: () => Navigator.pop(context),
                          child: const Text("Cancel"),
                        ),
                        TextButton(
                          onPressed: () {
                            setState(() {
                              contentText = "SAHAR EMAD AKBIK";
                            });
                          },
                          child: const Text("Change"),
                        ),
                      ],
                    );
                  },
                );
              },
            );

          },
          child: const Text("Information", style: TextStyle(fontSize: 30),),
        ),
      ),
    );
  }
}


// showDialog(


// context: context,
// builder: (context){
//
// return StatefulBuilder((context, setState)){
//   return  AlertDialog(
//
//     title: TextButton(
//       onPressed: () {
//         setState(() {
//           name = 'amer';
//
//         });
//       },
//       child: Text(name),
//     ),
//     //titlePadding: EdgeInsets.only(top: 10.0),
//     content: Text("Software Engineering"),
//     backgroundColor: Colors.white,
//     contentTextStyle: TextStyle(fontSize: 30.0),
//
//
//
//   );
// }
// });

// },