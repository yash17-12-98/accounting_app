import 'package:accounting_app/app/extensions.dart';
import 'package:flutter/material.dart';

import '../resources/resources.dart';

class AppDrawerElement extends StatelessWidget {
  final String title;
  final void Function()? onTap;

  const AppDrawerElement({super.key, required this.title, this.onTap});

  @override
  Widget build(BuildContext context) {
    return ListTile(
      shape: Border(
        bottom: BorderSide(color: ColorManager.lightGrey),
      ),
      splashColor: ColorManager.splashPrimary,
      visualDensity: const VisualDensity(vertical: -2),
      onTap: onTap,
      title: Text(title.orEmpty(),
          style: getRegularStyle(
              color: ColorManager.black, fontSize: FontSize.s20)),
    );
  }
}
