import 'package:design_system/design_system.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:flutter_highlighter/flutter_highlighter.dart';
import 'package:flutter_highlighter/themes/atom-one-light.dart';
import 'package:flutter_markdown/flutter_markdown.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:markdown/markdown.dart' as md;
import 'package:mix/mix.dart';
import 'package:url_launcher/url_launcher_string.dart';

class DSMarkdownBody extends StatelessWidget {
  const DSMarkdownBody({
    super.key,
    required this.data,
    this.scrollable = false,
  });

  final String data;
  final bool scrollable;

  @override
  Widget build(BuildContext context) {
    final textSpec = TextSpec.of(context);

    var builders = {
      'code': CodeElementBuilder(context),
    };
    final onTapLink = (text, href, title) => switch (href) {
          final href? => launchUrlString(href),
          _ => null,
        };

    var markdownStyleSheet = MarkdownStyleSheet(
      h1: TextStyleVariant.h4
          .resolve(context)
          .copyWith(color: textSpec.style?.color),
      h2: TextStyleVariant.h4
          .resolve(context)
          .copyWith(color: textSpec.style?.color),
      h3: TextStyleVariant.h4
          .resolve(context)
          .copyWith(color: textSpec.style?.color),
      h4: TextStyleVariant.h4
          .resolve(context)
          .copyWith(color: textSpec.style?.color),
      h5: TextStyleVariant.h5
          .resolve(context)
          .copyWith(color: textSpec.style?.color),
      h6: TextStyleVariant.h6
          .resolve(context)
          .copyWith(color: textSpec.style?.color),
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
      p: TextStyleVariant.p
          .resolve(context)
          .copyWith(color: textSpec.style?.color),
      listBullet: TextStyleVariant.p
          .resolve(context)
          .copyWith(color: textSpec.style?.color),
      blockSpacing: SpaceVariant.gap.resolve(context),
      listBulletPadding: EdgeInsets.symmetric(
        horizontal: SpaceVariant.small.resolve(context),
      ),
    );
    return switch (scrollable) {
      false => MarkdownBody(
          data: data,
          builders: builders,
          onTapLink: onTapLink,
          styleSheet: markdownStyleSheet,
        ),
      true => Markdown(
          data: data,
          builders: builders,
          onTapLink: onTapLink,
          styleSheet: markdownStyleSheet,
        ),
    };
  }
}

class CodeElementBuilder extends MarkdownElementBuilder {
  final BuildContext context;

  CodeElementBuilder(this.context);

  @override
  Widget? visitElementAfter(md.Element element, TextStyle? preferredStyle) {
    final scale = DesignSystemTheme.of(context).scale;

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
            padding: EdgeInsets.all(SpaceVariant.small.resolve(context)),

            // Specify text style
            textStyle: GoogleFonts.robotoMono(fontSize: 16).apply(
              heightFactor: scale,
              fontSizeFactor: scale,
            ),
            tabSize: 16,
          ),
          Row(
            mainAxisAlignment: MainAxisAlignment.end,
            children: [
              Padding(
                padding: EdgeInsets.all(SpaceVariant.small.resolve(context)),
                child: IconButton(
                  icon: StyledIcon(
                    Icons.copy,
                    style: Style(
                      $icon.size(SpaceVariant.medium.resolve(context)),
                      $icon.color.ref(ColorVariant.onSurface),
                    ),
                  ),
                  onPressed: () {
                    Clipboard.setData(ClipboardData(text: element.textContent));
                    ScaffoldMessenger.of(context).showSnackBar(
                      SnackBar(
                        content: Text('Copied to clipboard'),
                      ),
                    );
                  },
                ),
              ),
            ],
          ),
        ],
      ),
    );
  }
}
