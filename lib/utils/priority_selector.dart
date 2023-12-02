import 'package:flutter/material.dart';

import '../pages/second_page.dart';

class PrioritySelector extends StatefulWidget {
  final Cont currentCont;
  final Function(Cont) onPrioritySelected;

  PrioritySelector({
    required this.currentCont,
    required this.onPrioritySelected,
    Key? key,
  }) : super(key: key);

  @override
  State<PrioritySelector> createState() => _PrioritySelectorState();
}

class _PrioritySelectorState extends State<PrioritySelector> {

  void handleTap(Cont priority) {
  widget.onPrioritySelected(priority);
  setState(() {});
}
  @override
  Widget build(BuildContext context) {
    return Container(
      width: MediaQuery.of(context).size.width * 0.95,
      height: 75,
      decoration: BoxDecoration(
        borderRadius: BorderRadius.circular(15),
        color: const Color(0xff313131),
      ),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.center,

        children: [
          for (Cont priority in Cont.values)
            GestureDetector(
              onTap: () => handleTap(priority),
              child: AnimatedContainer(
                margin: const EdgeInsets.only(left: 10),
                duration: const Duration(milliseconds: 500),
                decoration: BoxDecoration(
                  color: widget.currentCont == priority ? const Color(0xffACC5EC) : Colors.black,
                  borderRadius: BorderRadius.circular(20),
                ),
                height: 60,
                width: 110,
                child: Center(
                  child: Text(
                    priority.toString().split('.')[1],
                    style: TextStyle(
                      color:
                          widget.currentCont == priority ? Colors.black : Colors.white,
                    ),
                  ),
                ),
              ),
            ),
        ],
      ),
    );
  }
}


