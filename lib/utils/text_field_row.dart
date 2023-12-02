import 'package:flutter/material.dart';
class TextFieldRow extends StatelessWidget {
  const TextFieldRow({
    super.key,
    required this.width,
  });

  final double width;

  @override
  Widget build(BuildContext context) {
    return Row(
      children: [
        Column(
          crossAxisAlignment:
          CrossAxisAlignment
              .start,
          children: [
            const Text(
              'Due date',
              style:
              TextStyle(
                color: Color(
                    0xffA7A7A7),
                fontWeight:
                FontWeight
                    .bold,
              ),
            ),
            const SizedBox(
              height: 10,
            ),
            SizedBox(
              width:
              width *
                  0.4,
              child:
              TextField(
                decoration:
                InputDecoration(
                  suffixIcon: const Icon(
                      Icons
                          .calendar_month,
                      color:
                      Colors.white),
                  border:
                  OutlineInputBorder(
                    borderRadius:
                    BorderRadius.circular(15),
                  ),
                  filled:
                  true,
                  fillColor:
                  const Color(
                    0xff313131,
                  ),
                ),
              ),
            ),
          ],
        ),
        const SizedBox(
          width: 40,
        ),
        Column(
          crossAxisAlignment:
          CrossAxisAlignment
              .start,
          children: [
            const Text(
              'Estimate task',
              style:
              TextStyle(
                color: Color(
                    0xffA7A7A7),
                fontWeight:
                FontWeight
                    .bold,
              ),
            ),
            const SizedBox(
              height: 10,
            ),
            SizedBox(
              width:
              width *
                  0.4,
              child:
              TextField(
                decoration:
                InputDecoration(
                  suffixIcon:
                  const Icon(
                    Icons
                        .access_time_rounded,
                    color:
                    Colors.white,
                  ),
                  border:
                  OutlineInputBorder(
                    borderRadius:
                    BorderRadius.circular(15),
                  ),
                  filled:
                  true,
                  fillColor:
                  const Color(0xff313131),
                ),
              ),
            ),
          ],
        ),
      ],
    );
  }
}