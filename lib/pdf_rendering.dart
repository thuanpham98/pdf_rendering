import 'dart:async';
import 'dart:typed_data';

import 'package:flutter/services.dart';

class PdfRendering {
  static const MethodChannel _channel = MethodChannel('pdf_rendering');

  static Future initPdfRendering() async {
    return await _channel.invokeMethod('initPdfRendering');
  }

  static Future<List<String>> convertPdftoImages(Uint8List data) async {
    return await _channel.invokeMethod('convertPdftoImages', {'data': data});
  }
}
