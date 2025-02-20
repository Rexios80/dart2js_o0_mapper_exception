import 'dart:io';

import 'package:firebase_js_interop/build.dart';

void main(List<String> args) async {
  final optimizationLevel = OptimizationLevel.values.byName(args.first);
  await buildCloudFunctions(optimization: optimizationLevel);

  final process = await Process.start('node', [
    'lib/index.js',
  ], mode: ProcessStartMode.inheritStdio);

  await process.exitCode;
}
