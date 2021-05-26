import 'package:flutter/material.dart';

class Recepit {
  static Future<dynamic> MyReceipt(BuildContext context) {
    return showModalBottomSheet(
      context: context,
      builder: (BuildContext context) {
        return SingleChildScrollView(
          child: Container(
            child: DataTable(
              columns: <DataColumn>[
                DataColumn(
                  label: Text("Food Name"),
                ),
                DataColumn(
                  label: Text("Price"),
                ),
              ],
              rows: <DataRow>[
                DataRow(cells: <DataCell>[
                  DataCell(
                    Text("Chicken Nugget"),
                  ),
                  DataCell(
                    Text("5 \$"),
                  ),
                ]),
                DataRow(cells: <DataCell>[
                  DataCell(
                    Text("Big Mac"),
                  ),
                  DataCell(
                    Text("16.99 \$"),
                  ),
                ]),
                DataRow(cells: <DataCell>[
                  DataCell(
                    Text("Chicken Nugget"),
                  ),
                  DataCell(
                    Text("5 \$"),
                  ),
                ]),
              ],
            ),
          ),
        );
      },
    );
  }
}
