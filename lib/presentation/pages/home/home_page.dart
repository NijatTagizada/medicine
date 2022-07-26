import 'package:flutter/material.dart';
import 'package:flutter_gen/gen_l10n/app_localizations.dart';

import '../../widgets/app_appbar.dart';
import '../../widgets/app_text_form_field.dart';

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
        title: appLocalization.homePage,
      ),
      body: Padding(
        padding: EdgeInsets.all(10.0),
        child: Column(
          children: [
            AppTextFormField(label: 'Search'),
          ],
        ),
      ),
    );
  }
}
