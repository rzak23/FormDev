import 'package:flutter/material.dart';
import 'package:formdev/apps/controller/encoder/base64_image_controller.dart';
import 'package:formdev/core/widgets/fd_appbar.dart';
import 'package:formdev/core/widgets/fd_button.dart';
import 'package:formdev/core/widgets/fd_form.dart';
import 'package:get/get.dart';

class Base64Image extends GetView<Base64ImageController> {
  const Base64Image({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: FdAppbar(
        titleBar: FdAppTitle(title: "Base 64 Encoder/Decoder Image"),
        onBack: IconButton(icon: Icon(Icons.arrow_back), onPressed: () => controller.onClickBack()),
      ),
      body: SafeArea(
        child: SingleChildScrollView(
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
                        Expanded(
                          flex: 1,
                          child: Card(
                            child: FdTextForm(
                              labelText: "Base64",
                              controller: controller.txtHasil,
                              maxLines: 13,
                              labelBehavior: FloatingLabelBehavior.always,
                              readOnly: false,
                              onChange: (value) => controller.prosesDecoder(value),
                            ),
                          ),
                        ),
                        SizedBox(width: 10),
                        Expanded(
                          flex: 1,
                          child: Column(
                            children: [
                              SizedBox(
                                width: double.infinity,
                                child: FdButton(labelText: "Pilih File", onClick: () => controller.onClickPilihFile()),
                              ),
                              SizedBox(height: 20),
                              Obx(
                                () =>
                                    controller.image.value == null
                                        ? Placeholder()
                                        : Image.memory(controller.image.value!, width: 300),
                              ),
                            ],
                          ),
                        ),
                      ],
                    ),
                  ],
                ),
              ),
            ),
          ),
        ),
      ),
    );
  }
}
