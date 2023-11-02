import 'package:flutter/material.dart';
import 'package:www/core/services/services.dart';
import 'package:www/src/presentation/app.dart';

Future<void> main(List<String> args) async {
  // Injectable related
  WidgetsFlutterBinding.ensureInitialized();
  await initServices();

  runApp(const Server());
}
