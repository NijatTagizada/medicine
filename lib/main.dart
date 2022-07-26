import 'package:flutter/foundation.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_dotenv/flutter_dotenv.dart';
import 'package:flutter_gen/gen_l10n/app_localizations.dart';
import 'package:responsiveness/responsiveness.dart';
import 'package:theme/theme.dart';

import 'core/bloc/app_bloc_observer.dart';
import 'core/di/injection_container.dart' as di;
import 'presentation/app_router.dart';

Future<void> main() async {
  WidgetsFlutterBinding.ensureInitialized();
  await dotenv.load(fileName: ".env");
  await di.init();

  BlocOverrides.runZoned(
    () => runApp(const MedicineApp()),
    blocObserver: AppBlocObserver(),
  );
}

class MedicineApp extends StatelessWidget {
  const MedicineApp({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return LayoutBuilder(
      builder: (context, constraints) {
        return OrientationBuilder(
          builder: (context, orientation) {
            SizeConfig.init(constraints, orientation);
            return AppTheme(
              data: AppThemeData(
                colors: AppColorsData.light(),
                typography: AppTypographyData.regular(),
              ),
              child: MaterialApp.router(
                locale: const Locale('en'),
                localizationsDelegates: AppLocalizations.localizationsDelegates,
                supportedLocales: AppLocalizations.supportedLocales,
                title: 'Medicine',
                debugShowCheckedModeBanner: kDebugMode,
                theme: ThemeData(
                  fontFamily: 'Open Sans',
                ),
                builder: (context, child) {
                  return child!;
                },
                routeInformationParser: appRouter.routeInformationParser,
                routerDelegate: appRouter.routerDelegate,
                routeInformationProvider: appRouter.routeInformationProvider,
              ),
            );
          },
        );
      },
    );
  }
}
