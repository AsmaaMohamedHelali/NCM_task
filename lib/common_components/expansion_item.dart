import 'package:flutter/material.dart';
import 'package:ncm/common_components/controllers/expansion_item_stream.dart';
import 'package:ncm/utils/colors/app_colors.dart';
import 'package:ncm/utils/images/app_images.dart';

class ExpansionItem extends StatefulWidget {
  final String title;
  final List<Widget>? children;
  final bool initiallyExpanded;

  const ExpansionItem(
      {required this.title,
      this.children,
      this.initiallyExpanded = false,
      super.key});

  @override
  State<ExpansionItem> createState() => _ExpansionItemState();
}

class _ExpansionItemState extends State<ExpansionItem> {
  late ExpansionItemStream _expansionItemStream;

  @override
  void initState() {
    super.initState();
    _expansionItemStream =
        ExpansionItemStream(initialState: widget.initiallyExpanded);
  }

  @override
  Widget build(BuildContext context) {
    return Theme(
      data: ThemeData().copyWith(dividerColor: Colors.transparent),
      child: StreamBuilder<bool>(
          stream: _expansionItemStream.isExpandedStream,
          builder: (context, snapshot) {
            final isExpanded = snapshot.data ?? widget.initiallyExpanded;
            return ExpansionTile(
              initiallyExpanded: widget.initiallyExpanded,
              tilePadding: EdgeInsets.zero,
              trailing: (isExpanded)
                  ? Image.asset(
                      AppImages.accordionInActive,
                    )
                  : Image.asset(
                      AppImages.accordionActive,
                    ),
              onExpansionChanged: (isExpanded) {
                _expansionItemStream.updateCurrentExpansionState(isExpanded);
              },
              title: Text(
                widget.title,
                style: Theme.of(context).textTheme.titleMedium?.copyWith(
                      color: AppColors.white,
                    ),
              ),
              children: widget.children ?? [const SizedBox.shrink()],
            );
          }),
    );
  }
}
