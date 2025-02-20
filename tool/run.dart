import 'dart:io';

import 'package:firebase_js_interop/build.dart';

void main(List<String> args) async {
  final debug = args.contains('--debug');
  await buildCloudFunctions(
    optimization: debug ? OptimizationLevel.O0 : OptimizationLevel.O1,
  );

  final process = await Process.start('node', [
    'lib/index.js',
  ], mode: ProcessStartMode.inheritStdio);

  await process.exitCode;
}
