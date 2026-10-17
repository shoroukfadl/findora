import 'package:findora/Utilities/Constants/constants.dart';
import 'package:findora/core/language/app_strings.dart';
import 'package:findora/core/language/locales.dart';
import 'package:findora/featured/login/presentation/widget/email_input_widget.dart';
import 'package:findora/featured/login/presentation/widget/password_input_widget.dart';
import 'package:findora/featured/register/presentation/widget/have_account_widget.dart';
import 'package:findora/featured/register/presentation/widget/register_button_widget.dart';
import 'package:findora/featured/register/presentation/widget/register_header_widget.dart';
import 'package:findora/shared/customWidgets/custom_text_field.dart';
import 'package:findora/utilities/constants/enums.dart';
import 'package:findora/utilities/extentions/extensions.dart';
import 'package:flutter/material.dart';

class RegisterPage extends StatefulWidget {
  static String routeName = ScreenRoutes.register.name;
  const RegisterPage({super.key});

  @override
  State<RegisterPage> createState() => _RegisterPageState();
}

class _RegisterPageState extends State<RegisterPage> {
  late TextEditingController email, password, name;
  final _formKey = GlobalKey<FormState>();

  @override
  void initState() {
    super.initState();
    email = TextEditingController();
    name = TextEditingController();
    password = TextEditingController();
  }

  @override
  void dispose() {
    super.dispose();
    email.dispose();
    name.dispose();
    password.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Column(
        spacing: 24,
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          const RegisterHeaderWidget(),
          Form(
              key: _formKey,
              child: Column(
                spacing: 24,
                children: [
                  CustomTextField(
                    controller: name,
                    label: context.t.fullName,
                    keyboardType: TextInputType.name,
                  ),
                  EmailInputWidget(
                    emailController: email,
                  ),
                  PasswordInputWidget(
                    passwordController: email,
                  ),
                ],
              )).paddingSymmetric(
            horizontal: mobileHozPadding,
          ),
          RegisterButton(onPress: () {}).paddingSymmetric(
            horizontal: mobileHozPadding,
          ),
          const SizedBox(height: 24),
          const HaveAccount().paddingSymmetric(
            horizontal: mobileHozPadding,
          ),
        ],
      ),
    );
  }
}
