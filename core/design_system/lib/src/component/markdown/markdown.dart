import 'package:design_system/design_system.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:flutter_highlighter/flutter_highlighter.dart';
import 'package:flutter_highlighter/themes/atom-one-light.dart';
import 'package:flutter_markdown/flutter_markdown.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:markdown/markdown.dart' as md;
import 'package:url_launcher/url_launcher_string.dart';

class DSMarkdownBody extends StatelessWidget {
  const DSMarkdownBody({
    super.key,
    required this.data,
  });

  final String data;

  @override
  Widget build(BuildContext context) {
    final scale = DesignSystemTheme.of(context).scale;

    return SelectionArea(
      child: MarkdownBody(
        data: data,
        builders: {
          'code': CodeElementBuilder(context),
        },
        onTapLink: (text, href, title) => switch (href) {
          final href? => launchUrlString(href),
          _ => null,
        },
        styleSheet: MarkdownStyleSheet(
          h1: TextStyleVariant.h4.resolve(context),
          h2: TextStyleVariant.h4.resolve(context),
          h3: TextStyleVariant.h4.resolve(context),
          h4: TextStyleVariant.h4.resolve(context),
          h5: TextStyleVariant.h5.resolve(context),
          h6: TextStyleVariant.h6.resolve(context),
          a: TextStyleVariant.p.resolve(context).copyWith(
                color: CupertinoColors.activeBlue,
                decorationStyle: TextDecorationStyle.dashed,
                decoration: TextDecoration.underline,
                decorationThickness: 1,
                decorationColor: CupertinoColors.activeBlue,
              ),
          code: TextStyleVariant.p.resolve(context).copyWith(
                backgroundColor: CupertinoColors.systemGrey5,
              ),
          p: TextStyleVariant.p.resolve(context),
          listBullet: TextStyleVariant.p.resolve(context),
          blockSpacing: SpaceVariant.gap.resolve(context),
          listBulletPadding: EdgeInsets.symmetric(
            horizontal: SpaceVariant.small.resolve(context),
          ),
        ),
      ),
    );
  }
}

class CodeElementBuilder extends MarkdownElementBuilder {
  final BuildContext context;

  CodeElementBuilder(this.context);

  @override
  Widget? visitElementAfter(md.Element element, TextStyle? preferredStyle) {
    var language = '';

    if (element.attributes['class'] != null) {
      String lg = element.attributes['class'] as String;
      language = lg.substring(9);
    }
    return SizedBox(
      width: double.maxFinite,
      child: Stack(
        children: [
          HighlightView(
            // The original code to be highlighted
            element.textContent,

            // Specify language
            // It is recommended to give it a value for performance
            language: language,

            // Specify highlight theme
            // All available themes are listed in `themes` folder
            // theme: Theme.of(context).brightness == Brightness.light
            theme: atomOneLightTheme,
            // ?
            // : atomOneDarkTheme,

            // Specify padding
            padding: const EdgeInsets.all(8),

            // Specify text style
            textStyle: GoogleFonts.robotoMono(),
            tabSize: 16,
          ),
          Row(
            mainAxisAlignment: MainAxisAlignment.end,
            children: [
              IconButton(
                icon: Icon(Icons.copy),
                onPressed: () {
                  Clipboard.setData(ClipboardData(text: element.textContent));
                  ScaffoldMessenger.of(context).showSnackBar(
                    SnackBar(
                      content: Text('Copied to clipboard'),
                    ),
                  );
                },
              ),
            ],
          ),
        ],
      ),
    );
  }
}
