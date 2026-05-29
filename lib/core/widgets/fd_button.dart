import 'package:flutter/material.dart';
import 'package:formdev/core/utils/string_utils.dart';

class FdButton extends StatelessWidget {
  final String labelText;
  final IconData? icon;
  final double iconSize;
  final double fontSize;
  final Color? textColor;
  final Color? buttonColor;
  final Function() onClick;

  const FdButton({
    required this.labelText,
    required this.onClick,
    this.icon,
    this.iconSize = 18,
    this.fontSize = 15,
    this.textColor,
    this.buttonColor,
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return ElevatedButton(
      style: ElevatedButton.styleFrom(
        elevation: 0,
        padding: const EdgeInsets.symmetric(horizontal: 8, vertical: 4),
        shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(12)),
        backgroundColor: buttonColor,
      ),
      onPressed: onClick,
      child: Row(
        mainAxisSize: MainAxisSize.min,
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          Flexible(
            child: Text(
              labelText,
              style: TextStyle(fontSize: fontSize, fontWeight: FontWeight.w600, letterSpacing: 0.5, color: textColor),
              overflow: TextOverflow.ellipsis,
              maxLines: 1,
            ),
          ),
          if (StringUtils.isNotNullOrEmpty(icon)) ...[SizedBox(width: 8), Icon(icon, size: iconSize)],
        ],
      ),
    );
  }
}
