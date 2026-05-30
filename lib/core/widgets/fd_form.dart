import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:formdev/apps/models/dropdown_model.dart';
import 'package:formdev/core/utils/string_utils.dart';

class FdDropdown<T> extends StatelessWidget {
  final T value;
  final List<DropdownModel<T>> items;
  final ValueChanged<T?> onChange;
  final String? labelText;
  final IconData? prefixIcon;
  final IconData icon;
  final bool isEnable;

  const FdDropdown({
    required this.value,
    required this.items,
    required this.onChange,
    this.labelText,
    this.prefixIcon,
    this.icon = Icons.arrow_drop_down,
    this.isEnable = true,
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    final isValid = items.any((e) => e.value == value);

    return DropdownButtonFormField<T>(
      initialValue: isValid ? value : null,
      icon: Icon(icon),
      // dropdownColor:
      style: const TextStyle(color: Colors.white),
      decoration: InputDecoration(
        labelText: labelText,
        prefixIcon: StringUtils.isNotNullOrEmpty(prefixIcon) ? Icon(prefixIcon) : null,
        // labelStyle: const TextStyle(color: Colors.black, fontSize: 13),
        filled: true,
        // fillColor: const Color(0xFF0F1117),
        enabledBorder: OutlineInputBorder(borderRadius: BorderRadius.circular(10)),
        focusedBorder: OutlineInputBorder(borderRadius: BorderRadius.circular(10)),
        contentPadding: const EdgeInsets.symmetric(horizontal: 14, vertical: 14),
      ),
      items:
          items.map((e) {
            return DropdownMenuItem(value: e.value, child: Text(e.label));
          }).toList(),
      onChanged: isEnable ? onChange : null,
    );
  }
}

class FdTextForm extends StatelessWidget {
  final String labelText;
  final String? hintText;
  final TextInputType keyboardType;
  final TextEditingController controller;
  final IconData? prefixIcon;
  final bool readOnly;
  final bool obscureText;
  final int? maxLength;
  final int maxLines;
  final Function(String)? onChange;
  final List<TextInputFormatter>? inputFormatters;
  final FloatingLabelBehavior? labelBehavior;

  const FdTextForm({
    required this.labelText,
    required this.controller,
    this.hintText,
    this.keyboardType = TextInputType.text,
    this.prefixIcon,
    this.readOnly = false,
    this.obscureText = false,
    this.maxLength,
    this.maxLines = 1,
    this.onChange,
    this.inputFormatters,
    this.labelBehavior = FloatingLabelBehavior.auto,
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    ColorScheme theme = Theme.of(context).colorScheme;
    return TextField(
      controller: controller,
      keyboardType: keyboardType,
      obscureText: obscureText,
      readOnly: readOnly,
      maxLength: maxLength,
      inputFormatters: inputFormatters,
      maxLines: maxLines,
      decoration: InputDecoration(
        labelText: labelText,
        floatingLabelBehavior: labelBehavior,
        hintText: hintText,
        prefixIcon: StringUtils.isNotNullOrEmpty(prefixIcon) ? Icon(prefixIcon) : null,
        filled: true,
        fillColor: readOnly ? theme.onInverseSurface : theme.inversePrimary,
        enabledBorder: OutlineInputBorder(borderRadius: BorderRadius.circular(10)),
        focusedBorder: OutlineInputBorder(borderRadius: BorderRadius.circular(10)),
        contentPadding: const EdgeInsets.symmetric(horizontal: 14, vertical: 14),
      ),
      onChanged: onChange,
    );
  }
}
