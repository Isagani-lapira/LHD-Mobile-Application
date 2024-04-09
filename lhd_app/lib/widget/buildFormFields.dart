import 'package:flutter/material.dart';

Widget buildFormFields() {
  return Column(
    crossAxisAlignment: CrossAxisAlignment.start,
    children: [
      TextFormField(decoration: InputDecoration(labelText: 'Full Name', labelStyle: TextStyle(fontSize: 12), hintText: 'Full Name')),
      TextFormField(decoration: InputDecoration(labelText: 'Email Address', labelStyle: TextStyle(fontSize: 12), hintText: 'Email Address')),
      TextFormField(decoration: InputDecoration(labelText: 'Your Request', labelStyle: TextStyle(fontSize: 12), hintText: 'Your Request')),
      TextFormField(decoration: InputDecoration(labelText: 'Your Budget', labelStyle: TextStyle(fontSize: 12), hintText: 'Your Budget')),
      TextFormField(decoration: InputDecoration(labelText: 'Additional Info', labelStyle: TextStyle(fontSize: 12), hintText: 'Additional Info')),
    ],
  );
}
