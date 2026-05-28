import 'package:flutter/material.dart';
import 'package:formdev/core/theme/app_colors.dart';

class FdAppbar extends StatelessWidget implements PreferredSizeWidget {
  final Widget titleBar;
  final Widget? onBack;
  final List<Widget>? moreActions;

  const FdAppbar({required this.titleBar, this.onBack, this.moreActions, super.key});

  @override
  Size get preferredSize => const Size.fromHeight(kToolbarHeight);

  @override
  Widget build(BuildContext context) {
    return AppBar(elevation: 0, title: titleBar, leading: onBack, actions: moreActions);
  }
}

class FdAppTitle extends StatelessWidget {
  final String title;

  const FdAppTitle({required this.title, super.key});

  @override
  Widget build(BuildContext context) {
    return Text(
      title,
      style: TextStyle(
        color: AppColors.darkIcon,
        fontFamily: 'monospace',
        fontSize: 20,
        fontWeight: FontWeight.w700,
        letterSpacing: 1.2,
      ),
    );
  }
}
