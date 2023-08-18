import 'dart:convert';
import 'dart:math';

import 'package:crypto/crypto.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/services.dart';

class Constants {
  static const double fontSizeSmall = 14.0;
  static const double fontSizeMedium = 16.0;
  static const double fontSizeLarge = 20.0;

  static const double padding = 10.0;

  static const Color primaryColor = Color(0xFFFD3838); // Rojo intenso
  static const Color accentColor = Color(0xFFD08EFF); // Morado claro

  static const Color baseColor = Color(0xFF0E001F); // Azul oscuro
  static const Color blueColor = Color(0xFF0247E8); // Azul brillante
  static const Color sandColor = Color(0xFFFCECA3); // Color arena claro
  static const Color goldColor = Color(0xFFDAA520); // Dorado suave
  static const Color whiteColor = Color(0xFFFFFFFF); // Blanco
}

double generarRatingAleatorio() {
  final random = Random();
  final randomValue = random.nextDouble();

  if (randomValue < 0.05) {
    return random.nextDouble() * 0.6 + 0.7;
  } else if (randomValue < 0.1) {
    return random.nextDouble() * 0.6 + 1.3;
  } else {
    return random.nextDouble() * 2.4 + 2.6;
  }
}

String getHash(String text) {
  var bytes = utf8.encode(text);
  var digest = sha256.convert(bytes);
  return digest.toString();
}

// void copyToClipboard(String text, context) {
//   Clipboard.setData(ClipboardData(text: text));
//   // Opcional: Mostrar una notificación o mensaje de éxito
//   final scaffoldMessenger = ScaffoldMessenger.of(context);
//   scaffoldMessenger.showSnackBar(
//     CupertinoSnackBar(
//       content: Text(
//         "Dirección $text copiada correctamente en el portapapeles.",
//         style: TextStyle(fontSize: 16),
//       ),
//       duration: const Duration(seconds: 2),
//       backgroundColor: CupertinoColors.systemGrey,
//     ),
//   );
// }
