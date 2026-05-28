import 'package:flutter/material.dart';

class MenuModel {
  final IconData? icon;
  final String label;
  final String deskripsi;
  final Function() onTap;

  const MenuModel({required this.label, required this.deskripsi, required this.onTap, this.icon});
}
