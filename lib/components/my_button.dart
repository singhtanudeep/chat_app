// ignore_for_file: must_be_immutable

import "package:flutter/material.dart";

class MyButton extends StatelessWidget {
  final String buttonText;
  void Function()? onTap;
  MyButton({super.key, required this.buttonText, required this.onTap});

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: onTap,
      child: Container(
        decoration: BoxDecoration(
          color: Theme.of(context).colorScheme.secondary,
          borderRadius: BorderRadius.circular(4),
        ),
        padding: const EdgeInsets.all(15),
        child: Text(
          buttonText,
          style: TextStyle(
              fontSize: 16,
              fontWeight: FontWeight.w600,
              color: Theme.of(context).colorScheme.primary),
        ),
      ),
    );
  }
}
