import 'package:flutter/material.dart';
import 'package:formdev/apps/controller/generator/nanoid_gen_controller.dart';
import 'package:formdev/core/widgets/fd_appbar.dart';
import 'package:formdev/core/widgets/fd_button.dart';
import 'package:formdev/core/widgets/fd_form.dart';
import 'package:get/get.dart';

class NanoidGen extends GetView<NanoidGenController> {
  const NanoidGen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: FdAppbar(
        titleBar: FdAppTitle(title: "NanoID Generator"),
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
                          flex: 3,
                          child: FdDropdown(
                            value: controller.selectedOpsi.value,
                            items: controller.listOpsi,
                            onChange: (value) => controller.onChangeOpsi(value),
                          ),
                        ),
                        SizedBox(width: 15),
                        Expanded(
                          flex: 1,
                          child: FdTextForm(
                            labelText: "Panjang Karakter",
                            controller: controller.txtPanjangChar,
                            onChange: (value) => controller.panjangChar.value = int.tryParse(value) ?? 0,
                          ),
                        ),
                      ],
                    ),
                    SizedBox(height: 20),
                    FdTextForm(labelText: "Hasil", controller: controller.txtHasil, readOnly: true),
                    SizedBox(height: 20),
                    FdButton(labelText: "Generate", onClick: () => controller.onClickGenerate()),
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
