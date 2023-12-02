import 'package:flutter/material.dart';
class DateContainer extends StatelessWidget {
  final dynamic weekDay;
  final dynamic dayNumber;
  final dynamic onTap;
  final dynamic containerColor;
  final dynamic weekDayColor;
  final dynamic dayNumberColor;
  const DateContainer({super.key, this.weekDay, this.dayNumber, this.onTap, this.containerColor, this.weekDayColor, this.dayNumberColor});

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: onTap,
      child: Container(
        height: 88,
        width: 53,
        decoration: BoxDecoration(
          color: containerColor,
          borderRadius: BorderRadius.circular(15),
        ),
        child: Column(
          children: [
            SizedBox(
              height: 10,
            ),
            Text(
              weekDay,
              style: TextStyle(
                fontSize: 18,
                color: weekDayColor,
              ),
            ),
            SizedBox(
              height: 25,
            ),
            Text(
              dayNumber,
              style: TextStyle(
                fontWeight: FontWeight.bold,
                fontSize: 17,
                color: dayNumberColor,
              ),
            ),
          ],
        ),
      ),
    );
  }
}
