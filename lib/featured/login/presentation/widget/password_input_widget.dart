import 'package:findora/core/language/app_strings.dart';
import 'package:findora/core/language/locales.dart';
import 'package:findora/core/validators.dart';
import 'package:findora/shared/customWidgets/custom_text_field.dart';
import 'package:flutter/material.dart';

class PasswordInputWidget extends StatelessWidget {
  final TextEditingController passwordController;

  const PasswordInputWidget({super.key, required this.passwordController});

  @override
  Widget build(BuildContext context) {
    return CustomTextField(
      hint: context.t.authPasswordHint,
      controller: passwordController,
      label: context.t.authPassword,
      obscure: true,
      validator: Validators.validatePassword,
    );
  }
}
