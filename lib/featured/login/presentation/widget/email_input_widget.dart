import 'package:findora/core/language/app_strings.dart';
import 'package:findora/core/language/locales.dart';
import 'package:findora/core/validators.dart';
import 'package:findora/shared/customWidgets/custom_text_field.dart';
import 'package:flutter/material.dart';

class EmailInputWidget extends StatelessWidget {
  final TextEditingController emailController;

  const EmailInputWidget({super.key, required this.emailController});

  @override
  Widget build(BuildContext context) {
    return CustomTextField(
      hint: context.t.authEmailHint,
      controller: emailController,
      label: context.t.authEmail,
      validator: Validators.validateEmail,
    );
  }
}
