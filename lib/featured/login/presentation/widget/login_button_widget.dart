import 'package:findora/core/language/app_strings.dart';
import 'package:findora/core/language/locales.dart';
import 'package:findora/featured/home/presentation/pages/home_page.dart';
import 'package:findora/shared/customWidgets/primary_button_widget.dart';
import 'package:findora/utilities/extentions/extensions.dart';
import 'package:flutter/material.dart';
import 'package:go_router/go_router.dart';

class LoginButtonWidget extends StatelessWidget {
  const LoginButtonWidget({super.key});

  @override
  Widget build(BuildContext context) {
    final colors = context.colors;
    return PrimaryButtonWidget(
      onTap: () {
        context.goNamed(HomePage.routeName);
      },
      title: context.t.authLogIn,
    );
  }
}
