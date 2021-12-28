import 'package:bytebank2/screens/contacts_list.dart';
import 'package:flutter/material.dart';

import 'codebar.dart';

class Dashboard extends StatelessWidget {
  const Dashboard({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Dashboard'),
      ),
      body: SingleChildScrollView(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          crossAxisAlignment: CrossAxisAlignment.start,
          children: <Widget>[
            Padding(
              padding: const EdgeInsets.all(8.0),
              child: Image.asset('images/bytebank_logo.png'),
            ),
            Padding(
              padding: const EdgeInsets.all(8.0),
              child: Material(
                color: Theme.of(context).primaryColor,
                child: InkWell(
                  onTap: () {
                    Navigator.of(context).push(MaterialPageRoute(
                      builder: (context) => const ContactsList(),
                    ));
                  },
                  child: SizedBox(
                    height: 100,
                    width: 150,
                    child: Column(
                      children: <Widget>[
                        Column(
                          mainAxisAlignment: MainAxisAlignment.spaceBetween,
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: const <Widget>[
                            Icon(
                              Icons.people,
                              color: Colors.white,
                              size: 24.0,
                            ),
                            Text(
                              'Contacts',
                              style: TextStyle(
                                color: Colors.white,
                                fontSize: 16.0,
                              ),
                            )
                          ],
                        )
                      ]

                    ),
                  ),
                ),
              ),
            ),
            Padding(
              padding: const EdgeInsets.all(8.0),
              child: Material(
                color: Theme.of(context).primaryColor,
                child: InkWell(
                  onTap: () {
                    Navigator.of(context).push(MaterialPageRoute(
                      builder: (context) => const CodeBar(),
                    ));
                  },
                  child: SizedBox(
                    height: 100,
                    width: 150,
                    child: Column(
                        children: <Widget>[
                          Column(
                            mainAxisAlignment: MainAxisAlignment.spaceBetween,
                            crossAxisAlignment: CrossAxisAlignment.start,
                            children: const <Widget>[
                              Icon(
                                Icons.access_time,
                                color: Colors.white,
                                size: 24.0,
                              ),
                              Text(
                                'Contacts',
                                style: TextStyle(
                                  color: Colors.white,
                                  fontSize: 16.0,
                                ),
                              )
                            ],
                          ),
                        ]

                    ),
                  ),
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
