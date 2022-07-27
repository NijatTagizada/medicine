import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_gen/gen_l10n/app_localizations.dart';
import 'package:responsiveness/responsiveness.dart';

import '../../bloc/medicine_detail/medicine_detail_cubit.dart';
import '../../widgets/app_appbar.dart';
import '../../widgets/app_error.dart';
import '../../widgets/app_loading.dart';
import '../../widgets/title_value_widget.dart';

class MedicineDetailPage extends StatelessWidget {
  const MedicineDetailPage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    final appLocalization = AppLocalizations.of(context);

    return Scaffold(
      appBar: MainAppBar(title: appLocalization.medicineDetail),
      body: BlocBuilder<MedicineDetailCubit, MedicineDetailState>(
        builder: (context, state) {
          if (state is MedicineDetailLoading) {
            return const AppLoading();
          }

          if (state is MedicineDetailError) {
            return const AppError();
          }

          if (state is MedicineDetailSuccess) {
            return Container(
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
                        value: state.data.tradeLabel.name,
                      ),
                      SizedBox(height: 20.h),
                      TitleValueWidget(
                        title: appLocalization.manufacturerName,
                        value: state.data.manufacturer != null
                            ? state.data.manufacturer!.name
                            : appLocalization.unknown,
                      ),
                      SizedBox(height: 20.h),
                      TitleValueWidget(
                        title: appLocalization.packagingDescription,
                        value: state.data.packaging.description,
                      ),
                      SizedBox(height: 20.h),
                      TitleValueWidget(
                        title: appLocalization.compositionDescription,
                        value: state.data.composition.description,
                      ),
                      SizedBox(height: 20.h),
                      TitleValueWidget(
                        title: appLocalization.compositionInn,
                        value: state.data.composition.inn.name,
                      ),
                      SizedBox(height: 20.h),
                      TitleValueWidget(
                        title: appLocalization.compositionPharmForm,
                        value: state.data.composition.pharmForm.name,
                      ),
                    ],
                  ),
                ),
              ),
            );
          }

          return SizedBox.fromSize();
        },
      ),
    );
  }
}
