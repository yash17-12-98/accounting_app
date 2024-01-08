import 'package:flutter/material.dart';
import 'package:flutter/services.dart';

import '../resources/resources.dart';

class AppTextField extends StatelessWidget {
  final String? title;
  final String? hintText;
  final String? errorText;
  final Widget? prefixIcon;
  final Widget? suffixIcon;
  final FocusNode? focus;
  final bool autofocus;
  final bool isReadOnly;
  final TextInputType? keyboardType;
  final Function(String)? onChanged;
  final bool isSecure;
  final bool viewBorder;
  final TextEditingController? controller;
  final List<TextInputFormatter>? inputFormatters;
  final TextInputAction? textInputAction;
  final String? Function(String?)? validator;
  final void Function()? onTap;
  final Function(String)? onFieldSubmitted;
  final Color? shadowColor;
  final double elevation;

  const AppTextField(
      {Key? key,
      this.validator,
      this.title,
      this.controller,
      this.hintText,
      this.onChanged,
      this.inputFormatters,
      this.prefixIcon,
      this.keyboardType,
      this.suffixIcon,
      this.isSecure = false,
      this.focus,
      this.isReadOnly = false,
      this.onTap,
      this.onFieldSubmitted,
      this.textInputAction,
      this.autofocus = false,
      this.errorText,
      this.viewBorder = true,
      this.shadowColor,
      this.elevation = 0.0})
      : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Visibility(
            visible: title != null,
            child: Text(title.toString(),
                style: getMediumStyle(
                    color: ColorManager.darkGrey, fontSize: FontSize.s18))),
        const SizedBox(height: 5),
        Material(
          elevation: elevation,
          shape:
              RoundedRectangleBorder(borderRadius: BorderRadius.circular(10)),
          shadowColor: shadowColor,
          child: Container(
            decoration: BoxDecoration(
              borderRadius: BorderRadius.circular(
                10.0,
              ),
            ),
            child: TextFormField(
              autofocus: autofocus,
              readOnly: isReadOnly,
              validator: validator,
              onTap: onTap,
              inputFormatters: inputFormatters,
              autovalidateMode: AutovalidateMode.onUserInteraction,
              controller: controller,
              obscureText: isSecure,
              keyboardType: keyboardType,
              onChanged: onChanged,
              textInputAction: textInputAction ?? TextInputAction.done,
              textAlignVertical: TextAlignVertical.center,
              textAlign: TextAlign.start,
              autocorrect: false,
              style: Theme.of(context).textTheme.labelMedium,
              onFieldSubmitted: onFieldSubmitted,
              decoration: InputDecoration(
                  hintText: hintText,
                  errorText: errorText,
                  errorMaxLines: 2,
                  enabledBorder: OutlineInputBorder(
                    borderSide: viewBorder
                        ? BorderSide(width: 2.0, color: ColorManager.lightGrey)
                        : BorderSide.none,
                    borderRadius: BorderRadius.circular(10.0),
                  ),
                  focusedBorder: OutlineInputBorder(
                    borderSide: viewBorder
                        ? BorderSide(width: 2.0, color: ColorManager.primary)
                        : BorderSide.none,
                    borderRadius: BorderRadius.circular(10.0),
                  ),
                  errorBorder: OutlineInputBorder(
                    borderSide: viewBorder
                        ? BorderSide(width: 2.0, color: ColorManager.error)
                        : BorderSide.none,
                    borderRadius: BorderRadius.circular(10.0),
                  ),
                  focusedErrorBorder: OutlineInputBorder(
                    borderSide: viewBorder
                        ? BorderSide(width: 2.0, color: ColorManager.error)
                        : BorderSide.none,
                    borderRadius: BorderRadius.circular(10.0),
                  ),
                  prefixIcon: prefixIcon,
                  suffixIcon: suffixIcon),
            ),
          ),
        ),
      ],
    );
  }
}
