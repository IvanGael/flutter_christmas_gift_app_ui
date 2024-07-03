import 'package:flutter/material.dart';

class CustomListView<T> extends StatelessWidget {
  final List<T> items;
  final Widget Function(BuildContext context, int index, T item) itemBuilder;
  final double columnSpacing;

  const CustomListView({
    required this.items,
    required this.itemBuilder,
    this.columnSpacing = 10.0,
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return ListView.builder(
      scrollDirection: Axis.vertical,
      itemCount: (items.length / 2).ceil(),
      shrinkWrap: true,
      itemBuilder: (context, index) {
        final int firstIndex = index * 2;
        final int secondIndex = firstIndex + 1;

        return Row(
          children: [
            Expanded(
              child: firstIndex < items.length
                  ? itemBuilder(context, firstIndex, items[firstIndex])
                  : Container(),
            ),
            SizedBox(width: columnSpacing),
            Expanded(
              child: secondIndex < items.length
                  ? itemBuilder(context, secondIndex, items[secondIndex])
                  : Container(),
            ),
          ],
        );
      },
    );
  }
}
