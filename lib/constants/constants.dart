import 'dart:io';

import 'package:flutter/foundation.dart';

mixin Constants {
  static const String port = '5500';
  static const String appTitle = 'Acme Weather Demo';
  static const List<String> icons = [
    '01d',
    '01n',
    '02d',
    '02n',
    '03d',
    '03n',
    '04d',
    '04n',
    '09d',
    '09n',
    '10d',
    '10n',
    '11d',
    '11n',
    '13d',
    '13n',
    '50d',
    '50n'
  ];

  static get baseUrl {
    var baseUrl = "";
    var os = "";
    if (kDebugMode) {
      if (Platform.isAndroid) {
        baseUrl = 'http://10.0.2.2:$port';
        os = "android";
      } else if (Platform.isIOS) {
        baseUrl = 'http://192.168.4.148:$port';
        os = "ios";
      } else if (Platform.isMacOS) {
        baseUrl = 'http://192.168.4.148:$port';
        os = "macos";
      } else if (Platform.isWindows) {
        baseUrl = 'http://192.168.4.148:$port';
        os = "windows";
      } else if (Platform.isLinux) {
        baseUrl = 'http://192.168.4.148:$port';
        os = "linux";
      } else {
        baseUrl = 'http://localhost:$port';
        os = "unknown";
      }
    } else {
      baseUrl = 'http://api.parallels-demo.com';
    }

    return baseUrl;
  }

  static get iconBaseUrl {
    var os = "";
    if (Platform.isAndroid) {
      os = "android";
    } else if (Platform.isIOS) {
      os = "ios";
    } else if (Platform.isMacOS) {
      os = "macos";
    } else if (Platform.isWindows) {
      os = "windows";
    } else if (Platform.isLinux) {
      os = "linux";
    } else {
      os = "unknown";
    }

    return '$baseUrl/icon/$os';
  }
}
