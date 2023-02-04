import 'package:flutter/material.dart';
import 'dart:convert';
import 'package:flutter/services.dart';
import 'dart:developer';

// stores ExpansionPanel state information
class Item {
  Item({
    required this.expandedValue,
    required this.headerValue,
    this.isExpanded = false,
  });

  String expandedValue;
  String headerValue;
  bool isExpanded;
}

List _data = [];

class MyStatefulWidget extends StatefulWidget {
  const MyStatefulWidget({super.key});

  @override
  State<MyStatefulWidget> createState() => _MyStatefulWidgetState();
}

List<Item> generateItems(int numberOfItems) {
  return List<Item>.generate(numberOfItems, (int index) {
    return Item(
      headerValue: _data[index]["header"],
      expandedValue: _data[index]["text"],
    );
  });
}

class _MyStatefulWidgetState extends State<MyStatefulWidget> {

  Future<void> readJson() async {
    final String response = await rootBundle.loadString('assets/input.json');
    final data = await json.decode(response)["items"];
    log('$data');
    setState(() {
      _items = List<Item>.generate(data.length, (int index) {
        return Item(
          headerValue: data[index]["header"],
          expandedValue: data[index]["text"],
        );
      });
    });
  }

  @override
  void initState() {
    readJson();
    super.initState();
  }

  List<Item> _items = [];

  @override
  Widget build(BuildContext context) {

    return SingleChildScrollView(
      child: Container(
        child: _buildPanel(),
      ),
    );
  }

  Widget _buildPanel() {
    return ExpansionPanelList(
      expansionCallback: (int index, bool isExpanded) {
        setState(() {
          _items[index].isExpanded = !isExpanded;
        });
      },
      children: _items.map<ExpansionPanel>((Item item) {
        return ExpansionPanel(
          headerBuilder: (BuildContext context, bool isExpanded) {
            return ListTile(
              title: Text(item.headerValue),
            );
          },
          body: ListTile(
            title: Text(item.expandedValue),
          ),
          isExpanded: item.isExpanded,
        );
      }).toList(),
    );
  }
}