import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_gen/gen_l10n/app_localizations.dart';
import 'package:responsiveness/responsiveness.dart';

import '../../bloc/medicine/medicine_cubit.dart';
import '../../widgets/app_appbar.dart';
import '../../widgets/app_error.dart';
import '../../widgets/app_loading.dart';
import '../../widgets/app_text_form_field.dart';
import 'widgets/medicine_item.dart';

class HomePage extends StatefulWidget {
  const HomePage({Key? key}) : super(key: key);

  @override
  State<HomePage> createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  final TextEditingController controller = TextEditingController();

  @override
  void dispose() {
    controller.dispose();
    super.dispose();
  }

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
            child: AppTextFormField(
              label: appLocalization.search,
              controller: controller,
              onChanged: (text) {
                if (text.isNotEmpty) {
                  context.read<MedicineCubit>().search(text);
                } else {
                  context.read<MedicineCubit>().fetchData();
                }
              },
            ),
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
                    itemCount: state.data.length,
                    itemBuilder: (context, index) {
                      return MedicineItem(model: state.data[index]);
                    },
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
