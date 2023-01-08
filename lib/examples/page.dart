import 'package:flutter/material.dart';

class PageViewExample extends StatefulWidget {
  const PageViewExample({Key? key}) : super(key: key);

  @override
  State<PageViewExample> createState() => _PageViewExampleState();
}

class _PageViewExampleState extends State<PageViewExample> {

  late PageController pc;
  List images =[
    {'url' :'images/red.jpg'},
    {'url' :'images/blue.jpg'},
    {'url' :'images/yellow.jpg'},
    {'url' :'images/moon.jpg'},
    {'url' :'images/img1.jpg'},
    {'url' :'images/lemon.png'}

  ];
  @override
  void initState() {
    pc = PageController(initialPage: 1,viewportFraction: 0.5); // viewportFraction: 0.5\
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Sahar'),
        centerTitle: true,
      ),

      body: Column(
        children: [
          Container(
            color: Colors.white,
            height: 300,
            child: PageView.builder(
              itemCount: images.length,
              controller: pc,
              itemBuilder: (context, i) {
                return Image.asset(images[i]['url']);
              },

            ),
          ),
          ElevatedButton(onPressed: (){
            pc.animateToPage(3, duration: const Duration(seconds: 2), curve: Curves.easeIn);
            // pc.jumpToPage(3);
          }, child: const Text('Sahar'))
        ],
      ),
    );

  }
}



class PageView2Example extends StatefulWidget {
  const PageView2Example({Key? key}) : super(key: key);

  @override
  State<PageView2Example> createState() => _PageView2ExampleState();
}

class _PageView2ExampleState extends State<PageView2Example> {

  late PageController pc;
  List images =[
    {'url' :'images/red.jpg'},
    {'url' :'images/blue.jpg'},
    {'url' :'images/yellow.jpg'},
    {'url' :'images/moon.jpg'},
    {'url' :'images/img1.jpg'},
    {'url' :'images/lemon.png'}

  ];
  @override
  void initState() {
    pc = PageController(initialPage: 1,); // viewportFraction: 0.5\
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Sahar'),
        centerTitle: true,
      ),

      body: Column(
        children: [
          Container(
            color: Colors.white,
            height: 300,
            child: PageView(
              controller: pc,
              // reverse: true,
              // scrollDirection: Axis.vertical,
              children:  [
                Image.asset('images/red.jpg', fit: BoxFit.cover,),
                Image.asset('images/blue.jpg', fit: BoxFit.cover,),
                Image.asset('images/yellow.jpg', fit: BoxFit.cover,),
                Image.asset('images/moon.jpg', fit: BoxFit.cover,),
                Image.asset('images/img1.jpg', fit: BoxFit.cover,),
                Image.asset('images/lemon.png', fit: BoxFit.cover,),
                // const Text('SAHAR' , style: TextStyle(fontSize: 40.0),),
                // const Text('EMAD' , style: TextStyle(fontSize: 40.0),),
                // const Text('ERFAN' , style: TextStyle(fontSize: 40.0),),
                // const Text('AKBIK' , style: TextStyle(fontSize: 40.0),),
              ],

            ),
          ),
          ElevatedButton(onPressed: (){
            pc.animateToPage(3, duration: const Duration(seconds: 2), curve: Curves.easeIn);
            // pc.jumpToPage(3);
          }, child: const Text('Sahar'))
        ],
      ),
    );

  }
}
