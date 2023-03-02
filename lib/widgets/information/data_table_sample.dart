import 'package:flutter/material.dart';

class DataTableSample extends StatefulWidget {
  const DataTableSample({Key? key}) : super(key: key);

  @override
  State<DataTableSample> createState() => _DataTableSampleState();
}

class _DataTableSampleState extends State<DataTableSample> {
  bool _selected = false;

  @override
  Widget build(BuildContext context) {
    final List<DataColumn> _columns = [
      DataColumn(
        label: Text('ID'),
        numeric: true,
      ),
      DataColumn(
        label: Text('First'),
      ),
      DataColumn(label: Text('Last')),
      DataColumn(
        label: Text('Age'),
      ),
    ];

    final List<DataRow> _rows = [
      DataRow(
        cells: [
          DataCell(Text('1'), showEditIcon: true),
          DataCell(Text('John')),
          DataCell(Text('Doe')),
          DataCell(Text('25')),
        ],
      ),
      DataRow(
        selected: _selected,
        onSelectChanged: (bool? selected) {
          setState(() {
            _selected = !_selected;
            print('onSelectChanged : $selected');
          });
        },
        cells: [
          DataCell(Text('2')),
          DataCell(Text('Jane')),
          DataCell(Text('Smith')),
          DataCell(Text('30')),
        ],
      ),
      DataRow(
        cells: [
          DataCell(Text('3')),
          DataCell(Text('Bob')),
          DataCell(Text('John')),
          DataCell(Text('40')),
        ],
      ),
    ];

    return SingleChildScrollView(
      child: DataTable(
        sortColumnIndex: 0,
        sortAscending: true,
        columns: _columns,
        rows: _rows,
      ),
    );
  }
}
