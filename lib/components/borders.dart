import 'package:flutter/material.dart';

import '../constants/color_constants.dart';

OutlineInputBorder textFormFieldBorder() {
  return OutlineInputBorder(
    borderSide: BorderSide(color: ColorConstants.textFormBorderColor, width: 1.0),
    borderRadius: const BorderRadius.all(Radius.circular(4.0)),
  );
}

OutlineInputBorder textFormFieldFocusedErrorBorder() {
  return OutlineInputBorder(
    borderSide: BorderSide(color: ColorConstants.redText, width: 1.0),
    borderRadius: const BorderRadius.all(Radius.circular(4.0)),
  );
}

OutlineInputBorder searchBarBorder() {
  return OutlineInputBorder(
    borderSide: BorderSide(color: ColorConstants.textFormBorderColor, width: 1.0),
    borderRadius: const BorderRadius.all(Radius.circular(8.0)),
  );
}
