import 'package:findora/Core/Language/app_styles.dart';
import 'package:findora/core/language/app_strings.dart';
import 'package:findora/core/language/locale_cubit.dart';
import 'package:findora/core/language/locales.dart';
import 'package:findora/shared/customWidgets/option_widget.dart';
import 'package:findora/utilities/constants/enums.dart';
import 'package:findora/utilities/extentions/extensions.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

class LanguageBottomSheet extends StatelessWidget {
  const LanguageBottomSheet({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    final colors = context.colors;
    final t = context.t;
    return Column(
      spacing: 16,
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Text(t.settingsLanguage, style: AppTextStyles.b14(color: colors.text1)),
        ...AppLanguage.values
            .map((e) => BlocBuilder<LocaleCubit, Locale>(
                  builder: (c, state) => OptionWidget(
                    selected: state.languageCode == e.name,
                    title: e == AppLanguage.en ? 'English' : 'العربية',
                    description:
                        e == AppLanguage.en ? 'Left to right' : 'Right to left',
                    onTap: () => context.read<LocaleCubit>().setLocale(e.name),
                  ),
                ))
            .toList(),
        Text(
          'The app switches language and layout direction immediately.',
          style: AppTextStyles.b12(color: colors.text2),
        ),
      ],
    );
  }
}
