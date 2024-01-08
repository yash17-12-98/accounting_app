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
                      onTap: controller.onDivisionTap),
                  AppDrawerElement(
                      title: AppStrings.costCentre,
                      onTap: controller.onCostCentreTap),
                  AppDrawerElement(
                      title: AppStrings.ledgerType,
                      onTap: controller.onLedgerTypeTap),
                  AppDrawerElement(title: AppStrings.mainSchedule),
                  AppDrawerElement(title: AppStrings.subSchedule),
                  AppDrawerElement(title: AppStrings.ledgerGroup),
                  AppDrawerElement(title: AppStrings.generalLedger),
                  const AppDrawerElement(
                      title: AppStrings.voucherType, borderVisible: false),
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
