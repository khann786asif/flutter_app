import 'dart:convert';

import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:flutter_app/network/Item.dart';
import 'package:flutter_app/widgets/MyDrawer.dart';

class Home extends StatefulWidget {
  @override
  _HomeState createState() => _HomeState();
}

class _HomeState extends State<Home> {

  @override
  void initState() {
    super.initState();
    loadData();
  }

   void loadData() async {
    var catalogJson = await rootBundle.loadString("assets/files/catalog.json");
    var decodeData = jsonDecode(catalogJson);
    var productsData = decodeData["products"];
    ItemData.item = List.from(productsData).map<Item>((item) => Item.fromMap(item)).toList();
    setState(() {});
  }

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

    return (listItem.isNotEmpty) ?  ListView.builder(
        itemCount: listItem.length,
        itemBuilder: (context, index) => Card(
          child: ListTile(
                  onTap: () => print("${listItem[index].name} was tapped"),
                  leading: Image.network(listItem[index].image),
                  title: Text(listItem[index].name),
                  subtitle: Text(listItem[index].desc),
                  trailing: Text("\$${listItem[index].price}", textScaleFactor: 1.5,),
                ),
        )) : Center(child: CircularProgressIndicator());
  }
}
