
import 'dart:async';

import 'package:flutter/services.dart';

class PdfRendering {
  static const MethodChannel _channel = MethodChannel('pdf_rendering');

  static Future<String?> get platformVersion async {
    final String? version = await _channel.invokeMethod('getPlatformVersion');
    return version;
  }
}
