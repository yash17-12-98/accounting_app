import 'package:accounting_app/widgets/app_drawer_element.dart';
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
          shape: RoundedRectangleBorder(
            borderRadius: BorderRadius.circular(5.0),
          ),
          child: ListView(
            padding: const EdgeInsets.symmetric(
                horizontal: AppPadding.p10, vertical: AppPadding.p30),
            children: [
              Align(
                  alignment: Alignment.centerLeft,
                  child: IconButton(
                      onPressed: () => Get.back(),
                      icon: const Icon(Icons.arrow_back))),
              ExpansionTile(
                shape: const RoundedRectangleBorder(side: BorderSide.none),
                collapsedBackgroundColor: ColorManager.splashPrimary,
                title: Text(AppStrings.master,
                    style: getBoldStyle(
                        color: ColorManager.black, fontSize: FontSize.s25)),
                children: const [
                  AppDrawerElement(title: AppStrings.division),
                  AppDrawerElement(title: AppStrings.costCentre),
                  AppDrawerElement(title: AppStrings.ledgerType),
                  AppDrawerElement(title: AppStrings.mainSchedule),
                  AppDrawerElement(title: AppStrings.subSchedule),
                  AppDrawerElement(title: AppStrings.ledgerGroup),
                  AppDrawerElement(title: AppStrings.generalLedger),
                  AppDrawerElement(title: AppStrings.voucherType),
                ],
              ),
              AppDrawerElement(
                  title: AppStrings.logOut, onTap: controller.onLogout)
            ],
          ),
        ),
        body: Container());
  }
}
