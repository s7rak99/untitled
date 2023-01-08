import 'package:flutter/material.dart';

class ListViewCustomExample extends StatefulWidget {
  const ListViewCustomExample({Key? key}) : super(key: key);

  @override
  State<ListViewCustomExample> createState() => _ListViewCustomExampleState();
}

class _ListViewCustomExampleState extends State<ListViewCustomExample> {
  List users = ['Sahar', 'Maya', 'Lara', 'Asma', 'Sara'];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(),
        drawer: const Drawer(),
        body: Container(
            child: ListView.custom(
              // SliverChildBuilderDelegate
                childrenDelegate: SliverChildListDelegate(
                    [
                  Container(
                    margin: const EdgeInsets.all(10.0),
                    color: Colors.green,
                    height: 100.0,
                    child: Text("hi"),
                  ),
                  Container(
                    margin: const EdgeInsets.all(10.0),
                    color: Colors.green,
                    height: 100.0,
                    child: Text("jhbdcj"),
                  ),
                  Container(
                    margin: const EdgeInsets.all(10.0),
                    color: Colors.green,
                    height: 100.0,
                    child: Text("jdlwhc"),
                  ),
                ]))));
  }
}

/*
*  childrenDelegate: SliverChildBuilderDelegate(
              (context , i ){
                return Container(
                  margin: const EdgeInsets.all(10.0),
                  color: Colors.green,
                  height: 100.0,
                  child: Text("${users[i]}"),

                );
              },
              childCount: users.length,
          ),**/

class ListViewBuilderExample extends StatefulWidget {
  const ListViewBuilderExample({Key? key}) : super(key: key);

  @override
  State<ListViewBuilderExample> createState() => _ListViewBuilderExampleState();
}

class _ListViewBuilderExampleState extends State<ListViewBuilderExample> {
  List mobiles = [
    {'name': 'Iphone 14 ', 'screen': '8.2', 'cpu': '8 core'},
    {'name': 'Huawei nova 7i ', 'screen': '6.2', 'cpu': '6 core'},
    {'name': 'Samsung S21 ', 'screen': '8.0', 'cpu': '6 core'}
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(),
      drawer: const Drawer(),
      body: ListView.separated(
        itemCount: mobiles.length,
        itemBuilder: (context, i) {
          return ListTile(
            title: Text('${mobiles[i]['name']}'),
            subtitle: Text('${mobiles[i]['screen']}'),
            trailing: Text('cpu ${mobiles[i]['cpu']}'),
          );
        },
        separatorBuilder: (context, index) {
          return const Divider(
            height: 10,
            color: Colors.blue,
            thickness: 4.0,
          );
        },
      ),
    );
  }
}
