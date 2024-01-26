import 'package:flutter/material.dart';
import 'receiver_page.dart';
 
class SenderPage extends StatelessWidget {
  final TextEditingController name = TextEditingController();
  final TextEditingController address = TextEditingController();
  final TextEditingController contactNumber = TextEditingController();
 
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Registration'),
      ),
      body: Center(
        child: Container(
          width: 800,
          padding: const EdgeInsets.all(50.0),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            TextFormField(
              controller: name,
              decoration: InputDecoration(
                labelText: 'Name',
                border: OutlineInputBorder(),
              ),
            ),
            SizedBox(height: 20),
            TextFormField(
              controller: address,
              decoration: InputDecoration(
                labelText: 'Address',
                border: OutlineInputBorder(),
              ),
            ),
            SizedBox(height: 20),
            TextFormField(
              controller: contactNumber,
              decoration: InputDecoration(
                labelText: 'Contact Number',
                border: OutlineInputBorder(),
              ),
            ),
            SizedBox(height: 20),
            ElevatedButton(
              onPressed: () {
                // Get the entered text from the TextFormField
                String nameData = name.text;
                String addressData = address.text;
                String contactsData = contactNumber.text;
                // Navigate to the ReceiverPage and pass the entered text
                Navigator.push(
                  context,
                  MaterialPageRoute(
                    builder: (context) => ReceiverPage(name_Data: nameData, address_Data: addressData, contacts_Data: contactsData,),
                  ),
                );
              },
              child: Text('Submit'),
              
            ),
          ],
        ),
        ),
      ),
    );
  }
}