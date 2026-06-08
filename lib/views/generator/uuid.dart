import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:formdev/apps/controller/generator/uuid_controller.dart';
import 'package:formdev/core/utils/string_utils.dart';
import 'package:formdev/core/widgets/fd_appbar.dart';
import 'package:formdev/core/widgets/fd_button.dart';
import 'package:formdev/core/widgets/fd_form.dart';
import 'package:get/get.dart';

class Uuid extends GetView<UuidController> {
  const Uuid({super.key});

  @override
  Widget build(BuildContext context) {
    ColorScheme theme = Theme.of(context).colorScheme;
    return Scaffold(
      appBar: FdAppbar(titleBar: FdAppTitle(title: "UUID Generator")),
      body: SafeArea(
        child: SingleChildScrollView(
          child: Padding(
            padding: EdgeInsets.all(20),
            child: Card(
              // color: AppColors.primaryDark,
              child: Padding(
                padding: EdgeInsets.all(20),
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  mainAxisSize: MainAxisSize.min,
                  children: [
                    Row(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Expanded(
                          flex: 3,
                          child: Obx(
                            () => FdDropdown(
                              labelText: "Versi UUID",
                              value: controller.selectedDefaultOpsiUuid.value,
                              items: controller.opsiUuid,
                              onChange: (value) => controller.onChangeOpsi(value),
                            ),
                          ),
                        ),
                        SizedBox(width: 15),
                        Obx(() {
                          if (controller.showJml.value) {
                            return Expanded(
                              flex: 1,
                              child: FdTextForm(
                                labelText: "Jumlah",
                                controller: controller.txtJumlah,
                                inputFormatters: [FilteringTextInputFormatter.digitsOnly],
                                onChange: (value) => controller.jumlah = StringUtils.readDataInt(value),
                              ),
                            );
                          } else {
                            return Expanded(
                              flex: 1,
                              child: FdTextForm(
                                labelText: "Label",
                                controller: controller.txtCustomName,
                                onChange: (value) => controller.customName = value,
                              ),
                            );
                          }
                        }),
                      ],
                    ),
                    SizedBox(height: 25),
                    FdTextForm(
                      labelText: "Output",
                      controller: controller.txtOutput,
                      readOnly: true,
                      labelBehavior: FloatingLabelBehavior.always,
                      maxLines: 5,
                    ),
                    SizedBox(height: 25),
                    Row(
                      children: [
                        FdButton(
                          labelText: "Generate",
                          icon: Icons.refresh,
                          onClick: () => controller.onClickGenerate(),
                        ),
                        SizedBox(width: 10),
                        FdButton(
                          labelText: "Reset",
                          icon: Icons.delete,
                          buttonColor: theme.error,
                          textColor: theme.onError,
                          onClick: () => controller.onClickReset(),
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
