import 'package:flutter/material.dart';
import 'package:get/get.dart';

import '../controller/controller.dart';
import '../resources/resources.dart';
import '../widgets/widget.dart';

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
              const SizedBox(height: 5),
              ExpansionTile(
                shape: const RoundedRectangleBorder(side: BorderSide.none),
                collapsedBackgroundColor: ColorManager.tileGrey,
                title: Text(AppStrings.master,
                    style: getSemiBoldStyle(
                        color: ColorManager.black, fontSize: FontSize.s18)),
                children: [
                  AppDrawerElement(
                      title: AppStrings.division,
                      onTap: () => controller.onDrawerTap(0)),
                  AppDrawerElement(
                      title: AppStrings.costCentre,
                      onTap: () => controller.onDrawerTap(1)),
                  AppDrawerElement(
                      title: AppStrings.ledgerType,
                      onTap: () => controller.onDrawerTap(2)),
                  AppDrawerElement(
                      title: AppStrings.mainSchedule,
                      onTap: () => controller.onDrawerTap(3)),
                  AppDrawerElement(
                      title: AppStrings.subSchedule,
                      onTap: () => controller.onDrawerTap(4)),
                  AppDrawerElement(
                      title: AppStrings.ledgerGroup,
                      onTap: () => controller.onDrawerTap(5)),
                  AppDrawerElement(
                      title: AppStrings.generalLedger,
                      onTap: () => controller.onDrawerTap(6)),
                  AppDrawerElement(
                      title: AppStrings.voucherType,
                      borderVisible: false,
                      onTap: () => controller.onDrawerTap(7)),
                ],
              ),
              const SizedBox(height: 10),
              AppDrawerElement(
                title: AppStrings.logOut,
                onTap: controller.onLogout,
                tileColor: ColorManager.tileGrey,
                borderVisible: false,
              )
            ],
          ),
        ),
        body: SafeArea(child: Container()));
  }
}
