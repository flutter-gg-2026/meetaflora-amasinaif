import 'package:get_it/get_it.dart';
import 'package:meet_a_flora/core/di/configure_dependencies.config.dart';
import 'package:injectable/injectable.dart';

@InjectableInit(
  initializerName: 'init', 
  preferRelativeImports: true,
  asExtension: true, 
  generateForDir: [
  'lib/core',
  'lib/features',
]
)

Future<void> configureDependencies() async {
  final getIt = GetIt.instance;
  getIt.init();
}
