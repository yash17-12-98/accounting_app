import 'dart:io';

import 'package:accounting_app/app/app_constant.dart';
import 'package:accounting_app/app/functions.dart';
import 'package:accounting_app/model/master/cost_centre.dart';
import 'package:accounting_app/model/model.dart';
import 'package:flutter/material.dart';
import 'package:hive/hive.dart';
import 'package:path_provider/path_provider.dart' as path;

import 'app/app.dart';

Future<void> main() async {
  WidgetsFlutterBinding.ensureInitialized();
  await initializeLocalStorage();
  runApp(const MyApp());
}

initializeLocalStorage() async {
  final Directory dir = await path.getApplicationSupportDirectory();
  print('Directory Path ${dir.path}');
  Hive
    ..init(dir.path)
    ..registerAdapter(UserAdapter())
    ..registerAdapter(DivisionAdapter())
    ..registerAdapter(CostCentreAdapter());

  await Hive.openBox<bool>(AppConstant.authBox);
  await Hive.openBox<User>(AppConstant.userBox);
  await Hive.openBox<Division>(AppConstant.divisionBox);
  await Hive.openBox<CostCentre>(AppConstant.costCentreBox);
  await addLocalUserAuth();
}
