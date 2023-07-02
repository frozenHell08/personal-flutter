import 'package:flutter/material.dart';
import 'mymethods.dart';

class CustomTextField extends StatefulWidget {
  final TextEditingController controller;
  final String hintText;
  final bool obscureText;
  final String label;
  final IconData labelIcon;
  final double? iconAngle;

  const CustomTextField({
    super.key,
    required this.controller,
    required this.hintText,
    required this.obscureText,
    required this.label,
    required this.labelIcon,
    this.iconAngle,
  });

  @override
  State<CustomTextField> createState() => _CustomTextFieldState();
}

class _CustomTextFieldState extends State<CustomTextField> {
  bool isFocused = false;

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(horizontal: 25),
      child: Focus(
        onFocusChange: (hasFocus) {
          setState(() {
            isFocused = hasFocus;
          });
        },
        child: Builder(
          builder: (context) {
            final labelStyle = TextStyle(
              fontSize: 18,
              fontWeight: isFocused ? FontWeight.bold : FontWeight.normal,
            );
            
            return TextField(
              controller: widget.controller,
              obscureText: widget.obscureText,
              decoration: InputDecoration(
                labelText: widget.label,
                labelStyle: labelStyle,
      
                prefixIcon: Padding(
                  padding: const EdgeInsets.symmetric(horizontal: 8.0),
                  child: Transform.rotate(
                    angle: widget.iconAngle ?? 0.0,
                    child: Icon(widget.labelIcon),
                  ),
                ),
                prefixIconConstraints: const BoxConstraints(
                  minWidth: 0,
                ),
                enabledBorder: OutlineInputBorder(
                  borderSide: BorderSide(color: Colors.grey.shade700),
                  borderRadius: BorderRadius.circular(radius),
                ),
                focusedBorder: OutlineInputBorder(
                  borderSide: const BorderSide(color: Colors.white),
                  borderRadius: BorderRadius.circular(radius),
                ),
                fillColor: Colors.green.shade100,
                filled: true,
                hintText: widget.hintText,
                hintStyle: TextStyle(
                  color: Colors.green.shade100,
                ),
              ),
            );
          }
        ),
      ),
    );
  }
}
