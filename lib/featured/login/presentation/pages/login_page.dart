import 'package:findora/Utilities/Constants/constants.dart';
import 'package:findora/featured/login/domain/params/auth_params.dart';
import 'package:findora/featured/login/presentation/provider/login_provider.dart';
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
import 'package:flutter_riverpod/flutter_riverpod.dart';

class LoginPage extends ConsumerStatefulWidget {
  static String routeName = ScreenRoutes.login.name;

  const LoginPage({super.key});

  @override
  ConsumerState<LoginPage> createState() => _LoginPageState();
}

class _LoginPageState extends ConsumerState<LoginPage> {
  late TextEditingController emailController;
  late TextEditingController passwordController;

  final formKey = GlobalKey<FormState>();

  @override
  void initState() {
    super.initState();
    emailController = TextEditingController();
    passwordController = TextEditingController();
  }

  @override
  void dispose() {
    emailController.dispose();
    passwordController.dispose();
    super.dispose();
  }

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
              child: Form(
                key: formKey,
                child: Column(
                  children: [
                    EmailInputWidget(emailController: emailController),
                    SizedBox(height: 16),
                    PasswordInputWidget(passwordController: passwordController),
                    SizedBox(height: 8),
                    ForgotPasswordLinkWidget(),
                    SizedBox(height: 24),
                    LoginButtonWidget(
                      login: () {
                        if (formKey.currentState?.validate() ?? false) {
                          ref
                              .read(loginProvider.notifier)
                              .login(
                                LoginParams(
                                  email: emailController.text,
                                  password: passwordController.text,
                                ),
                              );
                        }
                      },
                    ),
                    SizedBox(height: 24),
                    DividerWidget(),
                    SizedBox(height: 24),
                    GoogleLoginButtonWidget(),
                    SizedBox(height: 24),
                    CreateAccountLinkWidget(),
                  ],
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
