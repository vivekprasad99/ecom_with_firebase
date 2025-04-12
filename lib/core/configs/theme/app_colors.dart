import 'package:flutter/material.dart';

class AppColors {
  static bool isStaging = false; // This will be set from main.dart

  // Primary Colors
  static Color get primary => isStaging
      ? const Color(0xFF9C27B0) // Purple 500
      : const Color(0xFFFF5722); // Deep Orange 500

  static Color get background => isStaging
      ? const Color(0xFF4A148C) // Purple 900
      : const Color(0xFF2E1810); // Dark Orange/Brown

  static Color get secondBackground => isStaging
      ? const Color(0xFF7B1FA2) // Purple 700
      : const Color(0xFF3E2723); // Brown 900

  // Accent Colors
  static Color get accent => isStaging
      ? const Color(0xFFE1BEE7) // Purple 100
      : const Color(0xFFFFCCBC); // Deep Orange 100

  // Text Colors
  static Color get textPrimary => isStaging
      ? const Color(0xFFF3E5F5) // Purple 50
      : const Color(0xFFFBE9E7); // Deep Orange 50

  static Color get textSecondary => isStaging
      ? const Color(0xFFCE93D8) // Purple 200
      : const Color(0xFFFFAB91); // Deep Orange 200
}
