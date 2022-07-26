import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_gen/gen_l10n/app_localizations.dart';
import 'package:medicine/presentation/widgets/app_error.dart';
import 'package:responsiveness/responsiveness.dart';

import '../../bloc/medicine/cubit/medicine_cubit.dart';
import '../../widgets/app_appbar.dart';
import '../../widgets/app_loading.dart';
import '../../widgets/app_text_form_field.dart';
import 'widgets/medicine_item.dart';

class HomePage extends StatefulWidget {
  const HomePage({Key? key}) : super(key: key);

  @override
  State<HomePage> createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  @override
  Widget build(BuildContext context) {
    final appLocalization = AppLocalizations.of(context);

    return Scaffold(
      appBar: MainAppBar(
        title: appLocalization.home,
      ),
      body: Column(
        children: [
          Padding(
            padding: EdgeInsets.symmetric(horizontal: 15.w, vertical: 20.h),
            child: AppTextFormField(label: appLocalization.search),
          ),
          Expanded(
            child: BlocBuilder<MedicineCubit, MedicineState>(
              builder: (context, state) {
                if (state is MedicineLoading) {
                  return const AppLoading();
                }
                if (state is MedicineSuccess) {
                  return ListView.separated(
                    padding: EdgeInsets.symmetric(
                      vertical: 20.h,
                      horizontal: 15.w,
                    ),
                    itemCount: 10,
                    itemBuilder: (context, index) => const MedicineItem(),
                    separatorBuilder: (BuildContext context, int index) {
                      return SizedBox(height: 15.h);
                    },
                  );
                }
                if (state is MedicineError) {
                  return const AppError();
                }

                return const SizedBox.shrink();
              },
            ),
          ),
        ],
      ),
    );
  }
}
