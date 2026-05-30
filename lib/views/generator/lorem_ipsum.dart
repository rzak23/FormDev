import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:formdev/apps/controller/generator/lorem_ipsum_controller.dart';
import 'package:formdev/core/utils/string_utils.dart';
import 'package:formdev/core/widgets/fd_appbar.dart';
import 'package:formdev/core/widgets/fd_button.dart';
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
                    SizedBox(height: 20),
                    Row(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Expanded(
                          flex: 1,
                          child: Obx(
                            () => FdTextForm(
                              labelText: "Jumlah Kata",
                              controller: controller.txtJmlKata,
                              readOnly: controller.disableKata.value,
                              inputFormatters: [FilteringTextInputFormatter.digitsOnly],
                              onChange: (value) => controller.jlmKata.value = StringUtils.readDataInt(value),
                            ),
                          ),
                        ),
                        SizedBox(width: 5),
                        Expanded(
                          flex: 1,
                          child: Obx(
                            () => FdTextForm(
                              labelText: "Jumlah Kalimat",
                              controller: controller.txtJmlKalimat,
                              readOnly: controller.disableKalimat.value,
                              inputFormatters: [FilteringTextInputFormatter.digitsOnly],
                              onChange: (value) => controller.jmlKalimat.value = StringUtils.readDataInt(value),
                            ),
                          ),
                        ),
                        SizedBox(width: 5),
                        SizedBox(width: 5),
                        Expanded(
                          flex: 1,
                          child: Obx(
                            () => FdTextForm(
                              labelText: "Jumlah Paragraf",
                              controller: controller.txtJmlParagraf,
                              readOnly: controller.disableParagraf.value,
                              inputFormatters: [FilteringTextInputFormatter.digitsOnly],
                              onChange: (value) => controller.jmlParagraf.value = StringUtils.readDataInt(value),
                            ),
                          ),
                        ),
                      ],
                    ),
                    SizedBox(height: 20),
                    FdTextForm(
                      labelText: "Hasil",
                      controller: controller.txtHasil,
                      readOnly: true,
                      maxLines: 5,
                      labelBehavior: FloatingLabelBehavior.always,
                    ),
                    SizedBox(height: 20),
                    Row(
                      children: [
                        FdButton(labelText: "Generate", onClick: () => controller.onClickGenerate()),
                        SizedBox(width: 8),
                        FdButton(
                          labelText: "Reset",
                          textColor: theme.onError,
                          buttonColor: theme.error,
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
