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
import 'package:super_drag_and_drop/super_drag_and_drop.dart';
import 'package:super_sliver_list/super_sliver_list.dart';

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
    final scale = DesignSystemTheme.of(context).scale;
    final textSpec = TextSpec.of(context);

    var builders = {
      'code': CodeElementBuilder(),
      'a': LinkElementBuilder(),
    };

    final h4 = TextStyleVariant.h5
        .resolve(context)
        .copyWith(color: textSpec.style?.color);
    final h5 = TextStyleVariant.h5
        .resolve(context)
        .copyWith(color: textSpec.style?.color);
    final h6 = TextStyleVariant.h6
        .resolve(context)
        .copyWith(color: textSpec.style?.color);
    final p = TextStyleVariant.p
        .resolve(context)
        .copyWith(color: textSpec.style?.color);
    final p2 = TextStyleVariant.p2
        .resolve(context)
        .copyWith(color: textSpec.style?.color);
    final medium = TextStyleVariant.medium.resolve(context);

    var markdownStyleSheet = MarkdownStyleSheet(
      h1: h4,
      h2: h4,
      h3: h4,
      h4: h4,
      h5: h5,
      h6: h6,
      horizontalRuleDecoration: BoxDecoration(
        border: Border(
          bottom: BorderSide(
            color: ColorVariant.outline.resolve(context).withOpacity(0.5),
            width: 1.5 * scale,
          ),
        ),
      ),
      a: p.copyWith(
        color: CupertinoColors.activeBlue,
        decorationStyle: TextDecorationStyle.dashed,
        decoration: TextDecoration.underline,
        decorationThickness: 1,
        decorationColor: CupertinoColors.activeBlue,
      ),
      code: p.copyWith(
        backgroundColor: CupertinoColors.systemGrey5,
      ),
      p: p,
      listBullet: p.copyWith(color: textSpec.style?.color),
      blockSpacing: SpaceVariant.gap.resolve(context),
      listBulletPadding: EdgeInsets.symmetric(
        horizontal: SpaceVariant.small.resolve(context),
      ),
      tableHead: medium.copyWith(
        fontSize: p2.fontSize,
        height: p2.height,
      ),
      tableBorder: TableBorder.all(
        color: ColorVariant.outline.resolve(context),
        width: 0.5 * scale,
      ),
      tableCellsPadding: EdgeInsets.symmetric(
        horizontal: SpaceVariant.small.resolve(context),
        vertical: SpaceVariant.gap.resolve(context),
      ),
      tableBody: p2.copyWith(color: textSpec.style?.color),
      blockquotePadding: EdgeInsets.only(
        left: SpaceVariant.medium.resolve(context),
        top: SpaceVariant.gap.resolve(context),
        bottom: SpaceVariant.gap.resolve(context),
      ),
      blockquoteDecoration: BoxDecoration(
        color: ColorVariant.surface.resolve(context),
        border: Border(
          left: BorderSide(
            color: ColorVariant.outline.resolve(context),
            width: 2 * scale,
          ),
        ),
      ),
      strong: medium.copyWith(
        fontSize: p.fontSize,
        height: p.height,
      ),
    );
    return switch (scrollable) {
      false => MarkdownBody(
          data: data,
          builders: builders,
          styleSheet: markdownStyleSheet,
        ),
      true => SuperListMarkdown(
          data: data,
          builders: builders,
          styleSheet: markdownStyleSheet,
        ),
    };
  }
}

class SuperListMarkdown extends MarkdownWidget {
  /// Creates a scrolling widget that parses and displays Markdown.
  const SuperListMarkdown({
    super.key,
    required super.data,
    super.selectable,
    super.styleSheet,
    super.styleSheetTheme = null,
    super.syntaxHighlighter,
    super.onSelectionChanged,
    super.onTapLink,
    super.onTapText,
    super.imageDirectory,
    super.blockSyntaxes,
    super.inlineSyntaxes,
    super.extensionSet,
    super.imageBuilder,
    super.checkboxBuilder,
    super.bulletBuilder,
    super.builders,
    super.paddingBuilders,
    super.listItemCrossAxisAlignment,
    this.padding = EdgeInsets.zero,
    this.controller,
    this.physics,
    this.shrinkWrap = false,
    super.softLineBreak,
  });

  /// The amount of space by which to inset the children.
  final EdgeInsets padding;

  /// An object that can be used to control the position to which this scroll view is scrolled.
  ///
  /// See also: [ScrollView.controller]
  final ScrollController? controller;

  /// How the scroll view should respond to user input.
  ///
  /// See also: [ScrollView.physics]
  final ScrollPhysics? physics;

  /// Whether the extent of the scroll view in the scroll direction should be
  /// determined by the contents being viewed.
  ///
  /// See also: [ScrollView.shrinkWrap]
  final bool shrinkWrap;

  @override
  Widget build(BuildContext context, List<Widget>? children) {
    return SuperListView(
      padding: padding,
      controller: controller,
      physics: physics,
      shrinkWrap: shrinkWrap,
      children: children!,
    );
  }
}

class CodeElementBuilder extends MarkdownElementBuilder {
  CodeElementBuilder();

  @override
  Widget? visitElementAfterWithContext(BuildContext context, md.Element element,
      TextStyle? preferredStyle, TextStyle? parentStyle) {
    final scale = DesignSystemTheme.of(context).scale;

    var language = '';

    if (element.attributes['class'] != null) {
      String lg = element.attributes['class'] as String;
      language = lg.substring(9);
    }
    if (!element.textContent.contains('\n')) {
      return null;
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

class LinkElementBuilder extends MarkdownElementBuilder {
  LinkElementBuilder();

  @override
  Widget? visitElementAfterWithContext(
    BuildContext context,
    md.Element element,
    TextStyle? preferredStyle,
    TextStyle? parentStyle,
  ) {
    final text = element.textContent;
    final href = element.attributes['href'];

    return Text.rich(
      WidgetSpan(
        child: DragItemWidget(
          dragItemProvider: (request) async {
            // DragItem represents the content begin dragged.
            final item = DragItem(
              localData: {
                'type': 'markdown',
                'element': {
                  'tag': 'a',
                  'text': text,
                  'href': href,
                },
              },
            );
            item.add(Formats.plainText(href ?? ''));
            return item;
          },
          allowedOperations: () => [DropOperation.copy],
          // DraggableWidget represents the actual draggable area. It looks
          // for parent DragItemWidget in widget hierarchy to provide the DragItem.
          child: DraggableWidget(
            child: Text(
              text,
              style: TextStyleVariant.medium
                  .resolve(context)
                  .merge(preferredStyle),
            ),
          ),
        ),
        alignment: PlaceholderAlignment.baseline,
        baseline: TextBaseline.alphabetic,
      ),
    );
  }
}
