import 'package:flutter/material.dart';
import 'package:formdev/apps/controller/generator/qr_gen_controller.dart';
import 'package:formdev/core/widgets/fd_appbar.dart';
import 'package:formdev/core/widgets/fd_form.dart';
import 'package:get/get.dart';
import 'package:qr_flutter/qr_flutter.dart';

class QrGen extends GetView<QrGenController> {
  const QrGen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: FdAppbar(
        titleBar: FdAppTitle(title: "QR Generator"),
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
                  FdTextForm(
                    labelText: "Input",
                    controller: controller.txtInput,
                    onChange: (value) => controller.input.value = value,
                  ),
                  SizedBox(height: 20),
                  Obx(
                    () => Center(
                      child:
                          controller.input.value == ""
                              ? Placeholder()
                              : QrImageView(
                                data: controller.input.value,
                                version: QrVersions.auto,
                                size: 400,
                                gapless: false,
                                eyeStyle: QrEyeStyle(color: Colors.white),
                                dataModuleStyle: QrDataModuleStyle(color: Colors.white),
                              ),
                    ),
                  ),
                ],
              ),
            ),
          ),
        ),
      ),
    );
  }
}
