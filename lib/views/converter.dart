import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:formdev/apps/controller/converter_controller.dart';
import 'package:formdev/core/widgets/fd_appbar.dart';
import 'package:formdev/core/widgets/fd_form.dart';
import 'package:get/get.dart';

class Converter extends GetView<ConverterController> {
  const Converter({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: FdAppbar(
        titleBar: FdAppTitle(title: "Converter"),
        onBack: IconButton(icon: Icon(Icons.arrow_back), onPressed: () => controller.onClickBack()),
      ),
      body: Padding(
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
                    value: controller.selectedConverter.value,
                    items: controller.opsiConverter,
                    onChange: (value) => controller.onChangeOpsi(value),
                  ),
                ),
                SizedBox(height: 20),
                Row(
                  children: [
                    Expanded(
                      flex: 1,
                      child: Column(
                        children: [
                          Obx(
                            () => FdDropdown(
                              value: controller.selectedUkuranFrom.value,
                              items: controller.opsiUkuranDataFrom,
                              onChange: (value) => controller.onChangeSubOpsi("from", value),
                            ),
                          ),
                          SizedBox(height: 20),
                          FdTextForm(
                            labelText: "Nilai",
                            controller: controller.txtFrom,
                            inputFormatters: [FilteringTextInputFormatter.digitsOnly],
                            onChange: (value) => controller.onHitungKonversi("from", double.tryParse(value) ?? 0),
                          ),
                        ],
                      ),
                    ),
                    SizedBox(width: 10),
                    Expanded(
                      flex: 1,
                      child: Column(
                        children: [
                          Obx(
                            () => FdDropdown(
                              value: controller.selectedUkuranTo.value,
                              items: controller.opsiUkuranDataTo,
                              onChange: (value) => controller.onChangeSubOpsi("to", value),
                            ),
                          ),
                          SizedBox(height: 20),
                          FdTextForm(
                            labelText: "Nilai",
                            controller: controller.txtTo,
                            inputFormatters: [FilteringTextInputFormatter.digitsOnly],
                            onChange: (value) => controller.onHitungKonversi("to", double.tryParse(value) ?? 0),
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
    );
  }
}
