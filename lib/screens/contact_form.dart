import 'package:bytebank2/models/contact.dart';
import 'package:flutter/material.dart';

class ContactForm extends StatefulWidget {
  @override
  State<ContactForm> createState() => _ContactFormState();
}

class _ContactFormState extends State<ContactForm> {
  final TextEditingController _nameController = TextEditingController();
  final TextEditingController _accountNumberController = TextEditingController();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('New Contact'),
      ),
      body: Padding(
        padding: const EdgeInsets.all(16.0),
        child: SingleChildScrollView(
          child: Column(
            children: <Widget>[
              TextField(
                controller: _nameController,
                decoration: InputDecoration(
                  // to do the visal configuration
                  labelText: 'Full Name',
                ),
                style: TextStyle(
                  fontSize: 24.0,
                ),
              ),
              Padding(
                padding: const EdgeInsets.only(top: 8.0),
                child: TextField(
                  controller: _accountNumberController,
                  decoration: InputDecoration(
                    // to do the visal configuration
                    labelText: 'Account Number',
                  ),
                  style: TextStyle(
                    fontSize: 24.0,
                  ),
                  keyboardType: TextInputType.number,
                ),
              ),
              Padding(
                padding: const EdgeInsets.only(top: 16.0),
                child: SizedBox(
                  width: double.maxFinite, // the max value as possible inside his container, in this case, the column
                  child: ElevatedButton(
                      child: Text('Create'),
                      onPressed: () {
                        // taking what the user typed into the constructos/variabels
                        final String name = _nameController.text;
                        final int accountNumber = int.parse(_accountNumberController.text);
                        // assining the contact into a new object
                        final Contact newContact = Contact(name, accountNumber);
                        // and then, we navigate to previous screen with the new contact
                        Navigator.pop(context, newContact);
                      },
                  ),
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
