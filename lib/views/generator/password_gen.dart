import 'package:flutter/material.dart';
import 'package:formdev/apps/controller/generator/password_gen_controller.dart';
import 'package:formdev/core/widgets/fd_appbar.dart';
import 'package:formdev/core/widgets/fd_button.dart';
import 'package:formdev/core/widgets/fd_form.dart';
import 'package:get/get.dart';

class PasswordGen extends GetView<PasswordGenController> {
  const PasswordGen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: FdAppbar(
        titleBar: FdAppTitle(title: "Password Generator"),
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
                        flex: 1,
                        child: Obx(
                          () => SwitchListTile(
                            value: controller.upper.value,
                            title: Text("Upper"),
                            onChanged: (value) => controller.onClickCharOpsi("upper", value),
                          ),
                        ),
                      ),
                      Expanded(
                        flex: 1,
                        child: Obx(
                          () => SwitchListTile(
                            value: controller.lower.value,
                            title: Text("Lower"),
                            onChanged: (value) => controller.onClickCharOpsi("lower", value),
                          ),
                        ),
                      ),
                    ],
                  ),
                  SizedBox(height: 20),
                  Row(
                    children: [
                      Expanded(
                        flex: 1,
                        child: Obx(
                          () => SwitchListTile(
                            value: controller.number.value,
                            title: Text("Number"),
                            onChanged: (value) => controller.onClickCharOpsi("number", value),
                          ),
                        ),
                      ),
                      Expanded(
                        flex: 1,
                        child: Obx(
                          () => SwitchListTile(
                            value: controller.symbols.value,
                            title: Text("Simbol"),
                            onChanged: (value) => controller.onClickCharOpsi("simbol", value),
                          ),
                        ),
                      ),
                    ],
                  ),
                  SizedBox(height: 20),
                  FdTextForm(labelText: "Password", controller: controller.txtHasil, readOnly: true),
                  SizedBox(height: 20),
                  FdButton(labelText: "Generate", onClick: () => controller.onClickGenerate()),
                ],
              ),
            ),
          ),
        ),
      ),
    );
  }
}
