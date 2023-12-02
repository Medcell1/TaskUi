import 'package:flutter/material.dart';
class DropDownTextField extends StatelessWidget {
  const DropDownTextField(
      {super.key,
        this.dropDownItems,
        required this.text,
        this.onChanged,
        this.value});

  final dynamic dropDownItems;
  final dynamic onChanged;
  final dynamic value;
  final String text;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Container(
            margin: EdgeInsets.only(left: 20),
            child: Text(
              text,
              style: const TextStyle(
                color: Color(0xff555555),
                fontWeight: FontWeight.bold,
              ),
            ),
          ),
          const SizedBox(
            height: 10,
          ),
          Padding(
            padding: const EdgeInsets.only(left: 20, right: 20),
            child: DropdownButtonFormField(
              decoration: InputDecoration(
                filled: true,
                fillColor: const Color(0xff313131),
                hintText: dropDownItems[0],
                isDense: true,
                border: OutlineInputBorder(
                  borderRadius: BorderRadius.circular(20),
                ),
              ),
              value: value,
              onChanged: onChanged,
              items:
              dropDownItems.map<DropdownMenuItem<String>>((String value) {
                return DropdownMenuItem<String>(
                  value: value,
                  child: Text(value),
                );
              }).toList(),
            ),
          ),
        ],
      ),
    );
  }
}
