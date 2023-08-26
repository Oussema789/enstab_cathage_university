import 'dart:ui';

import 'package:enstab_wbr_helix/widgets/fade_transition.dart';
import 'package:flutter/material.dart';

Container myStudentExchangeContainerDesktopMobile(
    double fontsize,
    double height,
    ScrollController _scrollController,
    List<String> myList,
    List<Widget> itemRoutes,
    List<String> imagePaths) {
  return Container(
    padding: const EdgeInsets.all(12.0),
    child: SingleChildScrollView(
      child: ListView.builder(
        controller: _scrollController,
        scrollDirection: Axis.vertical,
        shrinkWrap: true,
        itemCount: myList.length,
        itemBuilder: (BuildContext context, int index) {
          return Container(
            height: height,
            padding: EdgeInsets.all(10),
            margin: EdgeInsets.symmetric(vertical: 5, horizontal: 10),
            decoration: BoxDecoration(
              color: Colors.grey[200],
              borderRadius: BorderRadius.circular(10),
            ),
            child: InkWell(
              onTap: () {
                fadeNavigation(context, itemRoutes[index]);
              },
              child: Stack(
                children: [
                  // Blurred image background
                  Container(
                    decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(10),
                      image: DecorationImage(
                        image: AssetImage(imagePaths[index]),
                        fit: BoxFit.cover,
                      ),
                    ),
                    child: ClipRRect(
                      borderRadius: BorderRadius.circular(10),
                      child: BackdropFilter(
                        filter: ImageFilter.blur(sigmaX: 5, sigmaY: 5),
                        child: Container(
                          color: Colors.black.withOpacity(0.2),
                        ),
                      ),
                    ),
                  ),

                  Center(
                    child: Text(
                      myList[index],
                      style: TextStyle(
                        fontSize: 24,
                        fontWeight: FontWeight.bold,
                        color: Colors.white,
                      ),
                    ),
                  ),
                ],
              ),
            ),
          );
        },
      ),
    ),
  );
}
