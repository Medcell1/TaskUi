import 'package:flutter/material.dart';
class TextFeildWidget extends StatelessWidget {
  const TextFeildWidget({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return TextField(
      decoration:
      InputDecoration(
        contentPadding:
        const EdgeInsets
            .symmetric(
          vertical: 60.0,
        ),
        border: OutlineInputBorder(
          borderRadius:
          BorderRadius
              .circular(
              15),),
        filled: true,
        fillColor:
        const Color(
            0xff313131),
      ),
    );
  }
}
