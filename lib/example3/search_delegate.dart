import 'package:flutter/material.dart';

class SearchDelegateExample extends StatefulWidget {
  const SearchDelegateExample({Key? key}) : super(key: key);

  @override
  State<SearchDelegateExample> createState() => _SearchDelegateExampleState();
}

class _SearchDelegateExampleState extends State<SearchDelegateExample> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('search'),
        actions: [
          IconButton(
              onPressed: () {
                showSearch(context: context, delegate: DataSearch());
              },
              icon: Icon(Icons.search))
        ],
      ),
    );
  }
}

class DataSearch extends SearchDelegate {
  List name = ['sahar', 'mohammed', 'emad', 'akbik', 'nadia', 'laila', 'maya'];

  @override
  List<Widget>? buildActions(BuildContext context) {
    return [
      IconButton(
          onPressed: () {
            query = '';
          },
          icon: Icon(Icons.close))
    ];
  }

  @override
  Widget? buildLeading(BuildContext context) {
    return IconButton(
        onPressed: () {
          close(context, null);
        },
        icon: Icon(Icons.arrow_back));
  }

  @override
  Widget buildResults(BuildContext context) {
    return Text(query);
  }

  @override
  Widget buildSuggestions(BuildContext context) {
    List filter = name.where((element) => element.contains(query)).toList();

    return ListView.builder(
        itemCount: query == '' ? name.length : filter.length,
        itemBuilder: (context, i) {
          return InkWell(
            onTap: (){
              query =  filter[i];
              //query == '' ? name[i] :
              showResults(context);
            },
            child: Container(
                width: double.infinity,
                height: 50,
                padding: EdgeInsets.all(10),
                margin: EdgeInsets.all(10),
                child: query == ''
                    ? Text(
                        name[i],
                        style: TextStyle(fontSize: 30.0),
                      )
                    : Text(
                        filter[i],
                        style: TextStyle(fontSize: 30.0),
                      )),
          );
        });
  }
}
