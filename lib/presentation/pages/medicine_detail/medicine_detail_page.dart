import 'package:flutter/material.dart';
import 'package:flutter_gen/gen_l10n/app_localizations.dart';
import 'package:responsiveness/responsiveness.dart';

import '../../widgets/app_appbar.dart';
import '../../widgets/title_value_widget.dart';

class MedicineDetailPage extends StatelessWidget {
  const MedicineDetailPage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    final appLocalization = AppLocalizations.of(context);

    return Scaffold(
      appBar: MainAppBar(title: appLocalization.medicineDetail),
      body: Container(
        margin: EdgeInsets.symmetric(horizontal: 15.w, vertical: 20.h),
        padding: EdgeInsets.symmetric(horizontal: 15.w, vertical: 15.h),
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
        child: SizedBox(
          width: MediaQuery.of(context).size.width,
          child: SingleChildScrollView(
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
                  value: "Label name",
                ),
                SizedBox(height: 20.h),
                TitleValueWidget(
                  title: appLocalization.packagingDescription,
                  value: "Label name",
                ),
                SizedBox(height: 20.h),
                TitleValueWidget(
                  title: appLocalization.compositionDescription,
                  value: "Label name",
                ),
                SizedBox(height: 20.h),
                TitleValueWidget(
                  title: appLocalization.compositionInn,
                  value: "Label name",
                ),
                SizedBox(height: 20.h),
                TitleValueWidget(
                  title: appLocalization.compositionPharmForm,
                  value: "Label name",
                ),
              ],
            ),
          ),
        ),
      ),
    );
  }
}
