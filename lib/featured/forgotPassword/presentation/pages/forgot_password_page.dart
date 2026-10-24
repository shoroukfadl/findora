import 'package:findora/Core/Language/app_styles.dart';
import 'package:findora/Utilities/Constants/constants.dart';
import 'package:findora/core/language/app_strings.dart';
import 'package:findora/core/language/locales.dart';
import 'package:findora/featured/login/presentation/widget/email_input_widget.dart';
import 'package:findora/shared/customWidgets/primary_button_widget.dart';
import 'package:findora/shared/customWidgets/secondary_app_bar.dart';
import 'package:findora/shared/helper/screen_spacer.dart';
import 'package:findora/shared/mainLayout/screen_layout_widget.dart';
import 'package:findora/utilities/constants/enums.dart';
import 'package:findora/utilities/extentions/extensions.dart';
import 'package:flutter/material.dart';

class ForgotPasswordPage extends StatefulWidget {
  static String routeName = ScreenRoutes.forgotPassword.name;

  const ForgotPasswordPage({super.key});

  @override
  State<ForgotPasswordPage> createState() => _ForgotPasswordPageState();
}

class _ForgotPasswordPageState extends State<ForgotPasswordPage> {
  final TextEditingController emailController = TextEditingController();

  void _sendResetLink() {
    // TODO: Implement send reset link functionality
    print('Sending reset link to: ${emailController.text}');
  }

  @override
  Widget build(BuildContext context) {
    final t = context.t;
    final colors = context.colors;

    return SubLayoutWidget(
      child: ScreenLayoutWidget(
        bottom: Container(
          padding: const EdgeInsets.symmetric(
              horizontal: mobileHozPadding, vertical: mobileVetPadding / 2),
          decoration: BoxDecoration(
            color: colors.card,
            borderRadius: BorderRadius.circular(cardRadius),
          ),
          child: PrimaryButtonWidget(title: t.forgotPasswordSendLink),
        ),
        children: [
          SecondaryAppBar(title: t.commonReset).asPaddedSliver(),
          ScreenSpacer(),
          Text(
            t.forgotPasswordDescription,
            style: AppTextStyles.b14(color: colors.text2),
          ).asPaddedSliver(),
          ScreenSpacer(),
          EmailInputWidget(
            emailController: emailController,
          ).asPaddedSliver(),
        ],
      ),
    );
  }
}
