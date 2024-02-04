import 'package:flutter/material.dart';
import 'package:ncm/common_components/app_space.dart';
import 'package:ncm/common_components/checkbox_item.dart';
import 'package:ncm/utils/size_config/app_size_config.dart';

class HorizontalCheckBoxGroup extends StatelessWidget {
  final List<String> checkList;
  final int currentIndex;
  final Function onTap;

  const HorizontalCheckBoxGroup(
      {required this.checkList,
      this.currentIndex = 0,
      required this.onTap,
      super.key});

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      width: AppSizeConfig.width(context: context, pixels: 300),
      height: AppSizeConfig.height(context: context, pixels: 30),
      child: ListView.builder(
          scrollDirection: Axis.horizontal,
          itemCount: checkList.length,
          itemBuilder: (context, index) {
            return Row(
              mainAxisAlignment: MainAxisAlignment.start,
              children: [
                SizedBox(
                  width: AppSizeConfig.width(context: context, pixels: 150),
                  child: InkWell(
                    onTap: () {
                      onTap(index);
                    },
                    child: CheckBoxItem(
                        title: checkList[index], value: index == currentIndex),
                  ),
                ),
                const AppSpace(width: 8),
              ],
            );
          }),
    );
  }
}
