import 'package:flutter/material.dart';

class AppColors {
  // ─── Primary Brand ──────────────────────────────────────────────────────────

  /// Purple violet — window chrome / primary brand
  static const Color primary = Color(0xFF7B5EA7);
  static const Color primaryLight = Color(0xFF9B7EC8);
  static const Color primaryDark = Color(0xFF5A3F85);

  /// Teal cyan — terminal text / interactive accent
  static const Color secondary = Color(0xFF1B8FA8);
  static const Color secondaryLight = Color(0xFF3AAFCC);
  static const Color secondaryDark = Color(0xFF0D6E84);

  /// Blue — key icon / CTA
  static const Color accent = Color(0xFF1E7FD8);
  static const Color accentLight = Color(0xFF4DA3F0);
  static const Color accentDark = Color(0xFF1460A8);

  // ─── Semantic ────────────────────────────────────────────────────────────────

  /// Red-pink — dot indicator / danger / error
  static const Color error = Color(0xFFE0445A);
  static const Color errorLight = Color(0xFFFF6B82);
  static const Color errorDark = Color(0xFFB52E44);

  /// Teal — success (derived from secondary)
  static const Color success = Color(0xFF1B8FA8);
  static const Color successLight = Color(0xFF3AAFCC);

  /// Amber — warning
  static const Color warning = Color(0xFFF0A030);
  static const Color warningLight = Color(0xFFFFBF5E);

  // ─── Neutrals ────────────────────────────────────────────────────────────────

  static const Color white = Color(0xFFFFFFFF);
  static const Color black = Color(0xFF0D0D12);

  // ─── Light Theme ─────────────────────────────────────────────────────────────

  static const Color lightBackground = Color(0xFFF5F4FA);
  static const Color lightSurface = Color(0xFFFFFFFF);
  static const Color lightSurfaceVariant = Color(0xFFEDE9F6);
  static const Color lightTerminalBg = Color(0xFFEAF4F8);

  static const Color lightTextPrimary = Color(0xFF1A1228);
  static const Color lightTextSecondary = Color(0xFF5A4F72);
  static const Color lightTextHint = Color(0xFF9E92B8);
  static const Color lightTextOnPrimary = Color(0xFFFFFFFF);
  static const Color lightTextOnAccent = Color(0xFFFFFFFF);

  static const Color lightBorder = Color(0xFFD6CFE8);
  static const Color lightDivider = Color(0xFFE8E4F2);
  static const Color lightIcon = Color(0xFF5A4F72);

  // ─── Dark Theme ──────────────────────────────────────────────────────────────

  static const Color darkBackground = Color(0xFF0F0C18);
  static const Color darkSurface = Color(0xFF1A1628);
  static const Color darkSurfaceVariant = Color(0xFF251E38);
  static const Color darkTerminalBg = Color(0xFF111B22);

  static const Color darkTextPrimary = Color(0xFFEDE9F8);
  static const Color darkTextSecondary = Color(0xFFAA9FCC);
  static const Color darkTextHint = Color(0xFF6B6088);
  static const Color darkTextOnPrimary = Color(0xFFFFFFFF);
  static const Color darkTextOnAccent = Color(0xFFFFFFFF);

  static const Color darkBorder = Color(0xFF332A4F);
  static const Color darkDivider = Color(0xFF2A2240);
  static const Color darkIcon = Color(0xFFAA9FCC);

  // ─── ThemeData Factories ──────────────────────────────────────────────────────

  static ThemeData lightTheme() {
    final colorScheme = ColorScheme(
      brightness: Brightness.light,
      primary: primary,
      onPrimary: lightTextOnPrimary,
      primaryContainer: lightSurfaceVariant,
      onPrimaryContainer: primaryDark,
      secondary: secondary,
      onSecondary: white,
      secondaryContainer: lightTerminalBg,
      onSecondaryContainer: secondaryDark,
      tertiary: accent,
      onTertiary: white,
      tertiaryContainer: Color(0xFFD6EAFB),
      onTertiaryContainer: accentDark,
      error: error,
      onError: white,
      errorContainer: Color(0xFFFFDADE),
      onErrorContainer: errorDark,
      surface: lightSurface,
      onSurface: lightTextPrimary,
      surfaceContainerHighest: lightSurfaceVariant,
      onSurfaceVariant: lightTextSecondary,
      outline: lightBorder,
      outlineVariant: lightDivider,
      shadow: black,
      scrim: black,
      inverseSurface: darkSurface,
      onInverseSurface: darkTextPrimary,
      inversePrimary: primaryLight,
    );

    return ThemeData(
      useMaterial3: true,
      colorScheme: colorScheme,
      scaffoldBackgroundColor: lightBackground,
      dividerColor: lightDivider,
      iconTheme: const IconThemeData(color: lightIcon),
      appBarTheme: AppBarTheme(
        backgroundColor: lightSurface,
        foregroundColor: lightTextPrimary,
        surfaceTintColor: Colors.transparent,
        elevation: 0,
        shadowColor: lightBorder,
      ),
      cardTheme: CardThemeData(
        color: lightSurface,
        surfaceTintColor: Colors.transparent,
        elevation: 0,
        shape: RoundedRectangleBorder(
          borderRadius: BorderRadius.circular(12),
          side: const BorderSide(color: lightBorder, width: 1),
        ),
      ),
      elevatedButtonTheme: ElevatedButtonThemeData(
        style: ElevatedButton.styleFrom(
          backgroundColor: primary,
          foregroundColor: white,
          elevation: 0,
          shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(8)),
        ),
      ),
      outlinedButtonTheme: OutlinedButtonThemeData(
        style: OutlinedButton.styleFrom(
          foregroundColor: primary,
          side: const BorderSide(color: primary),
          shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(8)),
        ),
      ),
      textButtonTheme: TextButtonThemeData(style: TextButton.styleFrom(foregroundColor: secondary)),
      inputDecorationTheme: InputDecorationTheme(
        filled: true,
        fillColor: lightSurfaceVariant,
        border: OutlineInputBorder(
          borderRadius: BorderRadius.circular(8),
          borderSide: const BorderSide(color: lightBorder),
        ),
        enabledBorder: OutlineInputBorder(
          borderRadius: BorderRadius.circular(8),
          borderSide: const BorderSide(color: lightBorder),
        ),
        focusedBorder: OutlineInputBorder(
          borderRadius: BorderRadius.circular(8),
          borderSide: const BorderSide(color: secondary, width: 2),
        ),
        hintStyle: const TextStyle(color: lightTextHint),
        labelStyle: const TextStyle(color: lightTextSecondary),
      ),
    );
  }

  static ThemeData darkTheme() {
    final colorScheme = ColorScheme(
      brightness: Brightness.dark,
      primary: primaryLight,
      onPrimary: darkTextOnPrimary,
      primaryContainer: primaryDark,
      onPrimaryContainer: primaryLight,
      secondary: secondaryLight,
      onSecondary: black,
      secondaryContainer: darkTerminalBg,
      onSecondaryContainer: secondaryLight,
      tertiary: accentLight,
      onTertiary: black,
      tertiaryContainer: accentDark,
      onTertiaryContainer: accentLight,
      error: errorLight,
      onError: black,
      errorContainer: errorDark,
      onErrorContainer: errorLight,
      surface: darkSurface,
      onSurface: darkTextPrimary,
      surfaceContainerHighest: darkSurfaceVariant,
      onSurfaceVariant: darkTextSecondary,
      outline: darkBorder,
      outlineVariant: darkDivider,
      shadow: black,
      scrim: black,
      inverseSurface: lightSurface,
      onInverseSurface: lightTextPrimary,
      inversePrimary: primary,
    );

    return ThemeData(
      useMaterial3: true,
      colorScheme: colorScheme,
      scaffoldBackgroundColor: darkBackground,
      dividerColor: darkDivider,
      iconTheme: const IconThemeData(color: darkIcon),
      appBarTheme: AppBarTheme(
        backgroundColor: darkSurface,
        foregroundColor: darkTextPrimary,
        surfaceTintColor: Colors.transparent,
        elevation: 0,
        shadowColor: darkBorder,
      ),
      cardTheme: CardThemeData(
        color: darkSurface,
        surfaceTintColor: Colors.transparent,
        elevation: 0,
        shape: RoundedRectangleBorder(
          borderRadius: BorderRadius.circular(12),
          side: const BorderSide(color: darkBorder, width: 1),
        ),
      ),
      elevatedButtonTheme: ElevatedButtonThemeData(
        style: ElevatedButton.styleFrom(
          backgroundColor: primaryLight,
          foregroundColor: black,
          elevation: 0,
          shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(8)),
        ),
      ),
      outlinedButtonTheme: OutlinedButtonThemeData(
        style: OutlinedButton.styleFrom(
          foregroundColor: primaryLight,
          side: const BorderSide(color: primaryLight),
          shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(8)),
        ),
      ),
      textButtonTheme: TextButtonThemeData(style: TextButton.styleFrom(foregroundColor: secondaryLight)),
      inputDecorationTheme: InputDecorationTheme(
        filled: true,
        fillColor: darkSurfaceVariant,
        border: OutlineInputBorder(
          borderRadius: BorderRadius.circular(8),
          borderSide: const BorderSide(color: darkBorder),
        ),
        enabledBorder: OutlineInputBorder(
          borderRadius: BorderRadius.circular(8),
          borderSide: const BorderSide(color: darkBorder),
        ),
        focusedBorder: OutlineInputBorder(
          borderRadius: BorderRadius.circular(8),
          borderSide: const BorderSide(color: secondaryLight, width: 2),
        ),
        hintStyle: const TextStyle(color: darkTextHint),
        labelStyle: const TextStyle(color: darkTextSecondary),
      ),
    );
  }
}
