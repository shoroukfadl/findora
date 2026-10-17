import 'package:findora/Utilities/Constants/constants.dart';
import 'package:findora/featured/login/presentation/widget/create_account_link_widget.dart';
import 'package:findora/featured/login/presentation/widget/divider_widget.dart';
import 'package:findora/featured/login/presentation/widget/email_input_widget.dart';
import 'package:findora/featured/login/presentation/widget/forgot_password_link_widget.dart';
import 'package:findora/featured/login/presentation/widget/google_login_button_widget.dart';
import 'package:findora/featured/login/presentation/widget/login_button_widget.dart';
import 'package:findora/featured/login/presentation/widget/login_header_widget.dart';
import 'package:findora/featured/login/presentation/widget/password_input_widget.dart';
import 'package:findora/utilities/constants/enums.dart';
import 'package:findora/utilities/extentions/extensions.dart';
import 'package:flutter/material.dart';

class LoginPage extends StatefulWidget {
  static String routeName = ScreenRoutes.login.name;
  const LoginPage({super.key});

  @override
  State<LoginPage> createState() => _LoginPageState();
}

class _LoginPageState extends State<LoginPage> {
  final TextEditingController emailController = TextEditingController();
  final TextEditingController passwordController = TextEditingController();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: context.colors.background,
      body: SingleChildScrollView(
        child: Column(
          children: [
            LoginHeaderWidget(),
            SizedBox(height: 24),
            Padding(
              padding: EdgeInsets.symmetric(horizontal: mobileHozPadding),
              child: Column(
                children: [
                  EmailInputWidget(
                    emailController: emailController,
                  ),
                  SizedBox(height: 16),
                  PasswordInputWidget(
                    passwordController: passwordController,
                  ),
                  SizedBox(height: 8),
                  ForgotPasswordLinkWidget(),
                  SizedBox(height: 24),
                  LoginButtonWidget(),
                  SizedBox(height: 24),
                  DividerWidget(),
                  SizedBox(height: 24),
                  GoogleLoginButtonWidget(),
                  SizedBox(height: 24),
                  CreateAccountLinkWidget(),
                ],
              ),
            )
          ],
        ),
      ),
    );
  }
}
