import 'package:flutter/material.dart';

class ExpansionPanelSample extends StatefulWidget {
  const ExpansionPanelSample({Key? key}) : super(key: key);

  @override
  State<ExpansionPanelSample> createState() => _ExpansionPanelSampleState();
}

class _ExpansionPanelSampleState extends State<ExpansionPanelSample> {
  List<Item> _items = [
    Item(
      headerValue: 'Item 1',
      expandedValue: 'This is item 1',
      isExpanded: false,
    ),
    Item(
      headerValue: 'Item 2',
      expandedValue: 'This is item 2',
      isExpanded: false,
    ),
    Item(
      headerValue: 'Item 3',
      expandedValue: 'This is item 3',
      isExpanded: false,
    ),
  ];

  @override
  Widget build(BuildContext context) {
    return SingleChildScrollView(
      child: Container(
        padding: EdgeInsets.all(20),
        child: ExpansionPanelList(
          expansionCallback: (int index, bool isExpanded) {
            setState(() {
              _items[index].isExpanded = !isExpanded;
            });
          },
          children: _items.map((Item item) {
            return ExpansionPanel(
              headerBuilder: (BuildContext context, bool isExpanded) {
                return Container(
                  padding: EdgeInsets.all(10),
                  child: Text(
                    item.headerValue,
                    style: TextStyle(
                      fontSize: 16,
                      fontWeight: FontWeight.bold,
                    ),
                  ),
                );
              },
              body: Container(
                padding: EdgeInsets.all(10),
                child: Text(
                  item.expandedValue,
                  style: TextStyle(fontSize: 14),
                ),
              ),
              isExpanded: item.isExpanded,
            );
          }).toList(),
        ),
      ),
    );
  }
}

class Item {
  String headerValue;
  String expandedValue;
  bool isExpanded;

  Item({
    required this.headerValue,
    required this.expandedValue,
    required this.isExpanded,
  });
}
