import 'package:flutter/material.dart';

class MyDataTable extends StatelessWidget {
  const MyDataTable({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: Text("Data-Table"), centerTitle: true),
      body: Center(
        child: DataTable(
          border: TableBorder.all(),
          columns: const [
            DataColumn(label: Text("Name")),
            DataColumn(label: Text("Age")),
            DataColumn(label: Text("Role")),
          ],
          rows: const [
            DataRow(
              cells: [
                DataCell(Text("Nazmul")),
                DataCell(Text("28")),
                DataCell(Text("Eng")),
              ],
            ),
            DataRow(
              cells: [
                DataCell(Text("Hasan")),
                DataCell(Text("25")),
                DataCell(Text("EMP")),
              ],
            ),
          ],
        ),
      ),
    );
  }
}
