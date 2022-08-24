import 'package:flutter/material.dart';

class EmojiActionBtn extends StatelessWidget {
  const EmojiActionBtn({
    Key? key,
    this.color,
    required this.emoji,
  }) : super(key: key);

  final Color? color;
  final String emoji;

  @override
  Widget build(BuildContext context) {
    return InkWell(
        onTap: () {},
        child: DecoratedBox(
          decoration: BoxDecoration(
              color: color, borderRadius: BorderRadius.circular(10)),
          child: Row(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Text(
                emoji,
                style: const TextStyle(
                  fontSize: 40,
                ),
              ),
            ],
          ),
        ));
  }
}
