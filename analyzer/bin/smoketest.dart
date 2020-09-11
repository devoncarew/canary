import 'dart:io';

import 'package:analyzer/dart/analysis/features.dart';
import 'package:analyzer/dart/analysis/results.dart';
import 'package:analyzer/dart/analysis/utilities.dart';

void main(List<String> args) {
  ParseStringResult result = parseFile(
    path: File('bin/smoketest.dart').absolute.path,
    featureSet: FeatureSet.latestLanguageVersion(),
  );
  print(result.unit);
}
