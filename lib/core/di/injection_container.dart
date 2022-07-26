import 'blocs_injection.dart' as blocs;
import 'data_sources_injection.dart' as datasources;
import 'externals_injection.dart' as externals;
import 'repositories_injection.dart' as repositories;

Future<void> init() async {
  await externals.init();
  await datasources.init();
  await blocs.init();
  await repositories.init();
}
