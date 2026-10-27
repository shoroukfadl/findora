import 'package:findora/core/language/app_strings.dart';
import 'package:findora/core/language/locales.dart';
import 'package:findora/featured/login/presentation/provider/login_provider.dart';
import 'package:findora/shared/customWidgets/primary_button_widget.dart';
import 'package:findora/utilities/helper/helper_function.dart';
import 'package:findora/utilities/requests/request_status.dart';
import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';

class LoginButtonWidget extends ConsumerWidget {
  final VoidCallback login;

  const LoginButtonWidget({super.key, required this.login});

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    final status = ref.watch(loginProvider);

    ref.listen<RequestStatus>(loginProvider, (previous, current) {
      if (current is RequestFailure && previous is! RequestFailure) {
        HelperFunctions.showCustomToast(
          context,
          title: '',
          description: current.message,
        );
      }
    });

    final isLoading = status is RequestLoading;

    return PrimaryButtonWidget(
      onTap: isLoading ? null : login,
      title: context.t.authLogIn,
      loading: isLoading,
    );
  }
}
