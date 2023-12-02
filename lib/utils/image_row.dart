import 'package:dotted_border/dotted_border.dart';
import 'package:flutter/material.dart';
class ImageRow extends StatelessWidget {
  const ImageRow({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Row(
      children: [
        Container(
          margin:
          const EdgeInsets.only(left: 10),
          height: 80,
          width: 80,
          child: DottedBorder(
            radius: const Radius.circular(30),
            color: const Color(0xffb5cff8),
            strokeWidth: 1,
            child: const Center(
              child: Icon(
                Icons.add,
                color: Colors.white,
              ),
            ),
          ),
        ),
        const SizedBox(
          width: 10,
        ),
        Container(
          height: 80,
          width: 80,
          decoration: BoxDecoration(
            borderRadius:
            BorderRadius.circular(10),
            image: const DecorationImage(
              image: NetworkImage(
                  'https://webneel.com/wallpaper/sites/default/files/images/08-2018/3-nature-wallpaper-mountain.1280.jpg'),
              fit: BoxFit.cover,
            ),
          ),
        ),
        const SizedBox(
          width: 10,
        ),
        Container(
          height: 80,
          width: 80,
          decoration: BoxDecoration(
            borderRadius:
            BorderRadius.circular(10),
            image: const DecorationImage(
              image: NetworkImage(
                'https://webneel.com/wallpaper/sites/default/files/images/06-2013/beautiful%20sky%20tree%20wallpaper.jpg',
              ),
              fit: BoxFit.cover,
            ),
          ),
        ),
      ],
    );
  }
}