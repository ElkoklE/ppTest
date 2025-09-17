import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

void showCurrencyPicker(BuildContext context, List<String> items,
    String? current, ValueChanged<String> onSelected) {
  final List<String> displayItems = ['', ...items, ''];
  final int baseIndex =
      current != null && items.contains(current) ? items.indexOf(current) : 0;
  final int initialIndex = baseIndex + 1;
  final controller = FixedExtentScrollController(initialItem: initialIndex);
  showCupertinoModalPopup(
    context: context,
    builder: (context) => Container(
      color: Theme.of(context).colorScheme.surface,
      height: 300,
      child: Column(
        children: [
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              TextButton(
                  onPressed: () => Navigator.pop(context),
                  child: const Text('Cancel')),
              TextButton(
                onPressed: () {
                  final idx = controller.selectedItem;
                  final clamped = idx.clamp(1, displayItems.length - 2);
                  onSelected(items[(clamped - 1).toInt()]);
                  Navigator.pop(context);
                },
                child: const Text('Confirm'),
              ),
            ],
          ),
          const Divider(height: 1),
          Expanded(
            child: CupertinoPicker(
              scrollController: controller,
              itemExtent: 40,
              useMagnifier: false,
              onSelectedItemChanged: (_) {},
              children: displayItems
                  .map((e) => Padding(
                        padding: const EdgeInsets.symmetric(horizontal: 12),
                        child: Center(
                            child: Text(e, overflow: TextOverflow.visible)),
                      ))
                  .toList(),
            ),
          ),
        ],
      ),
    ),
  );
}
