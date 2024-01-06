import 'dart:io';

import 'package:accounting_app/app/app_constant.dart';
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
  Hive
    ..init(dir.path)
    ..registerAdapter(UserAdapter());
  await Hive.openBox<User>(AppConstant.userBox);
}
