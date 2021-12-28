import 'package:bytebank2/database/dao/contact_dao.dart';
import 'package:bytebank2/models/contact.dart';
import 'package:flutter/material.dart';

class ContactForm extends StatefulWidget {
  const ContactForm({Key? key}) : super(key: key);

  @override
  State<ContactForm> createState() => _ContactFormState();
}

class _ContactFormState extends State<ContactForm> {
  final TextEditingController _nameController = TextEditingController();
  final TextEditingController _accountNumberController = TextEditingController();
  final ContactDao _contactDao = ContactDao();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('New Contact'),
      ),
      body: Padding(
        padding: const EdgeInsets.all(16.0),
        child: SingleChildScrollView(
          child: Column(
            children: <Widget>[
              TextField(
                controller: _nameController,
                decoration: const InputDecoration(
                  // to do the visal configuration
                  labelText: 'Full Name',
                ),
                style: const TextStyle(
                  fontSize: 24.0,
                ),
              ),
              Padding(
                padding: const EdgeInsets.only(top: 8.0),
                child: TextField(
                  controller: _accountNumberController,
                  decoration: const InputDecoration(
                    // to do the visal configuration
                    labelText: 'Account Number',
                  ),
                  style: const TextStyle(
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
                      child: const Text('Create'),
                      onPressed: () {
                        // taking what the user typed into the constructos/variabels
                        final String name = _nameController.text;
                        final int accountNumber = int.parse(_accountNumberController.text);
                        // assining the contact into a new object
                        final Contact newContact = Contact(0, name, accountNumber);
                        // and then, we navigate to previous screen with the new contact
                        _contactDao.save(newContact).then((id) => Navigator.pop(context));
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
