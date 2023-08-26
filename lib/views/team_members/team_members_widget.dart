import 'package:enstab_wbr_helix/models/enstab_profs_models/enstab_profs_model.dart';
import 'package:flutter/material.dart';
import 'package:responsive_builder/responsive_builder.dart';
import 'package:url_launcher/url_launcher.dart';
import 'package:velocity_x/velocity_x.dart';

class TeamMemberWidget extends StatelessWidget {
  final String imageUrl;
  final String name;
  final String position;
  final String email;

  TeamMemberWidget({
    required this.imageUrl,
    required this.name,
    required this.position,
    required this.email,
  });

  void _launchEmail() async {
    final Uri _emailLaunchUri = Uri(
      scheme: 'mailto',
      path: email,
    );
    if (await canLaunch(_emailLaunchUri.toString())) {
      await launch(_emailLaunchUri.toString());
    } else {
      throw 'Could not launch email';
    }
  }

  @override
  Widget build(BuildContext context) {
    return ResponsiveBuilder(
      builder: (context, SizingInformation) {
        if (SizingInformation.deviceScreenType == DeviceScreenType.mobile) {
          return containerEnstabTeamInfo(context, 3, 20);
        }
        return containerEnstabTeamInfo(context, 1, 30);
      },
    );
  }

  Container containerEnstabTeamInfo(
    BuildContext context,
    int n,
    double fontsize,
  ) {
    return Container(
      padding:
          const EdgeInsets.symmetric(vertical: 20), // Adjust padding as needed
      child: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          Container(
            width: context.screenWidth * n / 8.5,
            height: context.screenWidth * n / 8.5,
            decoration: BoxDecoration(
              shape: BoxShape.circle,
              image: DecorationImage(
                image: AssetImage(imageUrl),
                fit: BoxFit.cover,
              ),
            ),
          ),
          SizedBox(height: 8),
          Text(
            name,
            style: TextStyle(fontSize: fontsize, fontWeight: FontWeight.bold),
          ),
          SizedBox(height: 8),
          Text(
            position,
            style: TextStyle(
              fontWeight: FontWeight.bold,
              fontSize: 16,
              color: Colors.black,
            ),
          ),
          SizedBox(height: 8),
          GestureDetector(
            onTap: _launchEmail,
            child: Text(
              email,
              style: TextStyle(
                fontSize: 16,
                color: Colors.grey,
                decoration: TextDecoration.underline,
              ),
            ),
          ),
        ],
      ),
    );
  }
}

Widget meetTheTeamGridView() {
  return ResponsiveBuilder(
    builder: (context, SizingInformation) {
      if (SizingInformation.deviceScreenType == DeviceScreenType.mobile) {
        return meetEnstabTeamWidget(1);
      }
      return Container(
        padding: const EdgeInsets.all(12.0),
        child: GridView.builder(
          shrinkWrap: true,
          physics: NeverScrollableScrollPhysics(),
          itemCount: enstabProfList.length,
          gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(
            crossAxisCount: 3,
            crossAxisSpacing: 4.0,
            mainAxisSpacing: 12.0,
          ),
          itemBuilder: (BuildContext context, int index) {
            return TeamMemberWidget(
              email: enstabProfList[index].email,
              name: enstabProfList[index].name,
              imageUrl: enstabProfList[index].imagePath,
              position: enstabProfList[index].position,
            );
          },
        ),
      );
    },
  );
}

Container meetEnstabTeamWidget(int n) {
  return Container(
    padding: const EdgeInsets.all(12.0),
    child: GridView.builder(
      shrinkWrap: true,
      physics: NeverScrollableScrollPhysics(),
      itemCount: enstabProfList.length,
      gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(
        crossAxisCount: n,
        crossAxisSpacing: 4.0,
        mainAxisSpacing: 12.0,
      ),
      itemBuilder: (BuildContext context, int index) {
        return TeamMemberWidget(
          email: enstabProfList[index].email,
          name: enstabProfList[index].name,
          imageUrl: enstabProfList[index].imagePath,
          position: enstabProfList[index].position,
        );
      },
    ),
  );
}
