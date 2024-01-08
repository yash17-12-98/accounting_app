import 'package:accounting_app/widgets/app_text_field.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';

import '../../controller/controller.dart';
import '../../resources/resources.dart';

class DivisionForm extends GetView<DivisionController> {
  const DivisionForm({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        body: SafeArea(
      child: Column(
        children: [
          Text(
            AppStrings.form,
            style:
                getBoldStyle(color: ColorManager.black, fontSize: FontSize.s12),
          ),
          AppTextField(
            title: AppStrings.name,
            controller: controller.divisionNameController,
          )
        ],
      ),
    ));
  }
}
