import 'package:flutter/material.dart';
import 'package:formdev/apps/controller/cryptograf/hash_generator_controller.dart';
import 'package:formdev/core/widgets/fd_appbar.dart';
import 'package:formdev/core/widgets/fd_button.dart';
import 'package:formdev/core/widgets/fd_form.dart';
import 'package:get/get.dart';

class HashGenerator extends GetView<HashGeneratorController> {
  const HashGenerator({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: FdAppbar(
        titleBar: FdAppTitle(title: "Hash Generator"),
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
                      Expanded(
                        flex: 3,
                        child: FdTextForm(
                          labelText: "Text",
                          controller: controller.txtInput,
                          onChange: (value) => controller.input = value,
                        ),
                      ),
                    ],
                  ),
                  SizedBox(height: 20),
                  FdTextForm(labelText: "MD5", controller: controller.txtHasilMD5, readOnly: true),
                  SizedBox(height: 20),
                  FdTextForm(labelText: "SHA1", controller: controller.txtHasilSHA1, readOnly: true),
                  SizedBox(height: 20),
                  FdTextForm(labelText: "SHA256", controller: controller.txtHasilSHA256, readOnly: true),
                  SizedBox(height: 20),
                  FdTextForm(labelText: "SHA512", controller: controller.txtHasilSHA512, readOnly: true),
                  SizedBox(height: 20),
                  FdButton(labelText: "Hash", onClick: () => controller.onClickHash()),
                ],
              ),
            ),
          ),
        ),
      ),
    );
  }
}
