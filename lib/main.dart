import 'package:flutter/material.dart';
import 'screens/home_screen.dart'; 
void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: const TableScreen(),
    );
  }
}

class TableScreen extends StatefulWidget {
  const TableScreen({super.key});

  @override
  State<TableScreen> createState() => _TableScreenState();
}

class _TableScreenState extends State<TableScreen> {
  // List to store table data
  List<String> tableData = [];
  final TextEditingController _textController = TextEditingController();

  // Function to add a new item to the table
  void _addStringToTable() {
    if (_textController.text.isNotEmpty) {
      setState(() {
        tableData.add(_textController.text);
        _textController.clear();
      });
    }
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        actions: [
          const HomeScreenIcons(), 
        ],
      ),
      body: Padding(
        padding: const EdgeInsets.all(16.0),
        child: Column(
          children: [
            // Orders Input
            TextField(
              controller: _textController,
              decoration: const InputDecoration(
                labelText: "Enter a string",
                border: OutlineInputBorder(),
              ),
            ),
            const SizedBox(height: 16.0),
            // Button to add string to the table
            ElevatedButton(
              onPressed: _addStringToTable,
              child: const Text("Add to table"),
            ),
            const SizedBox(height: 16.0),
            // Display the table
            Expanded(
              child: DataTable(
                columns: const [
                  DataColumn(label: Text("Index")),
                  DataColumn(label: Text("Item")),
                ],
                rows: tableData
                    .asMap()
                    .entries
                    .map(
                      (entry) => DataRow(cells: [
                        DataCell(Text((entry.key + 1).toString())),
                        DataCell(Text(entry.value)),
                      ]),
                    )
                    .toList(),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
