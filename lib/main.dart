import 'dart:io';

import 'package:custom_calculator/utils/constants/di/path_provider_constants.dart';
import 'package:flutter/foundation.dart';
import 'package:flutter/widgets.dart';
import 'package:flutter_native_splash/flutter_native_splash.dart';
import 'package:hydrated_bloc/hydrated_bloc.dart';

import 'presentation/features/my-app/views/my_app_view.dart';
import 'utils/di/injectable.dart';

void main() async {
  WidgetsBinding widgetsBinding = WidgetsFlutterBinding.ensureInitialized();
  FlutterNativeSplash.preserve(widgetsBinding: widgetsBinding);
  await init();
  runApp(MyAppView(myAppViewModel: getIt()));
  FlutterNativeSplash.remove();
}

Future<void> init() async {
  await Future.wait([
    configureDependencies(),
  ]);
  final Directory storage = kIsWeb
      ? HydratedStorage.webStorageDirectory
      : getIt(instanceName: PathProviderConstants.applicationDocuments);
  HydratedBloc.storage = await HydratedStorage.build(storageDirectory: storage);
}
