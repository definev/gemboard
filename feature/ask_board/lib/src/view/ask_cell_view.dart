import 'package:ask_board/src/domain/model/ask_cell.dart';
import 'package:flextras/flextras.dart';
import 'package:flutter/material.dart';

class AskCellView extends StatelessWidget {
  const AskCellView({
    super.key,
    required this.data,
  });

  final AskCell data;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Ask Cell'),
      ),
      body: Column(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: [
          Expanded(
            child: ListView(
              reverse: true,
              children: [
                for (var index = 0; index < 10; index++)
                  ListTile(
                    title: Text('Item $index'),
                    subtitle: Text('Subtitle $index'),
                  ),
              ],
            ),
          ),
          AskCellPromptField(
            data: data,
          )
        ],
      ),
    );
  }
}

class AskCellPromptField extends StatefulWidget {
  const AskCellPromptField({
    super.key,
    required this.data,
  });

  final AskCell data;

  @override
  State<AskCellPromptField> createState() => _AskCellPromptFieldState();
}

class _AskCellPromptFieldState extends State<AskCellPromptField>
    with SingleTickerProviderStateMixin {
  @override
  Widget build(BuildContext context) {
    return Align(
      alignment: Alignment.bottomCenter,
      child: Column(
        mainAxisSize: MainAxisSize.min,
        children: [
          ExpansionTile(
            title: Text('Input'),
            children: [
              ConstrainedBox(
                constraints: BoxConstraints(
                  maxHeight: 150,
                ),
                child: PageView(
                  children: [
                    PaddedColumn(
                      padding: EdgeInsets.all(12),
                      mainAxisSize: MainAxisSize.min,
                      children: [
                        Card(
                          child: SeparatedColumn(
                            separatorBuilder: () => SizedBox(height: 8),
                            padding: EdgeInsets.all(12),
                            crossAxisAlignment: CrossAxisAlignment.start,
                            children: [
                              ActionChip(
                                label: Text('Text'),
                                onPressed: () {},
                              ),
                              Text(
                                'Lorem ipsum dolor sit amet, consectetur adipiscing elit. Nulla nec odio.',
                              ),
                            ],
                          ),
                        ),
                      ],
                    ),
                    PaddedColumn(
                      padding: EdgeInsets.all(12),
                      mainAxisSize: MainAxisSize.min,
                      children: [
                        Card(
                          child: SeparatedColumn(
                            separatorBuilder: () => SizedBox(height: 8),
                            padding: EdgeInsets.all(12),
                            crossAxisAlignment: CrossAxisAlignment.start,
                            children: [
                              ActionChip(
                                label: Text('Text'),
                                onPressed: () {},
                              ),
                              Text(
                                'Lorem ipsum dolor sit amet, consectetur adipiscing elit. Nulla nec odio.',
                              ),
                            ],
                          ),
                        ),
                      ],
                    )
                  ],
                ),
              ),
            ],
          ),
          Padding(
            padding: const EdgeInsets.symmetric(
              horizontal: 12,
              vertical: 12,
            ),
            child: TextField(
              decoration: InputDecoration(
                labelText: 'Prompt',
                hintText: 'Enter prompt',
              ),
            ),
          ),
        ],
      ),
    );
  }
}
