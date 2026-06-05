import 'package:flutter/material.dart';

/// Reusable input text field matching the design spec:
/// - radius 12px
/// - border 0.5px, color #E2E3E4
/// - padding: top/right/bottom 16px, left 20px
/// - background #FFFFFF
class CustomTextField extends StatelessWidget {
  const CustomTextField({
    super.key,
    this.controller,
    this.hintText,
    this.keyboardType,
    this.obscureText = false,
    this.onChanged,
    this.validator,
  });

  final TextEditingController? controller;
  final String? hintText;
  final TextInputType? keyboardType;
  final bool obscureText;
  final ValueChanged<String>? onChanged;
  final FormFieldValidator<String>? validator;

  static const Color _bgColor = Color(0xFFFFFFFF);
  static const Color _borderColor = Color(0xFFE2E3E4);

  @override
  Widget build(BuildContext context) {
    final border = OutlineInputBorder(
      borderRadius: BorderRadius.circular(12),
      borderSide: const BorderSide(color: _borderColor, width: 0.5),
    );

    return TextFormField(
      controller: controller,
      keyboardType: keyboardType,
      obscureText: obscureText,
      onChanged: onChanged,
      validator: validator,
      decoration: InputDecoration(
        hintText: hintText,
        hintStyle: const TextStyle(color: Color(0xFFA9ABAD)),
        filled: true,
        fillColor: _bgColor,
        contentPadding: const EdgeInsets.only(
          top: 16,
          right: 16,
          bottom: 16,
          left: 20,
        ),
        border: border,
        enabledBorder: border,
        focusedBorder: border,
      ),
    );
  }
}
