import 'package:accounting_app/app/extensions.dart';
import 'package:flutter/material.dart';

import '../resources/resources.dart';

class AppDropDownField<T> extends StatelessWidget {
  final String? title;
  final String? hint;
  final T? selectedValue;
  final List<DropdownMenuItem<T>>? items;
  final String? Function(T?)? validator;
  final void Function(T?)? onChanged;

  const AppDropDownField(
      {super.key,
      this.selectedValue,
      this.items,
      this.title,
      this.hint,
      this.onChanged,
      this.validator});

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
                autovalidateMode: AutovalidateMode.onUserInteraction,
                hint: Text(
                  hint.orEmpty(),
                  style: getRegularStyle(
                      color: ColorManager.lightGrey, fontSize: FontSize.s14),
                ),
                decoration: InputDecoration(
                  enabledBorder: OutlineInputBorder(
                    borderSide: BorderSide.none,
                    borderRadius: BorderRadius.circular(20),
                  ),
                  border: OutlineInputBorder(
                    borderSide: BorderSide.none,
                    borderRadius: BorderRadius.circular(20),
                  ),
                  errorBorder: OutlineInputBorder(
                    borderSide: BorderSide.none,
                    borderRadius: BorderRadius.circular(20),
                  ),
                  focusedBorder: OutlineInputBorder(
                    borderSide: BorderSide.none,
                    borderRadius: BorderRadius.circular(20),
                  ),
                ),
                validator: validator,
                value: selectedValue,
                onChanged: onChanged,
                items: items)),
      ],
    );
  }
}
