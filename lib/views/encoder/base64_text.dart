import 'package:flutter/material.dart';
import 'package:formdev/apps/controller/encoder/base64_text_controller.dart';
import 'package:formdev/core/widgets/fd_appbar.dart';
import 'package:formdev/core/widgets/fd_button.dart';
import 'package:formdev/core/widgets/fd_form.dart';
import 'package:get/get.dart';

class Base64Text extends GetView<Base64TextController> {
  const Base64Text({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: FdAppbar(
        titleBar: FdAppTitle(title: "Base64 Text Encoder/Decoder"),
        onBack: IconButton(icon: Icon(Icons.arrow_back), onPressed: () => controller.onClickBack()),
      ),
      body: SafeArea(
        child: Padding(
          padding: EdgeInsets.all(20),
          child: Card(
            child: Padding(
              padding: EdgeInsets.all(20),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                mainAxisSize: MainAxisSize.min,
                children: [
                  Row(
                    children: [
                      Obx(() => Text(controller.mode.value)),
                      SizedBox(width: 8),
                      Obx(
                        () => Switch(
                          value: controller.isEncoder.value,
                          onChanged: (value) => controller.onChangeMode(value),
                        ),
                      ),
                    ],
                  ),
                  SizedBox(height: 20),
                  FdTextForm(
                    labelText: "Input",
                    controller: controller.txtInput,
                    onChange: (value) => controller.input = value,
                  ),
                  SizedBox(height: 20),
                  FdTextForm(labelText: "Hasil", controller: controller.txtHasil, readOnly: true),
                  SizedBox(height: 20),
                  FdButton(labelText: "Proses", onClick: () => controller.onClickProses()),
                ],
              ),
            ),
          ),
        ),
      ),
    );
  }
}
