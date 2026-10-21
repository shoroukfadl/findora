import 'package:findora/Core/Language/app_styles.dart';
import 'package:findora/core/language/app_strings.dart';
import 'package:findora/core/language/locales.dart';
import 'package:findora/core/theme/theme_cubit.dart';
import 'package:findora/core/theme/theme_state.dart';
import 'package:findora/shared/customWidgets/option_widget.dart';
import 'package:findora/utilities/extentions/extensions.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

class ThemeBottomSheet extends StatelessWidget {
  const ThemeBottomSheet({
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
        Text(t.settingsTheme, style: AppTextStyles.b14(color: colors.text1)),
        ...ThemeMode.values
            .map((e) => BlocBuilder<ThemeCubit, ThemeState>(
                  builder: (c, state) => OptionWidget(
                    selected: state.theme.name == e.name,
                    title: e.name,
                    description: "",
                    onTap: () => context.read<ThemeCubit>().changeTheme(e),
                  ),
                ))
            .toList(),
        Text(
          'The app switches theme immediately.',
          style: AppTextStyles.b12(color: colors.text2),
        ),
      ],
    );
  }
}
