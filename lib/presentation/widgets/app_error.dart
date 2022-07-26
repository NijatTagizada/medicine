import 'package:flutter/material.dart';
import 'package:flutter_gen/gen_l10n/app_localizations.dart';
import 'package:theme/theme.dart';

class AppError extends StatelessWidget {
  const AppError({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    final appLocalization = AppLocalizations.of(context);
    final appTheme = AppTheme.of(context);

    return Center(
      child: Text(
        appLocalization.somethingWentWrong,
        style: appTheme.typography.sp16.copyWith(
          color: appTheme.colors.red,
        ),
      ),
    );
  }
}
