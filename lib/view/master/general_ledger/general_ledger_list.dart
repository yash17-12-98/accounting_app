import 'package:accounting_app/app/boxes.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:hive_flutter/hive_flutter.dart';

import '../../../controller/controller.dart';
import '../../../model/model.dart';
import '../../../resources/resources.dart';

class GeneralLedgerList extends GetView<GeneralLedgerListController> {
  const GeneralLedgerList({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        actions: [
          Padding(
            padding: const EdgeInsets.only(top: 10.0, right: 20.0),
            child: Material(
              type: MaterialType.transparency,
              child: Ink(
                decoration: BoxDecoration(
                    color: ColorManager.lightPurple,
                    borderRadius: BorderRadius.circular(10.0)),
                child: InkWell(
                  onTap: () => Get.toNamed(Routes.generalLedgerFormRoute),
                  child: const Padding(
                    padding: EdgeInsets.all(10.0),
                    child: Icon(
                      Icons.add,
                      size: 25.0,
                      color: Colors.black,
                    ),
                  ),
                ),
              ),
            ),
          ),
        ],
      ),
      body: Padding(
        padding: const EdgeInsets.symmetric(horizontal: 20.0),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            const SizedBox(height: 10),
            Text('Form Details',
                style: getSemiBoldStyle(
                    color: ColorManager.black, fontSize: FontSize.s24)),
            const SizedBox(height: 20),
            ValueListenableBuilder<Box<GeneralLedger>>(
              valueListenable: HiveBox.generalLedgerBox().listenable(),
              builder: (BuildContext context, box, Widget? child) {
                var data = box.values.toList().cast<GeneralLedger>();
                return data.isNotEmpty
                    ? ListView.separated(
                        shrinkWrap: true,
                        reverse: true,
                        itemCount: data.length,
                        itemBuilder: (BuildContext context, int index) {
                          final generalLedger = data[index];
                          return ListTile(
                            title: Text(generalLedger.generalLedgerName),
                            shape: RoundedRectangleBorder(
                              side: const BorderSide(
                                  color: Colors.black, width: 1),
                              borderRadius: BorderRadius.circular(5),
                            ),
                          );
                        },
                        separatorBuilder: (BuildContext context, int index) =>
                            const SizedBox(height: 10))
                    : const Center(child: Text(AppStrings.noDataFound));
              },
            ),
          ],
        ),
      ),
    );
  }
}
