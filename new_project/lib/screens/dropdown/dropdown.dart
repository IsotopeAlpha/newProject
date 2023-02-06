import 'package:flutter/material.dart';
import 'package:new_project/screens/dropdown/helpers.dart';

class MyDropDown extends StatefulWidget {
  const MyDropDown({super.key});

  @override
  State<MyDropDown> createState() => MyDropDownState();
}

class MyDropDownState extends State<MyDropDown> {
  String selected = DropDownHelper().items[0];
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        body: Center(
      child: Container(
        margin: const EdgeInsets.all(30.0),
        padding: const EdgeInsets.all(10.0),
        decoration: BoxDecoration(
            border: Border.all(color: Colors.black),
            borderRadius: BorderRadius.circular(10)),
        child: DropdownButtonHideUnderline(
          child: DropdownButton(
            dropdownColor: Colors.white,
            menuMaxHeight: 200,
            borderRadius: BorderRadius.circular(20),
            isExpanded: true,
            value: selected,
            icon: const Icon(Icons.arrow_forward_ios),
            items: DropDownHelper()
                .items
                .map((items) =>
                    DropdownMenuItem(value: items, child: Text(items)))
                .toList()
                .cast(),
            onChanged: (value) {
              setState(() {
                selected = value.toString();
              });
            },
          ),
        ),
      ),
    ));
  }
}
