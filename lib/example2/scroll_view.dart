import 'package:flutter/material.dart';

class ScrollViewEx extends StatefulWidget {
  const ScrollViewEx({Key? key}) : super(key: key);

  @override
  State<ScrollViewEx> createState() => _ScrollViewExState();
}

class _ScrollViewExState extends State<ScrollViewEx> {
  ScrollController? sc;

  @override
  void initState() {
    sc = ScrollController();
    sc!.addListener(() {
      print(sc!.offset);
      print('Max ${sc!.position.maxScrollExtent}');
    });
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('ScrollView'),
      ),
      body: ListView(controller: sc, children: [
        ElevatedButton(
            onPressed: () {

                sc!.animateTo(2200 , duration: Duration(seconds: 2), curve: Curves.easeIn );
                //sc!.jumpTo(2200);

            },
            child: const Text('end')),
        ...List.generate(
            20,
            (index) => Container(
                  margin: const EdgeInsets.all(20.0),
                  color: index.isEven ? Colors.purple : Colors.pink,
                  height: 100,
                  width: double.infinity,
                  child: const Text(''),
                )),
        ElevatedButton(

            onPressed: () {

                sc!.jumpTo(sc!.position.minScrollExtent);
              
            },
            child: const Text('start'))
      ]),
    );
  }
}
