import 'package:flutter/material.dart';
import 'package:flutter_listview/model/Person.dart';

void main() {
  runApp(MaterialApp(
    debugShowCheckedModeBanner: false,
    home: Scaffold(
      appBar: AppBar(
        title: Text("Listview"),
      ),
      body: ListWidget(),
    ),
  ));
}

class ListWidget extends StatelessWidget {
  List<Person> persons = List.generate(
      20, (index) => Person("${index+1}. name", "About of ${index+1}. person"),
  );

  @override
  Widget build(BuildContext context) {
    return Container(
      margin: EdgeInsets.all(5),
      child: ListView.builder(
        itemBuilder: (context, index) => Card(
          child: ListTile(
            trailing: Icon(Icons.arrow_forward_ios_outlined),
            leading: Icon(Icons.person),
            title: Text(persons[index].name),
            subtitle: Text(persons[index].about),
            onTap: () => debugPrint('pressed ${index+1}. person'),
            onLongPress: () => {
              
            },
          ),
          elevation: 4,
        ),
        itemCount: persons.length,
      ),
    );
  }
}
