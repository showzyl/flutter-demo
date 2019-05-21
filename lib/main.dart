/**
 * 实现下面文章
 * https://blog.csdn.net/mengks1987/article/details/84868953
 */

import 'package:flutter/material.dart';
import 'dart:async' show Future;
import 'package:flutter/services.dart' show rootBundle;

void main() {
  runApp(loadAsset());
}

Future<String> loadAsset() async {
  return await rootBundle.loadString('assets/config.json');
}