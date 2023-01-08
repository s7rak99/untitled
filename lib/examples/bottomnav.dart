
import 'package:flutter/material.dart';

class BottomNavBarEx extends StatefulWidget {
  const BottomNavBarEx({Key? key}) : super(key: key);

  @override
  State<BottomNavBarEx> createState() => _BottomNavBarExState();
}

class _BottomNavBarExState extends State<BottomNavBarEx> {
  int selectedIndex =1;
  List<Widget> widgetPages = [
    const PageTest(),
    Text('sahar'),
    Text('maya')

  ];
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Sahar'),
        centerTitle: true,
      ),
      bottomNavigationBar: BottomNavigationBar(
        selectedItemColor: Colors.blueGrey,
        unselectedItemColor: Colors.white54,
        selectedLabelStyle: const TextStyle(fontSize: 20),
        backgroundColor: Colors.blue,
        currentIndex: selectedIndex,
        onTap: (index) {
          setState(() {
            selectedIndex = index;
          });
        },
        items: const [
          BottomNavigationBarItem(icon: Icon(Icons.info), label: "Info"),
          BottomNavigationBarItem(icon: Icon(Icons.home), label: "Home"),
          BottomNavigationBarItem(icon: Icon(Icons.shopping_cart), label: 'Info'),
        ],
      ),
      body: widgetPages.elementAt(selectedIndex),
    );

  }
}

class PageTest extends StatelessWidget {
  const PageTest({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      color: Colors.grey,
      width: double.infinity,
      padding: const EdgeInsets.only(top: 30.0),
      child: Column(
        children: const [
          Text('Hi', style: TextStyle(fontSize: 30.0),),
          CircleAvatar(
            child: Icon(Icons.tv),
          )
        ],
      ),
    );
  }
}









// BottomNavigationBarItem(label: 'Home', icon: Icon(Icons.home)),
// BottomNavigationBarItem(label: 'Info', icon: Icon(Icons.info)),
// BottomNavigationBarItem(label: 'Cart', icon: Icon(Icons.shopping_cart)),
// BottomNavigationBarItem(label: 'Help', icon: Icon(Icons.help)),