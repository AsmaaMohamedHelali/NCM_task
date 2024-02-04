import 'package:flutter/material.dart';
import 'package:ncm/common_components/expansion_item.dart';
import 'package:ncm/utils/extensions/app_extensions.dart';

class ContactDetailsItem extends StatelessWidget {
  const ContactDetailsItem({super.key});

  @override
  Widget build(BuildContext context) {
    return  Column(
      children: [
        ExpansionItem(
          title: context.localization.contactDetails,
        ),
        const SizedBox(
          height: 4,
        ),
      ],
    );
  }
}
