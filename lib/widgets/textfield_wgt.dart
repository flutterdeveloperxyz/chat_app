import 'package:flutter/material.dart';

class CustomTextField extends StatelessWidget {
  final String hintText;
  final TextEditingController inputController;
  final bool isPwd;
  final TextInputType textInputType;
  const CustomTextField({super.key, required this.hintText, this.isPwd = false, required this.textInputType, required this.inputController});

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(horizontal: 24),
      child: TextField(
        controller: inputController,
        obscureText: isPwd,
        decoration: InputDecoration(
          enabledBorder: OutlineInputBorder(
            borderSide: BorderSide(color: Theme.of(context).colorScheme.tertiary),
          ),
          focusedBorder: OutlineInputBorder(borderSide: BorderSide(color: Theme.of(context).colorScheme.primary)),
          filled: true,
          fillColor: Theme.of(context).colorScheme.secondary,
          hintText: hintText,
          hintStyle: TextStyle(fontWeight: FontWeight.w400, color: Theme.of(context).colorScheme.inversePrimary),
        ),
        keyboardType: textInputType,
      ),
    );
  }
}