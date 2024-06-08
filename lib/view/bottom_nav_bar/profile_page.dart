import 'package:android_intent_plus/android_intent.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';
import 'package:flutter_animate/flutter_animate.dart';
import 'package:get/get.dart';
import 'package:material_design_icons_flutter/material_design_icons_flutter.dart';
import 'package:url_launcher/url_launcher.dart';

import '../../shared/under_development_dialog.dart';

class ProfilePage extends StatelessWidget {
  void general_info_edit() {}

  void contact_detail_edit() {}

  void photo_edit() {}

  void _openLinkedin() async {
    Future<bool> isLinkedInInstalled() async {
      Uri url = Uri.parse('linkedin://');
      if (await canLaunchUrl(url)) {
        return true;
      } else {
        return false;
      }
    }

    String dt = 'https://www.linkedin.com/in/prashant-ranjan-singh-b9b6b9217/';
    bool isInstalled = await isLinkedInInstalled();
    if (isInstalled != false) {
      AndroidIntent intent = AndroidIntent(action: 'action_view', data: dt);
      await intent.launch();
    } else {
      Uri url = Uri.parse(dt);
      if (await canLaunchUrl(url)) {
        await launchUrl(url);
      } else {
        throw 'Could not launch $url';
      }
    }
  }

  void _openGithub() async {
    Future<bool> isGithubInInstalled() async {
      Uri url = Uri.parse('github://');
      if (await canLaunchUrl(url)) {
        return true;
      } else {
        return false;
      }
    }

    String dt =
        'https://github.com/Prashant-ranjan-singh-123/shoe_haven';
    bool isInstalled = await isGithubInInstalled();
    if (isInstalled != false) {
      AndroidIntent intent = AndroidIntent(action: 'action_view', data: dt);
      await intent.launch();
    } else {
      Uri url = Uri.parse(dt);
      if (await canLaunchUrl(url)) {
        await launchUrl(url);
      } else {
        throw 'Could not launch $url';
      }
    }
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      body: SafeArea(
        child: SingleChildScrollView(
          child: Padding(
            padding: const EdgeInsets.symmetric(
              horizontal: 24.0,
            ),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                profile_photo()
                    .animate()
                    .fadeIn(duration: 2000.ms)
                    .slideY(duration: 1000.ms, curve: Curves.decelerate),
                heading_with_button(
                        'General Information', CupertinoIcons.profile_circled)
                    .animate()
                    .flip(
                        delay: 450.ms,
                        duration: 500.ms,
                        curve: Curves.decelerate)
                    .fadeIn(
                        delay: 450.ms,
                        duration: 1000.ms,
                        curve: Curves.decelerate),
                const SizedBox(
                  height: 20,
                ),
                WidgetCards(context, 10, 10, 10, 10, 'Name',
                        'Prashant Ranjan Singh')
                    .animate()
                    .flip(
                        delay: 450.ms,
                        duration: 500.ms,
                        curve: Curves.decelerate)
                    .fadeIn(
                        delay: 450.ms,
                        duration: 1000.ms,
                        curve: Curves.decelerate),
                WidgetCards(
                        context, 10, 10, 10, 10, 'Date of Birth', '25/05/2002')
                    .animate()
                    .flip(
                        delay: 500.ms,
                        duration: 500.ms,
                        curve: Curves.decelerate)
                    .fadeIn(
                        delay: 500.ms,
                        duration: 1000.ms,
                        curve: Curves.decelerate),
                WidgetCards(context, 10, 10, 10, 10, 'Age', '22')
                    .animate()
                    .flip(
                        delay: 550.ms,
                        duration: 500.ms,
                        curve: Curves.decelerate)
                    .fadeIn(
                        delay: 550.ms,
                        duration: 1000.ms,
                        curve: Curves.decelerate),
                WidgetCards(context, 10, 10, 10, 10, 'Height', '6\'1')
                    .animate()
                    .flip(
                        delay: 600.ms,
                        duration: 500.ms,
                        curve: Curves.decelerate)
                    .fadeIn(
                        delay: 650.ms,
                        duration: 1000.ms,
                        curve: Curves.decelerate),
                WidgetCards(context, 10, 10, 10, 10, 'Weight', '75kg')
                    .animate()
                    .flip(
                        delay: 700.ms,
                        duration: 500.ms,
                        curve: Curves.decelerate)
                    .fadeIn(
                        delay: 700.ms,
                        duration: 1000.ms,
                        curve: Curves.decelerate),
                heading_with_button('Shoe Sizes', MdiIcons.shoeFormal)
                    .animate()
                    .flip(
                        delay: 750.ms,
                        duration: 500.ms,
                        curve: Curves.decelerate)
                    .fadeIn(
                        delay: 750.ms,
                        duration: 1000.ms,
                        curve: Curves.decelerate),
                const SizedBox(
                  height: 20,
                ),
                WidgetCards(context, 10, 10, 10, 10, 'IN', '12')
                    .animate()
                    .flip(
                        delay: 800.ms,
                        duration: 500.ms,
                        curve: Curves.decelerate)
                    .fadeIn(
                        delay: 800.ms,
                        duration: 1000.ms,
                        curve: Curves.decelerate),
                WidgetCards(context, 10, 10, 10, 10, 'US', '13')
                    .animate()
                    .flip(
                        delay: 850.ms,
                        duration: 500.ms,
                        curve: Curves.decelerate)
                    .fadeIn(
                        delay: 850.ms,
                        duration: 1000.ms,
                        curve: Curves.decelerate),
                WidgetCards(context, 10, 10, 10, 10, 'UK', '12')
                    .animate()
                    .flip(
                        delay: 900.ms,
                        duration: 500.ms,
                        curve: Curves.decelerate)
                    .fadeIn(
                        delay: 900.ms,
                        duration: 1000.ms,
                        curve: Curves.decelerate),
                WidgetCards(context, 10, 10, 10, 10, 'EU', '48')
                    .animate()
                    .flip(
                        delay: 950.ms,
                        duration: 500.ms,
                        curve: Curves.decelerate)
                    .fadeIn(
                        delay: 950.ms,
                        duration: 1000.ms,
                        curve: Curves.decelerate),
                heading_with_button('Contact Detail', MdiIcons.database)
                    .animate()
                    .flip(
                        delay: 1000.ms,
                        duration: 500.ms,
                        curve: Curves.decelerate)
                    .fadeIn(
                        delay: 1000.ms,
                        duration: 1000.ms,
                        curve: Curves.decelerate),
                const SizedBox(
                  height: 20,
                ),
                WidgetCards(context, 10, 10, 10, 10, 'Mobile Number',
                        '+917067597028')
                    .animate()
                    .flip(
                        delay: 1050.ms,
                        duration: 500.ms,
                        curve: Curves.decelerate)
                    .fadeIn(
                        delay: 1050.ms,
                        duration: 1000.ms,
                        curve: Curves.decelerate),
                WidgetCards(context, 10, 10, 10, 10, 'Country', 'India')
                    .animate()
                    .flip(
                        delay: 1100.ms,
                        duration: 500.ms,
                        curve: Curves.decelerate)
                    .fadeIn(
                        delay: 1100.ms,
                        duration: 1000.ms,
                        curve: Curves.decelerate),
                WidgetCards(context, 10, 10, 10, 10, 'State', 'Madhya Pradesh')
                    .animate()
                    .flip(
                        delay: 1150.ms,
                        duration: 500.ms,
                        curve: Curves.decelerate)
                    .fadeIn(
                        delay: 1150.ms,
                        duration: 1000.ms,
                        curve: Curves.decelerate),
                WidgetCards(context, 10, 10, 10, 10, 'City', 'Indore')
                    .animate()
                    .flip(
                        delay: 1200.ms,
                        duration: 500.ms,
                        curve: Curves.decelerate)
                    .fadeIn(
                        delay: 1200.ms,
                        duration: 1000.ms,
                        curve: Curves.decelerate),
                WidgetCards(context, 10, 10, 10, 10, 'Pin code', '432018')
                    .animate()
                    .flip(
                        delay: 1250.ms,
                        duration: 500.ms,
                        curve: Curves.decelerate)
                    .fadeIn(
                        delay: 1250.ms,
                        duration: 1000.ms,
                        curve: Curves.decelerate),
                heading_with_button('Your Support', MdiIcons.developerBoard)
                    .animate()
                    .flip(
                        delay: 1300.ms,
                        duration: 500.ms,
                        curve: Curves.decelerate)
                    .fadeIn(
                        delay: 1300.ms,
                        duration: 1000.ms,
                        curve: Curves.decelerate),
                const SizedBox(
                  height: 20,
                ),
                settingsCardWidget(context, title: 'Contribute To Project',
                        onTap: () {
                  _openGithub();
                },
                        trailing: Image.asset(
                          'assets/image/github.png',
                          color: Colors.white,
                        ))
                    .animate()
                    .flip(
                        delay: 1350.ms,
                        duration: 500.ms,
                        curve: Curves.decelerate)
                    .fadeIn(
                        delay: 1350.ms,
                        duration: 1000.ms,
                        curve: Curves.decelerate),
                settingsCardWidget(context,
                        title: 'Connect On Linkedin',
                        onTap: () {
                          _openLinkedin();
                        },
                        trailing: Image.asset(
                          'assets/image/linkedin.png',
                        ))
                    .animate()
                    .flip(
                        delay: 1400.ms,
                        duration: 500.ms,
                        curve: Curves.decelerate)
                    .fadeIn(
                        delay: 1400.ms,
                        duration: 1000.ms,
                        curve: Curves.decelerate),
                settingsCardWidget(
                  context,
                  title: 'Report A Bug',
                  onTap: (){
                    Development.showDialogBox();
                  },
                  trailing: const Icon(
                    CupertinoIcons.ant_fill,
                    color: Colors.white,
                  )
                      .animate()
                      .flip(
                          delay: 1450.ms,
                          duration: 500.ms,
                          curve: Curves.decelerate)
                      .fadeIn(
                          delay: 1450.ms,
                          duration: 1000.ms,
                          curve: Curves.decelerate),
                ),
                thank_you()
                    .animate()
                    .flip(
                        delay: 1500.ms,
                        duration: 500.ms,
                        curve: Curves.decelerate)
                    .fadeIn(
                        delay: 1500.ms,
                        duration: 1000.ms,
                        curve: Curves.decelerate)
              ],
            ),
          ),
        ),
      ),
    );
  }

  Widget profile_photo() {
    return Column(
      children: [
        const SizedBox(
          height: 30,
        ),
        Center(
          child: ClipRRect(
            borderRadius: BorderRadius.circular(20),
            child: SizedBox(
              height: Get.width * 0.8,
              width: Get.width * 0.8,
              child: Image.asset('assets/image/profile_photo.jpeg'),
            ),
          ),
        ),
      ],
    );
  }

  Widget heading_with_button(String heading, IconData icon) {
    return Column(
      children: [
        const SizedBox(
          height: 50,
        ),
        Row(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: [
            Text(
              heading,
              style: const TextStyle(
                fontSize: 22,
                fontWeight: FontWeight.w700,
                fontFamily: 'Merriweather',
                color: Colors.black,
              ),
            ),
            IconButton(
              icon: Icon(
                icon,
                color: const Color.fromRGBO(108, 106, 106, 1),
                size: 32,
              ),
              onPressed: () {
                // Add your edit functionality here
              },
            )
          ],
        ),
      ],
    );
  }

  Widget WidgetCards(
    BuildContext context,
    int topLeft,
    int topRight,
    int bottomLeft,
    int bottomRight,
    String firstItem,
    String secondItem,
  ) {
    return Column(
      children: [
        Center(
          child: Container(
            width: MediaQuery.of(context).size.width * 0.9,
            // height: 35,
            decoration: BoxDecoration(
              color: Color.fromRGBO(236, 236, 236, 1),
              borderRadius: BorderRadius.only(
                topRight: Radius.circular(topRight.toDouble()),
                topLeft: Radius.circular(topLeft.toDouble()),
                bottomRight: Radius.circular(bottomRight.toDouble()),
                bottomLeft: Radius.circular(bottomLeft.toDouble()),
              ),
            ),
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Padding(
                  padding: const EdgeInsets.all(8.0),
                  child: Text(
                    firstItem,
                    style: TextStyle(
                        fontWeight: FontWeight.w900,
                        fontSize: 20,
                        fontFamily: 'Oswald'),
                  ),
                ),
                Padding(
                  padding: const EdgeInsets.all(8.0),
                  child: Text(secondItem,
                      style: const TextStyle(
                          fontWeight: FontWeight.w600,
                          fontSize: 15,
                          fontFamily: 'OpenSans',
                          color: Color.fromRGBO(108, 106, 106, 1))),
                ),
                // Add more child widgets as needed
              ],
            ),
          ),
        ),
        const SizedBox(
          height: 15,
        ),
      ],
    );
  }

  Widget settingsCardWidget(
    BuildContext context, {
    Widget? leading,
    required String title,
    String? trailingText,
    Widget? trailing,
    BorderRadiusGeometry borderRadius =
        const BorderRadius.all(Radius.circular(10)),
    Color? backgroundColor,
    VoidCallback? onTap,
  }) {
    return Column(
      children: [
        InkWell(
          onTap: onTap,
          child: Card(
            elevation: 20,
            color: Color.fromRGBO(108, 106, 106, 1),
            child: Column(
              children: [
                Container(
                  width: MediaQuery.of(context).size.width * 0.9,
                  decoration: BoxDecoration(
                    color: backgroundColor ?? Colors.black,
                    borderRadius: borderRadius,
                  ),
                  child: Padding(
                    padding: const EdgeInsets.symmetric(vertical: 5),
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        Expanded(
                          child: Row(
                            children: [
                              Padding(
                                padding: const EdgeInsets.all(8.0),
                                child: leading ?? SizedBox.shrink(),
                              ),
                              Text(
                                title,
                                style: const TextStyle(
                                    fontWeight: FontWeight.w900,
                                    fontSize: 20,
                                    color: Colors.white,
                                    fontFamily: 'Oswald'),
                              ),
                            ],
                          ),
                        ),
                        if (trailingText != null)
                          Text(
                            trailingText!,
                            style: const TextStyle(
                              color: Color.fromRGBO(108, 106, 106, 1),
                              fontSize: 14,
                              fontWeight: FontWeight.w400,
                            ),
                          ),
                        if (trailing != null)
                          Padding(
                            padding: const EdgeInsets.all(8.0),
                            child: SizedBox.square(
                              dimension: 24,
                              child: trailing!,
                            ),
                          ),
                      ],
                    ),
                  ),
                ),
                SizedBox(height: 5),
              ],
            ),
          ),
        ),
        const SizedBox(
          height: 5,
        ),
      ],
    );
  }

  Widget thank_you() {
    return const Column(
      children: [
        SizedBox(
          height: 20,
        ),
        Center(
            child: Text(
          '----Thank You----',
          style: TextStyle(fontSize: 30, fontFamily: 'OpenSans'),
        )),
        SizedBox(
          height: 10,
        ),
      ],
    );
  }
}
