import 'package:get_it/get_it.dart';
import 'package:injectable/injectable.dart';
import 'discovery_di.config.dart'; 

@InjectableInit(
  initializerName: 'initDiscovery',
   // Optional: specify the directory to scan for injectable annotations
  generateForDir: ['lib/features/discovery'],
)
void configureDiscovery(GetIt getIt) {
  getIt.initDiscovery();
}
