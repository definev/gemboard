import 'package:design_system/design_system.dart';
import 'package:design_system/src/token/font/font.variant.dart';
import 'package:flutter/foundation.dart';
import 'package:flutter/widgets.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:mix/mix.dart';

class TextStyleVariant extends TextStyleToken {
  const TextStyleVariant(super.name);

  static const h1 = TextStyleVariant('h1');
  static const h2 = TextStyleVariant('h2');
  static const h3 = TextStyleVariant('h3');
  static const h4 = TextStyleVariant('h4');
  static const h5 = TextStyleVariant('h5');
  static const h6 = TextStyleVariant('h6');
  static const p = TextStyleVariant('p');
  static const p2 = TextStyleVariant('p2');
  static const p3 = TextStyleVariant('p3');
  static const p4 = TextStyleVariant('p4');
  static const p5 = TextStyleVariant('p5');

  static const bold = TextStyleVariant('bold');
  static const semiBold = TextStyleVariant('semiBold');
  static const medium = TextStyleVariant('medium');

  static const emoji = TextStyleVariant('emoji');

  @override
  TextStyle resolve(BuildContext context) {
    final designSystemTheme = DesignSystemTheme.of(context);
    final font = designSystemTheme.font;
    final scale = designSystemTheme.scale;
    final themeValue = designSystemTheme.textStyles[this];
    assert(
      themeValue != null,
      'TextStyleToken $name is not defined in the theme',
    );

    final resolvedValue = themeValue is TextStyleResolver
        ? themeValue.resolve(context)
        : resolveFontFamily(context, font, scale);

    return resolvedValue;
  }
}

final baskervvilleTextStyles = {
  TextStyleVariant.h1: GoogleFonts.baskervville(
    fontSize: 96,
    fontWeight: FontWeight.w300,
    letterSpacing: -1.5,
  ),
  TextStyleVariant.h2: GoogleFonts.baskervville(
    fontSize: 60,
    fontWeight: FontWeight.w300,
    letterSpacing: -0.5,
  ),
  TextStyleVariant.h3: GoogleFonts.baskervville(
    fontSize: 48,
    fontWeight: FontWeight.w400,
  ),
  TextStyleVariant.h4: GoogleFonts.baskervville(
    fontSize: 34,
    fontWeight: FontWeight.w400,
    letterSpacing: 0.25,
  ),
  TextStyleVariant.h5: GoogleFonts.baskervville(
    fontSize: 24,
    fontWeight: FontWeight.w400,
  ),
  TextStyleVariant.h6: GoogleFonts.baskervville(
    fontSize: 20,
    fontWeight: FontWeight.w500,
    letterSpacing: 0.15,
  ),
  TextStyleVariant.p: GoogleFonts.baskervville(
    fontSize: 16,
    fontWeight: FontWeight.w400,
    letterSpacing: 0.5,
  ),
  TextStyleVariant.p2: GoogleFonts.baskervville(
    fontSize: 14,
    fontWeight: FontWeight.w400,
    letterSpacing: 0.25,
  ),
  TextStyleVariant.p3: GoogleFonts.baskervville(
    fontSize: 12,
    fontWeight: FontWeight.w400,
    letterSpacing: 0.4,
  ),
  TextStyleVariant.p4: GoogleFonts.baskervville(
    fontSize: 10,
    fontWeight: FontWeight.w400,
    letterSpacing: 1.5,
  ),
  TextStyleVariant.p5: GoogleFonts.baskervville(
    fontSize: 8,
    fontWeight: FontWeight.w400,
    letterSpacing: 1.5,
  ),
  TextStyleVariant.emoji: switch (defaultTargetPlatform) {
    TargetPlatform.macOS ||
    TargetPlatform.iOS =>
      TextStyle(fontSize: 20, fontFamily: 'Apple Color Emoji'),
    _ => TextStyle(fontSize: 20),
  },
  TextStyleVariant.bold: GoogleFonts.baskervville(
    fontSize: 16,
    fontWeight: FontWeight.w700,
    letterSpacing: 0.5,
  ),
  TextStyleVariant.semiBold: GoogleFonts.baskervville(
    fontSize: 16,
    fontWeight: FontWeight.w600,
    letterSpacing: 0.5,
  ),
  TextStyleVariant.medium: GoogleFonts.baskervville(
    fontSize: 16,
    fontWeight: FontWeight.w500,
    letterSpacing: 0.5,
  ),
};

final bodoniTextStyles = {
  TextStyleVariant.h1: GoogleFonts.bodoniModa(
    fontSize: 96,
    fontWeight: FontWeight.w300,
    letterSpacing: -1.5,
  ),
  TextStyleVariant.h2: GoogleFonts.bodoniModa(
    fontSize: 60,
    fontWeight: FontWeight.w300,
    letterSpacing: -0.5,
  ),
  TextStyleVariant.h3: GoogleFonts.bodoniModa(
    fontSize: 48,
    fontWeight: FontWeight.w400,
  ),
  TextStyleVariant.h4: GoogleFonts.bodoniModa(
    fontSize: 34,
    fontWeight: FontWeight.w400,
    letterSpacing: 0.25,
  ),
  TextStyleVariant.h5: GoogleFonts.bodoniModa(
    fontSize: 24,
    fontWeight: FontWeight.w400,
  ),
  TextStyleVariant.h6: GoogleFonts.bodoniModa(
    fontSize: 20,
    fontWeight: FontWeight.w500,
    letterSpacing: 0.15,
  ),
  TextStyleVariant.p: GoogleFonts.bodoniModa(
    fontSize: 16,
    fontWeight: FontWeight.w400,
    letterSpacing: 0.5,
  ),
  TextStyleVariant.p2: GoogleFonts.bodoniModa(
    fontSize: 14,
    fontWeight: FontWeight.w400,
    letterSpacing: 0.25,
  ),
  TextStyleVariant.p3: GoogleFonts.bodoniModa(
    fontSize: 12,
    fontWeight: FontWeight.w400,
    letterSpacing: 0.4,
  ),
  TextStyleVariant.p4: GoogleFonts.bodoniModa(
    fontSize: 10,
    fontWeight: FontWeight.w400,
    letterSpacing: 1.5,
  ),
  TextStyleVariant.p5: GoogleFonts.bodoniModa(
    fontSize: 8,
    fontWeight: FontWeight.w400,
    letterSpacing: 1.5,
  ),
  TextStyleVariant.emoji: switch (defaultTargetPlatform) {
    TargetPlatform.macOS ||
    TargetPlatform.iOS =>
      TextStyle(fontSize: 20, fontFamily: 'Apple Color Emoji'),
    _ => TextStyle(fontSize: 20),
  },
  TextStyleVariant.bold: GoogleFonts.bodoniModa(
    fontSize: 16,
    fontWeight: FontWeight.w700,
    letterSpacing: 0.5,
  ),
  TextStyleVariant.semiBold: GoogleFonts.bodoniModa(
    fontSize: 16,
    fontWeight: FontWeight.w600,
    letterSpacing: 0.5,
  ),
  TextStyleVariant.medium: GoogleFonts.bodoniModa(
    fontSize: 16,
    fontWeight: FontWeight.w500,
    letterSpacing: 0.5,
  ),
};

final garamondTextStyles = {
  TextStyleVariant.h1: GoogleFonts.cormorantGaramond(
    fontSize: 96,
    fontWeight: FontWeight.w300,
    letterSpacing: -1.5,
  ),
  TextStyleVariant.h2: GoogleFonts.cormorantGaramond(
    fontSize: 60,
    fontWeight: FontWeight.w300,
    letterSpacing: -0.5,
  ),
  TextStyleVariant.h3: GoogleFonts.cormorantGaramond(
    fontSize: 48,
    fontWeight: FontWeight.w400,
  ),
  TextStyleVariant.h4: GoogleFonts.cormorantGaramond(
    fontSize: 34,
    fontWeight: FontWeight.w400,
    letterSpacing: 0.25,
  ),
  TextStyleVariant.h5: GoogleFonts.cormorantGaramond(
    fontSize: 24,
    fontWeight: FontWeight.w400,
  ),
  TextStyleVariant.h6: GoogleFonts.cormorantGaramond(
    fontSize: 20,
    fontWeight: FontWeight.w500,
    letterSpacing: 0.15,
  ),
  TextStyleVariant.p: GoogleFonts.cormorantGaramond(
    fontSize: 16,
    fontWeight: FontWeight.w400,
    letterSpacing: 0.5,
  ),
  TextStyleVariant.p2: GoogleFonts.cormorantGaramond(
    fontSize: 14,
    fontWeight: FontWeight.w400,
    letterSpacing: 0.25,
  ),
  TextStyleVariant.p3: GoogleFonts.cormorantGaramond(
    fontSize: 12,
    fontWeight: FontWeight.w400,
    letterSpacing: 0.4,
  ),
  TextStyleVariant.p4: GoogleFonts.cormorantGaramond(
    fontSize: 10,
    fontWeight: FontWeight.w400,
    letterSpacing: 1.5,
  ),
  TextStyleVariant.p5: GoogleFonts.cormorantGaramond(
    fontSize: 8,
    fontWeight: FontWeight.w400,
    letterSpacing: 1.5,
  ),
  TextStyleVariant.emoji: switch (defaultTargetPlatform) {
    TargetPlatform.macOS ||
    TargetPlatform.iOS =>
      TextStyle(fontSize: 20, fontFamily: 'Apple Color Emoji'),
    _ => TextStyle(fontSize: 20),
  },
  TextStyleVariant.bold: GoogleFonts.cormorantGaramond(
    fontSize: 16,
    fontWeight: FontWeight.w700,
    letterSpacing: 0.5,
  ),
  TextStyleVariant.semiBold: GoogleFonts.cormorantGaramond(
    fontSize: 16,
    fontWeight: FontWeight.w600,
    letterSpacing: 0.5,
  ),
  TextStyleVariant.medium: GoogleFonts.cormorantGaramond(
    fontSize: 16,
    fontWeight: FontWeight.w500,
    letterSpacing: 0.5,
  ),
};

final interTextStyles = {
  TextStyleVariant.h1: GoogleFonts.inter(
    fontSize: 96,
    fontWeight: FontWeight.w300,
    letterSpacing: -1.5,
  ),
  TextStyleVariant.h2: GoogleFonts.inter(
    fontSize: 60,
    fontWeight: FontWeight.w300,
    letterSpacing: -0.5,
  ),
  TextStyleVariant.h3: GoogleFonts.inter(
    fontSize: 48,
    fontWeight: FontWeight.w400,
  ),
  TextStyleVariant.h4: GoogleFonts.inter(
    fontSize: 34,
    fontWeight: FontWeight.w400,
    letterSpacing: 0.25,
  ),
  TextStyleVariant.h5: GoogleFonts.inter(
    fontSize: 24,
    fontWeight: FontWeight.w400,
  ),
  TextStyleVariant.h6: GoogleFonts.inter(
    fontSize: 20,
    fontWeight: FontWeight.w500,
    letterSpacing: 0.15,
  ),
  TextStyleVariant.p: GoogleFonts.inter(
    fontSize: 16,
    fontWeight: FontWeight.w400,
    letterSpacing: 0.5,
  ),
  TextStyleVariant.p2: GoogleFonts.inter(
    fontSize: 14,
    fontWeight: FontWeight.w400,
    letterSpacing: 0.25,
  ),
  TextStyleVariant.p3: GoogleFonts.inter(
    fontSize: 12,
    fontWeight: FontWeight.w400,
    letterSpacing: 0.4,
  ),
  TextStyleVariant.p4: GoogleFonts.inter(
    fontSize: 10,
    fontWeight: FontWeight.w400,
    letterSpacing: 1.5,
  ),
  TextStyleVariant.p5: GoogleFonts.inter(
    fontSize: 8,
    fontWeight: FontWeight.w400,
    letterSpacing: 1.5,
  ),
  TextStyleVariant.emoji: switch (defaultTargetPlatform) {
    TargetPlatform.macOS ||
    TargetPlatform.iOS =>
      TextStyle(fontSize: 20, fontFamily: 'Apple Color Emoji'),
    _ => TextStyle(fontSize: 20),
  },
  TextStyleVariant.bold: GoogleFonts.inter(
    fontSize: 16,
    fontWeight: FontWeight.w700,
    letterSpacing: 0.5,
  ),
  TextStyleVariant.semiBold: GoogleFonts.inter(
    fontSize: 16,
    fontWeight: FontWeight.w600,
    letterSpacing: 0.5,
  ),
  TextStyleVariant.medium: GoogleFonts.inter(
    fontSize: 16,
    fontWeight: FontWeight.w500,
    letterSpacing: 0.5,
  ),
};

final soraTextStyles = {
  TextStyleVariant.h1: GoogleFonts.sora(
    fontSize: 96,
    fontWeight: FontWeight.w300,
    letterSpacing: -1.5,
  ),
  TextStyleVariant.h2: GoogleFonts.sora(
    fontSize: 60,
    fontWeight: FontWeight.w300,
    letterSpacing: -0.5,
  ),
  TextStyleVariant.h3: GoogleFonts.sora(
    fontSize: 48,
    fontWeight: FontWeight.w300,
  ),
  TextStyleVariant.h4: GoogleFonts.sora(
    fontSize: 34,
    fontWeight: FontWeight.w300,
    letterSpacing: 0.25,
  ),
  TextStyleVariant.h5: GoogleFonts.sora(
    fontSize: 24,
    fontWeight: FontWeight.w300,
  ),
  TextStyleVariant.h6: GoogleFonts.sora(
    fontSize: 20,
    fontWeight: FontWeight.w300,
    letterSpacing: 0.15,
  ),
  TextStyleVariant.p: GoogleFonts.sora(
    fontSize: 16,
    fontWeight: FontWeight.w300,
    letterSpacing: 0.5,
  ),
  TextStyleVariant.p2: GoogleFonts.sora(
    fontSize: 14,
    fontWeight: FontWeight.w300,
    letterSpacing: 0.25,
  ),
  TextStyleVariant.p3: GoogleFonts.sora(
    fontSize: 12,
    fontWeight: FontWeight.w300,
    letterSpacing: 0.4,
  ),
  TextStyleVariant.p4: GoogleFonts.sora(
    fontSize: 10,
    fontWeight: FontWeight.w300,
    letterSpacing: 1.5,
  ),
  TextStyleVariant.p5: GoogleFonts.sora(
    fontSize: 8,
    fontWeight: FontWeight.w300,
    letterSpacing: 1.5,
  ),
  TextStyleVariant.emoji: switch (defaultTargetPlatform) {
    TargetPlatform.macOS ||
    TargetPlatform.iOS =>
      TextStyle(fontSize: 20, fontFamily: 'Apple Color Emoji'),
    _ => TextStyle(fontSize: 20),
  },
  TextStyleVariant.bold: GoogleFonts.sora(
    fontSize: 16,
    fontWeight: FontWeight.w700,
    letterSpacing: 0.5,
  ),
  TextStyleVariant.semiBold: GoogleFonts.sora(
    fontSize: 16,
    fontWeight: FontWeight.w600,
    letterSpacing: 0.5,
  ),
  TextStyleVariant.medium: GoogleFonts.sora(
    fontSize: 16,
    fontWeight: FontWeight.w500,
    letterSpacing: 0.5,
  ),
};

final beVietnamProTextStyles = {
  TextStyleVariant.h1: GoogleFonts.beVietnamPro(
    fontSize: 96,
    fontWeight: FontWeight.w300,
    letterSpacing: -1.5,
  ),
  TextStyleVariant.h2: GoogleFonts.beVietnamPro(
    fontSize: 60,
    fontWeight: FontWeight.w300,
    letterSpacing: -0.5,
  ),
  TextStyleVariant.h3: GoogleFonts.beVietnamPro(
    fontSize: 48,
    fontWeight: FontWeight.w300,
  ),
  TextStyleVariant.h4: GoogleFonts.beVietnamPro(
    fontSize: 34,
    fontWeight: FontWeight.w300,
    letterSpacing: 0.25,
  ),
  TextStyleVariant.h5: GoogleFonts.beVietnamPro(
    fontSize: 24,
    fontWeight: FontWeight.w300,
  ),
  TextStyleVariant.h6: GoogleFonts.beVietnamPro(
    fontSize: 20,
    fontWeight: FontWeight.w300,
    letterSpacing: 0.15,
  ),
  TextStyleVariant.p: GoogleFonts.beVietnamPro(
    fontSize: 16,
    fontWeight: FontWeight.w300,
    letterSpacing: 0.5,
  ),
  TextStyleVariant.p2: GoogleFonts.beVietnamPro(
    fontSize: 14,
    fontWeight: FontWeight.w300,
    letterSpacing: 0.25,
  ),
  TextStyleVariant.p3: GoogleFonts.beVietnamPro(
    fontSize: 12,
    fontWeight: FontWeight.w300,
    letterSpacing: 0.4,
  ),
  TextStyleVariant.p4: GoogleFonts.beVietnamPro(
    fontSize: 10,
    fontWeight: FontWeight.w300,
    letterSpacing: 1.5,
  ),
  TextStyleVariant.p5: GoogleFonts.beVietnamPro(
    fontSize: 8,
    fontWeight: FontWeight.w300,
    letterSpacing: 1.5,
  ),
  TextStyleVariant.emoji: switch (defaultTargetPlatform) {
    TargetPlatform.macOS ||
    TargetPlatform.iOS =>
      TextStyle(fontSize: 20, fontFamily: 'Apple Color Emoji'),
    _ => TextStyle(fontSize: 20),
  },
  TextStyleVariant.bold: GoogleFonts.beVietnamPro(
    fontSize: 16,
    fontWeight: FontWeight.w700,
    letterSpacing: 0.5,
  ),
  TextStyleVariant.semiBold: GoogleFonts.beVietnamPro(
    fontSize: 16,
    fontWeight: FontWeight.w600,
    letterSpacing: 0.5,
  ),
  TextStyleVariant.medium: GoogleFonts.beVietnamPro(
    fontSize: 16,
    fontWeight: FontWeight.w500,
    letterSpacing: 0.5,
  ),
};

final outfitTextStyles = {
  TextStyleVariant.h1: GoogleFonts.outfit(
    fontSize: 96,
    fontWeight: FontWeight.w300,
    letterSpacing: -1.5,
  ),
  TextStyleVariant.h2: GoogleFonts.outfit(
    fontSize: 60,
    fontWeight: FontWeight.w300,
    letterSpacing: -0.5,
  ),
  TextStyleVariant.h3: GoogleFonts.outfit(
    fontSize: 48,
    fontWeight: FontWeight.w400,
  ),
  TextStyleVariant.h4: GoogleFonts.outfit(
    fontSize: 34,
    fontWeight: FontWeight.w400,
    letterSpacing: 0.25,
  ),
  TextStyleVariant.h5: GoogleFonts.outfit(
    fontSize: 24,
    fontWeight: FontWeight.w400,
  ),
  TextStyleVariant.h6: GoogleFonts.outfit(
    fontSize: 20,
    fontWeight: FontWeight.w500,
    letterSpacing: 0.15,
  ),
  TextStyleVariant.p: GoogleFonts.outfit(
    fontSize: 16,
    fontWeight: FontWeight.w400,
    letterSpacing: 0.5,
  ),
  TextStyleVariant.p2: GoogleFonts.outfit(
    fontSize: 14,
    fontWeight: FontWeight.w400,
    letterSpacing: 0.25,
  ),
  TextStyleVariant.p3: GoogleFonts.outfit(
    fontSize: 12,
    fontWeight: FontWeight.w400,
    letterSpacing: 0.4,
  ),
  TextStyleVariant.p4: GoogleFonts.outfit(
    fontSize: 10,
    fontWeight: FontWeight.w400,
    letterSpacing: 1.5,
  ),
  TextStyleVariant.p5: GoogleFonts.outfit(
    fontSize: 8,
    fontWeight: FontWeight.w400,
    letterSpacing: 1.5,
  ),
  TextStyleVariant.emoji: switch (defaultTargetPlatform) {
    TargetPlatform.macOS ||
    TargetPlatform.iOS =>
      TextStyle(fontSize: 20, fontFamily: 'Apple Color Emoji'),
    _ => TextStyle(fontSize: 20),
  },
  TextStyleVariant.bold: GoogleFonts.outfit(
    fontSize: 16,
    fontWeight: FontWeight.w700,
    letterSpacing: 0.5,
  ),
  TextStyleVariant.semiBold: GoogleFonts.outfit(
    fontSize: 16,
    fontWeight: FontWeight.w600,
    letterSpacing: 0.5,
  ),
  TextStyleVariant.medium: GoogleFonts.outfit(
    fontSize: 16,
    fontWeight: FontWeight.w500,
    letterSpacing: 0.5,
  ),
};

final notoSansTextStyles = {
  TextStyleVariant.h1: GoogleFonts.notoSans(
    fontSize: 96,
    fontWeight: FontWeight.w300,
    letterSpacing: -1.5,
  ),
  TextStyleVariant.h2: GoogleFonts.notoSans(
    fontSize: 60,
    fontWeight: FontWeight.w300,
    letterSpacing: -0.5,
  ),
  TextStyleVariant.h3: GoogleFonts.notoSans(
    fontSize: 48,
    fontWeight: FontWeight.w400,
  ),
  TextStyleVariant.h4: GoogleFonts.notoSans(
    fontSize: 34,
    fontWeight: FontWeight.w400,
    letterSpacing: 0.25,
  ),
  TextStyleVariant.h5: GoogleFonts.notoSans(
    fontSize: 24,
    fontWeight: FontWeight.w400,
  ),
  TextStyleVariant.h6: GoogleFonts.notoSans(
    fontSize: 20,
    fontWeight: FontWeight.w500,
    letterSpacing: 0.15,
  ),
  TextStyleVariant.p: GoogleFonts.notoSans(
    fontSize: 16,
    fontWeight: FontWeight.w400,
    letterSpacing: 0.5,
  ),
  TextStyleVariant.p2: GoogleFonts.notoSans(
    fontSize: 14,
    fontWeight: FontWeight.w400,
    letterSpacing: 0.25,
  ),
  TextStyleVariant.p3: GoogleFonts.notoSans(
    fontSize: 12,
    fontWeight: FontWeight.w400,
    letterSpacing: 0.4,
  ),
  TextStyleVariant.p4: GoogleFonts.notoSans(
    fontSize: 10,
    fontWeight: FontWeight.w400,
    letterSpacing: 1.5,
  ),
  TextStyleVariant.p5: GoogleFonts.notoSans(
    fontSize: 8,
    fontWeight: FontWeight.w400,
    letterSpacing: 1.5,
  ),
  TextStyleVariant.emoji: switch (defaultTargetPlatform) {
    TargetPlatform.macOS ||
    TargetPlatform.iOS =>
      TextStyle(fontSize: 20, fontFamily: 'Apple Color Emoji'),
    _ => TextStyle(fontSize: 20),
  },
  TextStyleVariant.bold: GoogleFonts.notoSans(
    fontSize: 16,
    fontWeight: FontWeight.w700,
    letterSpacing: 0.5,
  ),
  TextStyleVariant.semiBold: GoogleFonts.notoSans(
    fontSize: 16,
    fontWeight: FontWeight.w600,
    letterSpacing: 0.5,
  ),
  TextStyleVariant.medium: GoogleFonts.notoSans(
    fontSize: 16,
    fontWeight: FontWeight.w500,
    letterSpacing: 0.5,
  ),
};

extension FontFamilyX on TextStyleVariant {
  TextStyle resolveFontFamily(
    BuildContext context,
    FontVariant variant,
    double scale,
  ) {
    final textStyles = switch (variant) {
      FontVariant.baskervville => baskervvilleTextStyles[this]!,
      FontVariant.bodoni => bodoniTextStyles[this]!,
      FontVariant.garamond => garamondTextStyles[this]!,
      FontVariant.inter => interTextStyles[this]!,
      FontVariant.notoSans => notoSansTextStyles[this]!,
      FontVariant.sora => soraTextStyles[this]!,
      FontVariant.outfit => outfitTextStyles[this]!,
      FontVariant.beVietnamPro => beVietnamProTextStyles[this]!,
      _ => garamondTextStyles[this]!,
    };

    return textStyles.apply(
      fontSizeFactor: scale,
      heightFactor: scale,
      // wordSpacingFactor: scale,
      // letterSpacingFactor: scale,
    );
  }
}
