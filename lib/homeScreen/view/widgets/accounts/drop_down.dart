// ignore_for_file: type_annotate_public_apis

import 'package:flutter/material.dart';



class DropdownSelection extends StatefulWidget {
  const DropdownSelection({super.key});

  @override
  State<DropdownSelection> createState() => _DropdownSelectionState();
}

class _DropdownSelectionState extends State<DropdownSelection> {
  String dropdownvalue = 'Male';

// List of items in our dropdown menu
  var items = [
    'Male',
    'Female',
  ];
  @override
  Widget build(BuildContext context) {
    return DropdownButton<String>(
      value: dropdownvalue,
      icon: const Icon(Icons.keyboard_arrow_down),
      items: items.map((String items) {
        return DropdownMenuItem(
          value: items,
          child: Text(items),
        );
      }).toList(),
      onChanged: (String? newValue) {
        if (newValue is String) {
          setState(() {
            dropdownvalue = newValue;
          });
        }
      },
      isExpanded: true,
    );
  }
}
