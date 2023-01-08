import 'package:flutter/material.dart';


//ListViewBuilder primary

class Demo3 extends StatefulWidget {
  const Demo3({Key? key}) : super(key: key);

  @override
  State<Demo3> createState() => _Demo3State();
}

class _Demo3State extends State<Demo3> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(),
      body: SingleChildScrollView(
        child: Column(
          children: [
            Container(
              color: Colors.blue,
              width: double.infinity,
              child: ListView.builder(
                primary: false,
                  shrinkWrap: true,
                  itemCount: 5,
                  itemBuilder: (context , i){
                    return Text('sahar');
                  }),
            ),
          ],
        ),
      ),
    );
  }
}





//ListViewBuilder

class Demo extends StatefulWidget {
  const Demo({Key? key}) : super(key: key);

  @override
  State<Demo> createState() => _DemoState();
}

class _DemoState extends State<Demo> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(),
      body: ListView.builder(

        itemCount: 5,
          itemBuilder: (context , i){
            return Text('sahar');
          }),
    );
  }
}


class Demo2 extends StatefulWidget {
  const Demo2({Key? key}) : super(key: key);

  @override
  State<Demo2> createState() => _Demo2State();
}

class _Demo2State extends State<Demo2> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(),
      body: ListView.separated(


          itemBuilder: (context , i){
            return const Text('sahar');
          },
          separatorBuilder: (context , i){
            return const Divider(
              height: 10.0,
            );


          },
          itemCount: 2

      )
    );
  }
}



















//ListView
class ListViewDemo extends StatefulWidget {
  const ListViewDemo({Key? key}) : super(key: key);

  @override
  State<ListViewDemo> createState() => _ListViewDemoState();
}

class _ListViewDemoState extends State<ListViewDemo> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('ListView Demo')
      ),
      drawer: const Drawer(),
      body: ListView(
        scrollDirection: Axis.vertical,
        padding: const EdgeInsets.all(10.0),
        // reverse: true,
        // physics: const ClampingScrollPhysics(), //BouncingScrollPhysics //ClampingScrollPhysics //NeverScrollableScrollPhysics

        children: [
          Container(
            color: Colors.blue,
            height: 200.0,
            child: const Text('SAHAR', style: TextStyle(fontSize: 50.0, color: Colors.white),),
          ),
          Container(
            color: Colors.red,
            height: 200.0,
            child: const Text('SAHAR', style: TextStyle(fontSize: 50.0, color: Colors.white),),

          ),
          ListView(
            shrinkWrap: true,
           // physics: ClampingScrollPhysics(),
            children: [
            ],
          ),
          Container(
            color: Colors.yellow,
            height: 200.0,
            child: const Text('SAHAR', style: TextStyle(fontSize: 50.0, color: Colors.white),),

          ),
          Container(
            color: Colors.orange,
            height: 200.0,
            child: const Text('SAHAR', style: TextStyle(fontSize: 50.0, color: Colors.white),),

          ),
          Container(
            color: Colors.purple,
            height: 200.0,
            child: const Text('SAHAR', style: TextStyle(fontSize: 50.0, color: Colors.white),),

          ),
          Container(
            color: Colors.green,
            height: 200.0,
            child: const Text('SAHAR', style: TextStyle(fontSize: 50.0, color: Colors.white),),

          ),


        ],

      ),


    );
  }
}
