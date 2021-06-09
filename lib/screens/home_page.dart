import 'package:flutter/material.dart';
import 'package:flutter_app/network/Item.dart';
import 'package:flutter_app/widgets/MyDrawer.dart';

class Home extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      drawer: MyDrawer(),
      appBar: AppBar(
        title: Text("My App", style: TextStyle(fontSize: 24),), centerTitle: true,),
      body: Material(
        child: createListView(context)
      ),
    );
  }
  
  Widget createListView(BuildContext context){
    var listItem = ItemData.item;

    return ListView.builder(
        itemCount: listItem.length,
        itemBuilder: (context, index) => Card(
          child: ListTile(
                  onTap: () => print("${listItem[index].name} was tapped"),
                  leading: Image.network(listItem[index].image),
                  title: Text(listItem[index].name),
                  subtitle: Text(listItem[index].desc),
                  trailing: Text("\$${listItem[index].price}", textScaleFactor: 1.5,),
                ),
        ));
  }
}
