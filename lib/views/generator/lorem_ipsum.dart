import 'package:flutter/material.dart';
import 'package:formdev/apps/controller/generator/lorem_ipsum_controller.dart';
import 'package:formdev/core/widgets/fd_appbar.dart';
import 'package:formdev/core/widgets/fd_form.dart';
import 'package:get/get.dart';

class LoremIpsum extends GetView<LoremIpsumController> {
  const LoremIpsum({super.key});

  @override
  Widget build(BuildContext context) {
    ColorScheme theme = Theme.of(context).colorScheme;
    return Scaffold(
      appBar: FdAppbar(
        titleBar: FdAppTitle(title: "Lorem Ipsum Generator"),
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
                    Obx(
                      () => FdDropdown(
                        labelText: "Opsi Lorem",
                        value: controller.selectedOpsiLorem.value,
                        items: controller.opsiLorem,
                        onChange: (value) => controller.onChangeOpsi(value),
                      ),
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
