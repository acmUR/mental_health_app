// Author: Jack DuPuy
// Date: 1/27/2023
// To personalize for your own section, delete this comment and feel free to
// change the class names (EmergencyList and EmergencyService) and hard code
// different information starting at line 25 (and with your updated class name)
// There may also be a way to code the icon button to send an email instead
// of making a phone call

import 'package:flutter/material.dart';
import 'package:url_launcher/url_launcher.dart';

void main() => runApp(MyApp());

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
        body: EmergencyList(),
      ),
    );
  }
}

class EmergencyList extends StatelessWidget {
  final List<EmergencyService> services = [
    EmergencyService(
      number: '911',
      description: 'Emergency services (Police, Fire, Ambulance)',
    ),
    EmergencyService(
      number: '555-555-5555',
      description: 'Suicide Hotline',
    ),
    EmergencyService(
      number: '555-555-5555',
      description: 'Domestic Violence Hotline',
    ),
    // add more services as needed
  ];

  @override
  Widget build(BuildContext context) {
    return ListView.builder(
      itemCount: services.length,
      itemBuilder: (context, index) {
        final service = services[index];
        return ListTile(
          title: Text(service.description),
          trailing: IconButton(
            icon: Icon(Icons.phone),
            onPressed: () {
              launch("tel:${service.number}");
            },
          ),
        );
      },
    );
  }
}

class EmergencyService {
  final String number;
  final String description;

  EmergencyService({required this.number, required this.description});
}

