import 'package:flutter/material.dart';
import 'package:formdev/apps/controller/generator/uuid_controller.dart';
import 'package:formdev/core/theme/app_colors.dart';
import 'package:formdev/core/widgets/fd_appbar.dart';
import 'package:get/get.dart';

class Uuid extends GetView<UuidController> {
  const Uuid({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: FdAppbar(titleBar: FdAppTitle(title: "UUID Generator")),
      body: SafeArea(
        child: SingleChildScrollView(
          child: Padding(
            padding: EdgeInsets.all(20),
            child: Card(
              color: AppColors.primaryDark,
              child: Padding(
                padding: EdgeInsets.all(20),
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  mainAxisSize: MainAxisSize.min,
                  children: [],
                ),
              ),
            ),
          ),
        ),
      ),
    );
  }
}
