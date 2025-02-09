import 'package:design_system/design_system.dart';
import 'package:flextras/flextras.dart';
import 'package:flutter/material.dart';
import 'package:flutter_hooks/flutter_hooks.dart';
import 'package:hooks_riverpod/hooks_riverpod.dart';
import 'package:iconly/iconly.dart';
import 'package:llm/llm.dart';
import 'package:mix/mix.dart';
import 'package:sliver_tools/sliver_tools.dart';
import 'package:utils/utils.dart';

class SettingsView extends HookConsumerWidget {
  @override
  Widget build(BuildContext context, WidgetRef ref) {
    final geminiApiKeyAsyncValue = ref.watch(getGeminiApiKeyProvider);
    final geminiApiKeyTextController =
        useTextEditingController(text: geminiApiKeyAsyncValue.valueOrNull);
    final geminiModelNameAsyncValue = ref.watch(getGeminiModelNameProvider);
    final geminiModelNameTextController =
        useTextEditingController(text: geminiModelNameAsyncValue.valueOrNull);

    ref.listen(
      getGeminiApiKeyProvider,
      (_, value) {
        geminiApiKeyTextController.text =
            value.valueOrNull ?? geminiApiKeyTextController.text;
      },
    );
    ref.listen(
      getGeminiModelNameProvider,
      (_, value) {
        geminiModelNameTextController.text =
            value.valueOrNull ?? geminiModelNameTextController.text;
      },
    );

    final obscureGeminiApiKey = useState(true);

    final satGeminiKeyDebouncer = useDebouncer();

    return Scaffold(
      backgroundColor: ColorVariant.surface.resolve(context),
      body: CustomScrollView(
        slivers: [
          MultiSliver(
            children: [
              SliverPinnedHeader(
                child: AppBar(
                  backgroundColor: ColorVariant.surface.resolve(context),
                  surfaceTintColor: Colors.transparent,
                  leading: Button(
                    onPressed: () => Navigator.of(context).pop(),
                    child: Icon(IconlyLight.arrow_left_2),
                  ),
                  title: StyledText(
                    'Settings',
                    style: Style(
                      $text.style.ref(TextStyleVariant.h6),
                    ),
                  ),
                ),
              ),
              SliverPadding(
                padding: EdgeInsets.symmetric(
                  horizontal: SpaceVariant.medium.resolve(context),
                  vertical: SpaceVariant.mediumLarge.resolve(context),
                ),
                sliver: MultiSliver(
                  children: [
                    SeparatedColumn(
                      separatorBuilder: () =>
                          SizedBox(height: SpaceVariant.small.resolve(context)),
                      children: [
                        DSTextbox(
                          controller: geminiApiKeyTextController,
                          label: StyledText('Gemini API Key'),
                          obscureText: obscureGeminiApiKey.value,
                          hintText: 'Enter your Gemini API Key',
                          onChanged: (value) async {
                            satGeminiKeyDebouncer.run(
                              () => ref
                                  .read(setGeminiApiKeyProvider(value).future),
                              Durations.medium1,
                            );
                          },
                          trailing: Box(
                            inherit: true,
                            child: GestureDetector(
                              onTap: () => obscureGeminiApiKey.value =
                                  !obscureGeminiApiKey.value,
                              child: StyledIcon(
                                inherit: true,
                                switch (obscureGeminiApiKey.value) {
                                  true => IconlyLight.unlock,
                                  _ => IconlyLight.lock,
                                },
                              ),
                            ),
                          ),
                        ),
                        DSTextbox(
                          controller: geminiModelNameTextController,
                          label: StyledText('Gemini Model Name'),
                          hintText: 'Enter Gemini Model Name',
                          onChanged: (value) => ref
                              .read(setGeminiModelNameProvider(value).future),
                        ),
                      ],
                    ),
                  ],
                ),
              ),
            ],
          ),
        ],
      ),
    );
  }
}
