import 'package:flutter/material.dart';

class ListViewSep extends StatefulWidget {
  const ListViewSep({Key? key}) : super(key: key);

  @override
  State<ListViewSep> createState() => _ListViewSepState();
}

class _ListViewSepState extends State<ListViewSep> {
  List<Widget> img=[
    Image.asset('images/model1.jpg' , fit: BoxFit.cover,),
    Image.asset('images/model2.jpg' ,fit: BoxFit.cover,),
    Image.asset('images/model3.jpg', fit: BoxFit.cover,),
    Image.asset('images/model4.jpg', fit: BoxFit.cover,),
    Image.asset('images/model5.jpg', fit: BoxFit.cover,),
    Image.asset('images/model6.jpg', fit: BoxFit.cover,),

  ];
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(),
      drawer: const Drawer(),
      body: ListView.separated(
        itemBuilder: (context, position) {
          return Card(
            child: Padding(
              padding: const EdgeInsets.all(15.0),
              child:Container(
                height: 200.0,
                  child: img[position]),
            ),
          );
        },
        separatorBuilder: (context, position) {
          return Card(
            color: Colors.grey,
            child: Padding(
              padding: const EdgeInsets.all(5.0),
              child: Text(
                'Separator $position',
                style: TextStyle(color: Colors.white),
              ),
            ),
          );
        },
        itemCount: img.length,
      ),
    );
  }
}
