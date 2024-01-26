import 'package:flutter/material.dart';
 
class ReceiverPage extends StatelessWidget {
  // Declare a variable to store the received data
  final String name_Data;
  final String address_Data;
  final String contacts_Data;
 
  // Constructor to receive the data when the page is created
  ReceiverPage({required this.name_Data, required this.address_Data, required this.contacts_Data,});
 
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Receiver Page'),
      ),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            SizedBox(height: 10),
            Text(name_Data, style: TextStyle(fontSize: 24, fontWeight: FontWeight.bold),
            ),
            Text(address_Data, style: TextStyle(fontSize: 24, fontWeight: FontWeight.bold),
            ),
            Text(contacts_Data, style: TextStyle(fontSize: 24, fontWeight: FontWeight.bold),
            ),
          ],
        ),
      ),
    );
  }
}