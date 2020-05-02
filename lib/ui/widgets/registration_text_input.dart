import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:hotelbooking/utils/constants.dart';
import 'package:string_validator/string_validator.dart';

class CustomInputField extends StatelessWidget {

  CustomInputField(
      {this.onInputChanged, this.type, this.hint, this.hiddenInput});

  final String hint;
  final TextInputType type;
  final Function onInputChanged;
  final bool hiddenInput;

  @override
  Widget build(BuildContext context) {
    return TextField(
      obscureText: hiddenInput,
      keyboardType: type,
      textAlign: TextAlign.center,
      onChanged: (value) {
        if (validateInput(value)) onInputChanged(value);
      },
      decoration: kTextFieldDecoration.copyWith(hintText: hint),
    );
  }

  bool validateInput(String value) {
    switch (type.index) {
      case 5 :
        return isEmail(value);
        break;
      case 3 :
        return isNumeric(value);
        break;
      case 0 :
        if (hiddenInput)
          return true;
        else
          return isAlphanumeric(value);
        break;
      default :
        return true;
    }
  }
}
