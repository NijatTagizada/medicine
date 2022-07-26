import 'package:flutter/material.dart';
import 'package:flutter_gen/gen_l10n/app_localizations.dart';
import 'package:responsiveness/responsiveness.dart';
import 'package:theme/theme.dart';

import '../../../app_router.dart';
import '../../../widgets/title_value_widget.dart';

class MedicineItem extends StatelessWidget {
  const MedicineItem({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    final appLocalization = AppLocalizations.of(context);
    final appTheme = AppTheme.of(context);

    return Container(
      decoration: BoxDecoration(
        color: Colors.white,
        borderRadius: BorderRadius.circular(10.w),
        boxShadow: [
          BoxShadow(
            color: Colors.black.withOpacity(0.06),
            blurRadius: 3,
          ),
          BoxShadow(
            color: Colors.black.withOpacity(0.06),
            blurRadius: 3,
            offset: const Offset(2, 2),
          )
        ],
      ),
      child: Material(
        color: Colors.transparent,
        child: InkWell(
          onTap: () {
            appRouter.push(AppRoutes.medicineDetail);
          },
          highlightColor: Colors.transparent,
          splashColor: appTheme.colors.green.withOpacity(0.2),
          borderRadius: BorderRadius.circular(10.w),
          child: Padding(
            padding: EdgeInsets.symmetric(horizontal: 15.w, vertical: 15.h),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                TitleValueWidget(
                  title: appLocalization.tradeLabel,
                  value: "Label name",
                ),
                SizedBox(height: 20.h),
                TitleValueWidget(
                  title: appLocalization.manufacturerName,
                  value: "Lorem ipsum dolor",
                ),
              ],
            ),
          ),
        ),
      ),
    );
  }
}
