import 'package:flutter/material.dart';
import 'package:reminder_app/components/buttons.dart';
import 'package:reminder_app/screens/create_admin.dart';

class Admin extends StatelessWidget {
  const Admin({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: const Color.fromARGB(255, 244, 243, 243),
        title: const Text(
          "Admin",
          style: TextStyle(
            fontSize: 25,
            color: Colors.black,
          ),
        ),
        centerTitle: true,
        leading: const BackButton(color: Color(0xFF295c82)),
      ),
      body: Center(
        child: Column(
          children: [
            DataTable(
              columns: [
                DataColumn(label: Text('#')),
                DataColumn(label: Text('UserName')),
                DataColumn(label: Text('Email')),
              ],
              rows: [
                DataRow(cells: [
                  DataCell(Text('1')),
                  DataCell(Text('John')),
                  DataCell(Text('John@gmail.com')),
                ]),
                DataRow(cells: [
                  DataCell(Text('2')),
                  DataCell(Text('John')),
                  DataCell(Text('John@gmail.com')),
                ]),
                DataRow(cells: [
                  DataCell(Text('3')),
                  DataCell(Text('John')),
                  DataCell(Text('John@gmail.com')),
                ]),
              ],
            ),
            Padding(
              padding: const EdgeInsets.all(50),
              child: CustomButton(
                title: 'Create an Admin',
                onPressed: () {
                  Navigator.of(context).push(
                    MaterialPageRoute(builder: (context) {
                      return CreateAdmin();
                    }),
                  );
                },
              ),
            )
          ],
        ),
      ),
    );
  }
}
