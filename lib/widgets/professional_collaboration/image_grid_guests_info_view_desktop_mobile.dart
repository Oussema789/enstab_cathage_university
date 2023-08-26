import 'package:enstab_wbr_helix/models/Professional_collaborations/forum_model.dart';
import 'package:flutter/material.dart';
import 'package:responsive_builder/responsive_builder.dart';
import 'package:velocity_x/velocity_x.dart';

class ImageGridGuestsInfoView extends StatelessWidget {
  final List<EnstabGuests> guestInfo;

  ImageGridGuestsInfoView({required this.guestInfo});

  @override
  Widget build(BuildContext context) {
    return ResponsiveBuilder(
      builder: (context, SizingInformation) {
        if (SizingInformation.deviceScreenType == DeviceScreenType.mobile) {
          return GridView.builder(
            gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(
              crossAxisCount: 2,
              crossAxisSpacing: 5.0,
              mainAxisSpacing: 5.0,
            ),
            shrinkWrap: true,
            physics: NeverScrollableScrollPhysics(),
            itemCount: guestInfo.length,
            itemBuilder: (context, index) {
              return Column(
                children: [
                  Container(
                    width: context.screenWidth * 2 / 8.5,
                    height: context.screenWidth * 2 / 8.5,
                    decoration: BoxDecoration(
                      shape: BoxShape.circle,
                      image: DecorationImage(
                        image: AssetImage(guestInfo[index].image),
                        fit: BoxFit.cover,
                      ),
                    ),
                  ),
                  Text(
                    guestInfo[index].name,
                    style: TextStyle(
                      fontSize: 14,
                      fontWeight: FontWeight.bold,
                    ),
                  ).py4(),
                  Text(
                    guestInfo[index].position,
                    style: TextStyle(
                      color: Colors.grey,
                      fontSize: 10,
                    ),
                    textAlign: TextAlign.center,
                  ).py4(),
                ],
              );
            },
          );
        }
        return GridView.builder(
          gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(
            crossAxisCount: 4,
            crossAxisSpacing: 10.0,
            mainAxisSpacing: 10.0,
          ),
          shrinkWrap: true,
          physics: NeverScrollableScrollPhysics(),
          itemCount: guestInfo.length,
          itemBuilder: (context, index) {
            return Column(
              children: [
                Container(
                  width: context.screenWidth / 8.5,
                  height: context.screenWidth / 8.5,
                  decoration: BoxDecoration(
                    shape: BoxShape.circle,
                    image: DecorationImage(
                      image: AssetImage(guestInfo[index].image),
                      fit: BoxFit.cover,
                    ),
                  ),
                ),
                Text(
                  guestInfo[index].name,
                  style: TextStyle(
                    fontSize: 25,
                    fontWeight: FontWeight.bold,
                  ),
                ).py12(),
                Text(
                  guestInfo[index].position,
                  style: TextStyle(
                    color: Colors.grey,
                    fontSize: 16,
                  ),
                  textAlign: TextAlign.center,
                ).py12(),
              ],
            );
          },
        );
      },
    );
  }
}
