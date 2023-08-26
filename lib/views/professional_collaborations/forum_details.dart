import 'package:enstab_wbr_helix/models/Professional_collaborations/forum_model.dart';
import 'package:enstab_wbr_helix/widgets/professional_collaboration/image_grid_guests_info_view_desktop_mobile.dart';
import 'package:enstab_wbr_helix/widgets/professional_collaboration/images_grid_view_desktop_mobile.dart';
import 'package:enstab_wbr_helix/widgets/professional_collaboration/row_parterns_Logo_desktop_mobile.dart';
import 'package:enstab_wbr_helix/widgets/voluntary_widgets.dart';
import 'package:flutter/material.dart';
import 'package:velocity_x/velocity_x.dart';

class ForumView extends StatelessWidget {
  final Forum forum;

  const ForumView({Key? key, required this.forum}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Theme(
      data: ThemeData(
        primarySwatch: Colors.blue,
      ),
      child: Scaffold(
        body: SingleChildScrollView(
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              SizedBox(
                width: context.screenWidth,
                child: Image.asset(
                  forum.image,
                  fit: BoxFit.cover,
                ).py32(),
              ),
              Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  Text(
                    forum.name,
                    style: TextStyle(
                      fontSize: 24,
                      fontWeight: FontWeight.bold,
                    ),
                  ),
                  Container(
                    padding: EdgeInsets.all(16),
                    child: Text(
                      "Theme",
                      style: TextStyle(
                        fontSize: 16,
                        fontWeight: FontWeight.bold,
                      ),
                    ),
                  ),
                  Container(
                    padding: EdgeInsets.all(16),
                    child: Text(
                      forum.description,
                      style: TextStyle(
                        fontSize: 16,
                      ),
                    ),
                  ),
                ],
              ),
              SizedBox(height: 20),
              ImageGridView(images: forum.images),
              SizedBox(height: 20),
              forum.name == 'Forum 4'
                  ? dividerWidget('FORUM 4 GUESTS')
                  : dividerWidget('FORUM 5 GUESTS'),
              ImageGridView(images: forum.imagesOfGuests),
              dividerWidget('HONORED GUESTS'),
              ImageGridGuestsInfoView(guestInfo: forum.guests),
              SizedBox(height: 20),
              dividerWidget('ENSTAB PARTNERS'),
              rowParternsLogo(forum),
              ImageGridView(images: forum.imagesEntreprises),
            ],
          ).p16(),
        ),
      ),
    );
  }
}
