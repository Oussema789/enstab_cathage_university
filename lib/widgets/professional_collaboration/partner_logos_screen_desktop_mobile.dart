import 'package:flutter/material.dart';
import 'package:responsive_builder/responsive_builder.dart';

class PartnerLogosScreen extends StatelessWidget {
  List<String> list;
  PartnerLogosScreen({super.key, required this.list});

  @override
  Widget build(BuildContext context) {
    return ResponsiveBuilder(
      builder: (context, SizingInformation) {
        if (SizingInformation.deviceScreenType == DeviceScreenType.mobile) {
          return SingleChildScrollView(
            scrollDirection: Axis.vertical,
            child: Wrap(
              spacing: 16.0,
              runSpacing: 16.0,
              children: list.map((logoPath) {
                return Image.asset(logoPath, height: 50, width: 50);
              }).toList(),
            ),
          );
        }
        return SingleChildScrollView(
          scrollDirection: Axis.vertical,
          child: Padding(
            padding: EdgeInsets.all(16.0),
            child: Wrap(
              spacing: 16.0,
              runSpacing: 16.0,
              children: list.map((logoPath) {
                return Container(
                  child: Image.asset(logoPath, height: 100, width: 100),
                );
              }).toList(),
            ),
          ),
        );
      },
    );
  }
}
