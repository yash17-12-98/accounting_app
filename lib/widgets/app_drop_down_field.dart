import 'package:accounting_app/app/extensions.dart';
import 'package:flutter/material.dart';

import '../resources/resources.dart';

class AppDropDownField<T> extends StatelessWidget {
  final String? title;
  final String? hint;
  final T? selectedValue;
  final List<DropdownMenuItem<T>>? items;

  const AppDropDownField(
      {super.key, this.selectedValue, this.items, this.title, this.hint});

  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Text(title.orEmpty(),
            style: getMediumStyle(
                color: ColorManager.darkGrey, fontSize: FontSize.s18)),
        const SizedBox(height: 5),
        Material(
            elevation: 10,
            shape:
                RoundedRectangleBorder(borderRadius: BorderRadius.circular(10)),
            child: DropdownButtonFormField<T>(
                hint: Text(
                  hint.orEmpty(),
                  style: getRegularStyle(
                      color: ColorManager.lightGrey, fontSize: FontSize.s14),
                ),
                decoration: InputDecoration(
                  enabledBorder: OutlineInputBorder(
                    borderSide: BorderSide(color: ColorManager.white, width: 2),
                    borderRadius: BorderRadius.circular(20),
                  ),
                  border: OutlineInputBorder(
                    borderSide: BorderSide(color: ColorManager.white, width: 2),
                    borderRadius: BorderRadius.circular(20),
                  ),
                ),
                value: selectedValue,
                onChanged: (T? newValue) {},
                items: items)),
      ],
    );
  }
}
