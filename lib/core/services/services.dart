import 'package:get_it/get_it.dart';
import 'package:injectable/injectable.dart';

// Injectable related
import './services.config.dart';

final GetIt services = GetIt.I;

@InjectableInit()
Future<void> initServices() async {
  services.init();
}
