import 'package:flutter/foundation.dart';
import 'package:flutter/material.dart';

class TabBarExample extends StatefulWidget {
  const TabBarExample({Key? key}) : super(key: key);

  @override
  State<TabBarExample> createState() => _TabBarExampleState();
}

class _TabBarExampleState extends State<TabBarExample> {

  @override
  void initState() {
    if (kDebugMode) {
      print('initState called');
    }
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    return DefaultTabController(
        length: 4,
        child: Scaffold(
          appBar: AppBar(
            title: const Text('sahar application'),
            backgroundColor: Colors.black,

            centerTitle: true,
            bottom:  TabBar(
              isScrollable: true,
              indicatorColor: Colors.white,
              indicatorWeight: 4.0,
              indicatorPadding: const EdgeInsets.all(5.0),
              labelColor: Colors.white,
              labelStyle: const TextStyle(fontSize: 18.0),
              onTap: (i){
                if (kDebugMode) {
                  print(i);
                }
              },
              tabs: const [
                Tab(icon: Icon(Icons.home),child: Text('Home'),
                ),
                Tab(icon: Icon(Icons.person),child: Text('Profile'),),
                Tab(icon: Icon(Icons.video_call),child: Text('Video'),),
                Tab(icon: Icon(Icons.info),child: Text('Info'),),

              ],
            ),
          ),
          drawer: const Drawer(),
          body: TabBarView(
            children: [
              Container(
                  width: double.infinity,
                  color: Colors.yellow,
                  child: const Text('sahar ')),
              Container(
                  width: double.infinity,
                  color: Colors.blue,
                  child: const Text('sahar ')),
              Container(
                  width: double.infinity,
                  color: Colors.red,
                  child: const Text('sahar ')),
              Container(
                  width: double.infinity,
                  color: Colors.green,
                  child: const Text('sahar ')),

            ],
          ),
        ));
  }
}




class TabBarControllerExample extends StatefulWidget {
  const TabBarControllerExample({Key? key}) : super(key: key);

  @override
  State<TabBarControllerExample> createState() => _TabBarControllerExampleState();
}

class _TabBarControllerExampleState extends State<TabBarControllerExample> with SingleTickerProviderStateMixin{

  late TabController myController;


  @override
  void initState() {
    myController = TabController(length: 4, vsync: this, initialIndex: 1);
    if (kDebugMode) {
      print('initState called');
    }
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('sahar application'),
        backgroundColor: Colors.black,

        centerTitle: true,
        bottom:  TabBar(
          controller: myController,
          isScrollable: true,
          indicatorColor: Colors.white,
          indicatorWeight: 4.0,
          indicatorPadding: const EdgeInsets.all(5.0),
          labelColor: Colors.white,
          labelStyle: const TextStyle(fontSize: 18.0),
          onTap: (i){
            if (kDebugMode) {
              print(i);
            }
          },
          tabs: const [
            Tab(icon: Icon(Icons.home),child: Text('Home'),
            ),
            Tab(icon: Icon(Icons.person),child: Text('Profile'),),
            Tab(icon: Icon(Icons.video_call),child: Text('Video'),),
            Tab(icon: Icon(Icons.info),child: Text('Info'),),

          ],
        ),
      ),
      drawer: const Drawer(),
      body: TabBarView(
        controller: myController,
        children: [
          Container(
              width: double.infinity,
              color: Colors.yellow,
              child: const Text('sahar ')),
          Container(
              width: double.infinity,
              color: Colors.blue,
              child: const Text('sahar ')),
          Container(
              width: double.infinity,
              color: Colors.red,
              child: const Text('sahar ')),
          Container(
              width: double.infinity,
              color: Colors.green,
              child: const Text('sahar ')),

        ],
      ),
    );
  }
}

