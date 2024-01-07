import 'package:flutter/material.dart';
import 'package:get/get.dart';

import '../controller/controller.dart';
import '../resources/resources.dart';

class DashBoard extends GetView<DashboardController> {
  const DashBoard({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
          leading: Builder(
            builder: (BuildContext context) {
              return IconButton(
                icon: Image.asset(ImageAssets.appNavigationIcon),
                onPressed: () => Scaffold.of(context).openDrawer(),
                tooltip: MaterialLocalizations.of(context).openAppDrawerTooltip,
              );
            },
          ),
        ),
        drawer: Drawer(
          child: ListView(
            children: [
              ListTile(
                  title: Text(AppStrings.master,
                      style: Theme.of(context).textTheme.labelLarge))
            ],
          ),
        ),
        body: Container());
  }
}
