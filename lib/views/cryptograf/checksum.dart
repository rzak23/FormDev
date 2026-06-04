import 'package:flutter/material.dart';
import 'package:formdev/apps/controller/cryptograf/checksum_controller.dart';
import 'package:formdev/core/widgets/fd_appbar.dart';
import 'package:formdev/core/widgets/fd_button.dart';
import 'package:formdev/core/widgets/fd_form.dart';
import 'package:get/get.dart';

class Checksum extends GetView<ChecksumController> {
  const Checksum({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: FdAppbar(
        titleBar: FdAppTitle(title: "Checksum"),
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
                  Obx(
                    () => FdDropdown(
                      value: controller.selectedOpsi.value,
                      items: controller.opsiHash,
                      onChange: (value) => controller.onChangOpsi(value),
                    ),
                  ),
                  SizedBox(height: 20),
                  SizedBox(
                    width: double.infinity,
                    child: FdButton(labelText: "Pilih File", onClick: () => controller.onClickPilihFile()),
                  ),
                  SizedBox(height: 20),
                  FdTextForm(labelText: "Hasil", controller: controller.txtHasil, readOnly: true),
                ],
              ),
            ),
          ),
        ),
      ),
    );
  }
}
