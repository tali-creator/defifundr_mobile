// 🐦 Flutter imports:
import 'package:defifundr_mobile/app.dart';
import 'package:defifundr_mobile/core/di/injector.dart';
import 'package:flutter/material.dart';
import 'package:flutter_native_splash/flutter_native_splash.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:get_storage/get_storage.dart';

Future<void> main() async {
  WidgetsFlutterBinding.ensureInitialized();
  FlutterNativeSplash.remove();
  await injector();
  await GetStorage.init();
  runApp(ProviderScope(child: MyApp()));
}
