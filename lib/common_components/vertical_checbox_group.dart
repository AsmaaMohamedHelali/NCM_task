import 'package:flutter/material.dart';
import 'package:ncm/common_components/app_space.dart';
import 'package:ncm/common_components/checkbox_item.dart';

class VerticalCheckBoxGroup extends StatelessWidget {
  final List<String> checkList;
  final int currentIndex;
  final Function onTap;

  const VerticalCheckBoxGroup(
      {required this.checkList,
      this.currentIndex = 0,
      required this.onTap,
      super.key});

  @override
  Widget build(BuildContext context) {
    return ListView.builder(
        shrinkWrap: true,
        physics: const NeverScrollableScrollPhysics(),
        itemCount: checkList.length,
        itemBuilder: (context, index) {
          return Column(
            children: [
              InkWell(
                  onTap: () {
                    onTap(index);
                  },
                  child: CheckBoxItem(
                      title: checkList[index], value: index == currentIndex)),
              const AppSpace(height: 8),
            ],
          );
        });
  }
}
