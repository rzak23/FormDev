import 'package:flutter/material.dart';
import 'package:formdev/apps/controller/main_menu_controller.dart';
import 'package:formdev/apps/models/menu_model.dart';
import 'package:formdev/core/widgets/fd_appbar.dart';
import 'package:formdev/core/widgets/fd_main.dart';
import 'package:get/get.dart';

class MainMenu extends GetView<MainMenuController> {
  const MainMenu({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: FdAppbar(titleBar: FdAppTitle(title: "Daftar Tools")),
      body: SafeArea(
        child: LayoutBuilder(
          builder: (context, constraints) {
            final width = constraints.maxWidth;
            final int crossAxisCount;

            if (width >= 1200) {
              crossAxisCount = 6;
            } else if (width >= 800) {
              crossAxisCount = 4;
            } else if (width >= 500) {
              crossAxisCount = 2;
            } else {
              crossAxisCount = 1;
            }

            return SingleChildScrollView(
              padding: EdgeInsets.all(width > 800 ? 32 : 20),
              child: Center(
                child: ConstrainedBox(
                  constraints: const BoxConstraints(maxWidth: 1100),
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Column(
                        children: [
                          GridView.builder(
                            shrinkWrap: true,
                            physics: const NeverScrollableScrollPhysics(),
                            gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(
                              crossAxisCount: crossAxisCount,
                              mainAxisSpacing: 14,
                              crossAxisSpacing: 14,
                              mainAxisExtent: 140,
                            ),
                            itemCount: _menuItems.length,
                            itemBuilder: (context, index) {
                              final menu = _menuItems[index];
                              return MenuCard(
                                label: menu.label,
                                deskripsi: menu.deskripsi,
                                onTap: menu.onTap,
                                icon: menu.icon,
                              );
                            },
                          ),
                        ],
                      ),
                    ],
                  ),
                ),
              ),
            );
          },
        ),
      ),
    );
  }

  List<MenuModel> get _menuItems => [
    MenuModel(
      label: "UUID Generator",
      deskripsi: "Pembuatan UUID",
      onTap: () => controller.onClickUuid(),
      icon: Icons.interests_outlined,
    ),
    MenuModel(
      label: "Lorem Ipsum",
      deskripsi: "Pembuatan text Lorem Ipsum",
      onTap: () => controller.onClickLorem(),
      icon: Icons.text_fields,
    ),
    MenuModel(
      label: "Nano ID Generator",
      deskripsi: "Pembuatan Nano ID",
      onTap: () => controller.onClickNano(),
      icon: Icons.numbers,
    ),
  ];
}
