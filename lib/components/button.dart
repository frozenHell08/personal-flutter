import 'package:flutter/material.dart';
import 'mymethods.dart';

class CustomButton extends StatelessWidget {
  final Function()? onTap;

  const CustomButton({
    super.key,
    required this.onTap,
  });

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: onTap,
      child: Container(
        padding: const EdgeInsets.all(15),
        margin: const EdgeInsets.symmetric(horizontal: 25),
        decoration: BoxDecoration(
          color: Colors.black,
          borderRadius: BorderRadius.circular(radius),
        ),
        child: const Center(
          child: Text(
            'Sign In',
            style: TextStyle(
              fontSize: 16,
              color: Colors.white
            ),
          ),
        ),
      ),
    );
  }
}