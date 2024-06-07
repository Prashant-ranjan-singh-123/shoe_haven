import 'package:carousel_slider/carousel_slider.dart';
import 'package:flutter/material.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/painting.dart';
import 'package:flutter/widgets.dart';
import 'package:flutter_animate/flutter_animate.dart';
import 'package:get/get.dart';
import 'package:get/get_navigation/get_navigation.dart';
import 'package:material_design_icons_flutter/material_design_icons_flutter.dart';
import 'package:projects/shared/isFirstRunConfig.dart';
import 'package:projects/shared/tutorial_coach_screens.dart';
import 'package:projects/view/bottom_nav_bar/shared_page/expand_page.dart';
import 'package:tutorial_coach_mark/tutorial_coach_mark.dart';

class HomeScreen extends StatefulWidget {
  HomeScreen({super.key});

  @override
  State<HomeScreen> createState() => _HomeScreenState();
}

class _HomeScreenState extends State<HomeScreen> {
  // PageController con = PageController();
  final Map<int, dynamic> _categories = {
    0: ['Sports', '45 items'],
    1: ['Running', '49 items'],
    2: ['Lifestyle', '13 items'],
    3: ['Casual', '39 items'],
    4: ['Basketball', '29 items'],
    5: ["Gym", '63 items'],
    6: ['Football', '46 items'],
    7: ['Golf', '68 items'],
    8: ['Tennis', '33 items'],
  };

  final Map<int, dynamic> _showcase = {
    0: [
      'assets/image/nike_soes/showcase_image/1.png',
      '\$50',
      'Nike White Air',
      false
    ],
    1: [
      'assets/image/nike_soes/showcase_image/2.png',
      '\$142',
      'Jordan Jumpman',
      false
    ],
    2: [
      'assets/image/nike_soes/showcase_image/3.png',
      '\$370',
      'Nike Air More',
      false
    ],
    3: [
      'assets/image/nike_soes/showcase_image/4.png',
      '\$172',
      'Nike Downshifter',
      false
    ],
    4: [
      'assets/image/nike_soes/showcase_image/5.png',
      '\$382',
      'Nike Mens Air',
      false
    ],
    5: [
      'assets/image/nike_soes/showcase_image/6.png',
      '\$738',
      'Nike Court Vision',
      false
    ],
    6: [
      'assets/image/nike_soes/showcase_image/7.png',
      '\$945',
      'Nike Man Juniper',
      false
    ],
    7: [
      'assets/image/nike_soes/showcase_image/8.png',
      '\$273',
      'Nike Ait Force',
      false
    ],
    8: [
      'assets/image/nike_soes/showcase_image/9.png',
      '\$629',
      'Jordan Spizike',
      false
    ],
    9: [
      'assets/image/nike_soes/showcase_image/10.png',
      '\$729',
      'Nike Resolution 7',
      false
    ],
    10: [
      'assets/image/nike_soes/showcase_image/11.png',
      '\$620',
      'Nike Go FlyEase',
      false
    ],
  };

  final Map<int, dynamic> _custom_cursol = {
    0: [
      'assets/image/nike_soes/cursor_slider_image/1.png',
      'Nike Spizike 2',
    ],
    1: [
      'assets/image/nike_soes/cursor_slider_image/2.png',
      'Nike Vision Go',
    ],
    2: [
      'assets/image/nike_soes/cursor_slider_image/3.png',
      'Nike Force 4',
    ],
  };

  List<TargetFocus> targets = [];

  final GlobalKey _search_key= GlobalKey();
  final GlobalKey _search_with_camera= GlobalKey();
  final GlobalKey _types= GlobalKey();
  final GlobalKey _items= GlobalKey();


  void target_focus_add (){
    targets.add(
        HomeScreenTargetFocus.search(key: _search_key)
    );
    targets.add(
        HomeScreenTargetFocus.camera(key: _search_with_camera)
    );
    targets.add(
        HomeScreenTargetFocus.types(key: _types)
    );
    targets.add(
        HomeScreenTargetFocus.items(key: _items)
    );
  }

  Future<void> start_tutorial() async {
    if(await CheckFirstRun.isFirstRunHomeTutorial()){
      await Future.delayed(1800.ms, (){
        HomeScreenTargetFocus.showTutorial(targets, context);
      });
    }
  }


  @override
  void initState() {
    target_focus_add();
    start_tutorial();
  }

  @override
  Widget build(BuildContext context) {
    // print('length is: ${_categories.length}');
    return Scaffold(
      body: SafeArea(
        child: SingleChildScrollView(
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              search_button_and_2_icon().animate().slideY(duration: 500.ms),
              heading_and_subtitle_top()
                  .animate()
                  .scale(
                      delay: 400.ms, duration: 500.ms, curve: Curves.decelerate)
                  .desaturate(
                      delay: 400.ms,
                      duration: 1000.ms,
                      curve: Curves.decelerate),
              CustomCoursalSclider()
                  .animate()
                  .scale(
                      delay: 600.ms, duration: 500.ms, curve: Curves.decelerate)
                  .fadeIn(
                      delay: 600.ms,
                      duration: 1000.ms,
                      curve: Curves.decelerate),
              types()
                  .animate()
                  .scale(
                      delay: 800.ms, duration: 500.ms, curve: Curves.decelerate)
                  .fadeIn(
                      delay: 800.ms,
                      duration: 1000.ms,
                      curve: Curves.decelerate),
              grid_view_items()
                  .animate()
                  .scale(
                      delay: 1000.ms,
                      duration: 500.ms,
                      curve: Curves.decelerate)
                  .fadeIn(
                      delay: 1000.ms,
                      duration: 1000.ms,
                      curve: Curves.decelerate)
            ],
          ),
        ),
      ),
    );
  }

  Widget search_button_and_2_icon() {
    return Row(
      children: [
        Expanded(
            child: Padding(
          padding: const EdgeInsets.symmetric(horizontal: 10),
          child: Card(
            key: _search_key,
            shape:
                RoundedRectangleBorder(borderRadius: BorderRadius.circular(30)),
            color: const Color.fromRGBO(223, 223, 223, 1),
            child: const Column(
              children: [
                SizedBox(
                  height: 5,
                ),
                Padding(
                  padding: EdgeInsets.only(right: 20),
                  child: TextField(
                    style: TextStyle(
                        fontSize: 20,
                        fontFamily: 'OpenSans',
                        fontWeight: FontWeight.w700),
                    decoration: InputDecoration(
                        border: InputBorder.none,
                        hintText: 'Search',
                        hintStyle:
                            TextStyle(fontSize: 20, fontFamily: 'OpenSans'),
                        prefixIcon: Icon(
                          CupertinoIcons.search,
                          color: Color.fromRGBO(108, 106, 106, 1),
                        )),
                  ),
                ),
              ],
            ),
          ),
        )),
        Padding(
          padding: const EdgeInsets.symmetric(horizontal: 10),
          child: Container(
            key: _search_with_camera,
              height: 50,
              width: 50,
              decoration: BoxDecoration(
                borderRadius: BorderRadius.circular(5),
                color: const Color.fromRGBO(223, 223, 223, 1),
              ),
              child: IconButton(
                onPressed: () {},
                icon: const Icon(Icons.camera_alt,
                    size: 30, color: Color.fromRGBO(108, 106, 106, 1)),
              )),
        ),
        Padding(
          padding: const EdgeInsets.symmetric(horizontal: 10),
          child: Container(
              height: 50,
              width: 50,
              decoration: BoxDecoration(
                borderRadius: BorderRadius.circular(5),
                color: const Color.fromRGBO(223, 223, 223, 1),
              ),
              child: IconButton(
                onPressed: () {},
                icon: Icon(MdiIcons.shoeFormal,
                    size: 30, color: Color.fromRGBO(108, 106, 106, 1)),
              )),
        ),
      ],
    );
  }

  Widget heading_and_subtitle_top() {
    return const Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      mainAxisAlignment: MainAxisAlignment.start,
      children: [
        SizedBox(
          height: 20,
        ),
        Padding(
          padding: EdgeInsets.symmetric(horizontal: 15),
          child: Text(
            'NEW COLLECTION',
            style: TextStyle(
                fontWeight: FontWeight.w900,
                fontSize: 25,
                fontFamily: 'Oswald'),
          ),
        ),
        Padding(
          padding: EdgeInsets.symmetric(horizontal: 15),
          child: Text(
            'Nike Original 2024 collection',
            style: TextStyle(
                fontWeight: FontWeight.w600,
                fontSize: 15,
                fontFamily: 'OpenSans',
                color: Color.fromRGBO(108, 106, 106, 1)),
          ),
        ),
      ],
    );
  }

  Widget CustomCoursalSclider() {
    return CarouselSlider(
      items: [customCard(index: 0), customCard(index: 1), customCard(index: 2)],
      options: CarouselOptions(
        // height: height00,
        aspectRatio: 16 / 9,
        viewportFraction: 1,
        initialPage: 0,
        enableInfiniteScroll: true,
        reverse: false,
        autoPlay: true,
        autoPlayInterval: Duration(seconds: 3),
        autoPlayAnimationDuration: Duration(milliseconds: 800),
        autoPlayCurve: Curves.fastOutSlowIn,
        enlargeCenterPage: true,
        enlargeFactor: 0.3,
        onPageChanged: (page, _) {
          // con.animateToPage(page,
          //     duration: Duration(milliseconds: 500), curve: Curves.ease);
        },
        scrollDirection: Axis.horizontal,
      ),
    );
  }

  Widget customCard({required int index}) {
    return Stack(
      children: [
        Center(
          child: Padding(
            padding: const EdgeInsets.symmetric(horizontal: 20),
            child: AspectRatio(
              aspectRatio: 2.4 / 1,
              child: Container(
                decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(20),
                  color: const Color.fromRGBO(223, 223, 223, 1),
                ),
                child: Padding(
                  padding: EdgeInsets.symmetric(horizontal: 20, vertical: 15),
                  child: Column(
                    mainAxisAlignment: MainAxisAlignment.start,
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Text(_custom_cursol[index][1],
                          style: TextStyle(
                            fontWeight: FontWeight.w900,
                            fontSize: 23,
                            fontFamily: 'Merriweather',
                          )),
                      const Text('Men\'s Shoes',
                          style: TextStyle(
                            fontWeight: FontWeight.w400,
                            fontSize: 17,
                            color: Color.fromRGBO(108, 106, 106, 1),
                            fontFamily: 'Merriweather',
                          )),
                      Spacer(),
                      ElevatedButton(
                          style: ElevatedButton.styleFrom(
                              backgroundColor: Colors.black,
                              elevation: 10,
                              shape: const RoundedRectangleBorder(
                                  borderRadius:
                                      BorderRadius.all(Radius.circular(10)))),
                          onPressed: () {
                            Get.to(ExpandItemPage(
                              name: _custom_cursol[index][1],
                              price: 45.toString(),
                              image: _custom_cursol[index][0],
                            ), transition: Transition.fadeIn, duration: 1000.ms);
                          },
                          child: const Text(
                            '     Shop Now     ',
                            style: TextStyle(color: Colors.white),
                          ))
                    ],
                  ),
                ),
              ),
            ),
          ),
        ),
        Align(

            alignment: Alignment(1, 0),
            child: Container(
                width: 250,
                height: 250,
                child: Image.asset(
                  _custom_cursol[index][0],
                )))
      ],
    );
  }

  Widget types() {
    Widget set_type(int index){
      if(index==0){
        return Container(
          child: Padding(
            padding: const EdgeInsets.symmetric(horizontal: 10),
            child: Column(
              children: [
                Text(
                  _categories[index][0],
                  style: const TextStyle(
                    fontWeight: FontWeight.w900,
                    fontSize: 25,
                    fontFamily: 'Merriweather',
                  ),
                ),
                Text(
                  _categories[index][1],
                  style: const TextStyle(
                    fontWeight: FontWeight.w600,
                    fontSize: 15,
                    fontFamily: 'OpenSans',
                    color: Color.fromRGBO(108, 106, 106, 1),
                  ),
                ),
              ],
            ),
          ),
        );
      }else{
        return Container(
          child: Padding(
            padding: const EdgeInsets.symmetric(horizontal: 10),
            child: Column(
              children: [
                Text(
                  _categories[index][0],
                  style: const TextStyle(
                    fontWeight: FontWeight.w900,
                    fontSize: 25,
                    fontFamily: 'Merriweather',
                  ),
                ),
                Text(
                  _categories[index][1],
                  style: const TextStyle(
                    fontWeight: FontWeight.w600,
                    fontSize: 15,
                    fontFamily: 'OpenSans',
                    color: Color.fromRGBO(108, 106, 106, 1),
                  ),
                ),
              ],
            ),
          ),
        );
      }
    }
    return Padding(
      padding: const EdgeInsets.symmetric(horizontal: 25),
      child: SizedBox(
        key: _types,
        height: 80,
        child: ListView.builder(
          scrollDirection: Axis.horizontal,
          itemCount: _categories.length,
          itemBuilder: (context, index) {
            // print('${_categories.length}');
            return set_type(index);
          },
        ),
      ),
    );
  }

  Widget grid_view_items() {
    Widget first_item(int index){
      return Column(
        key: _items,
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          GestureDetector(
            onTap: () {
              Get.to(ExpandItemPage(
                  name: '${_showcase[index][2]}',
                  price: '${_showcase[index][1]}',
                  image: '${_showcase[index][0]}'));
            },
            onLongPress: () {
              setState(() {
                print('before value: ${_showcase[index][3]}');
                _showcase[index][3] = !_showcase[index][3];
                print('after value: ${_showcase[index][3]}');
              });
            },
            child: Stack(
              children: [
                Column(
                  children: [
                    AspectRatio(
                      aspectRatio: 1.40 / 1,
                      child: Card(
                        color: Color.fromRGBO(223, 223, 223, 1),
                        child: Stack(
                          children: [
                            Padding(
                              padding: const EdgeInsets.all(5.0),
                              child: _showcase[index][3]
                                  ? Icon(
                                MdiIcons.heart,
                                color: const Color.fromRGBO(
                                    113, 43, 62, 1),
                              )
                                  : Icon(
                                MdiIcons.heartOutline,
                                color: const Color.fromRGBO(
                                    108, 106, 106, 1),
                              ),
                            ),
                          ],
                        ),
                      ),
                    ),
                    Padding(
                      padding: const EdgeInsets.only(left: 10),
                      child: Column(
                        crossAxisAlignment: CrossAxisAlignment.stretch,
                        children: [
                          Text('${_showcase[index][1]}',
                              style: const TextStyle(
                                  fontWeight: FontWeight.w900,
                                  fontSize: 20,
                                  fontFamily: 'Poppins')),
                          Text('${_showcase[index][2]}',
                              style: const TextStyle(
                                  fontWeight: FontWeight.w900,
                                  fontSize: 12,
                                  color: Color.fromRGBO(108, 106, 106, 1),
                                  fontFamily: 'Poppins'))
                        ],
                      ),
                    )
                  ],
                ),
                Positioned(
                  width: 200,
                  height: 200,
                  top: -30,
                  child: Transform.rotate(
                    angle: -0.7045,
                    child: Transform.scale(
                      scale: 0.95,
                      child: Container(
                          color: Colors.black.withOpacity(0),
                          child: Image.asset(_showcase[index][0])),
                    ),
                  ),
                )
              ],
            ),
          )
        ],
      );
    }

    Widget rest_item(int index){
      return Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          GestureDetector(
            onTap: () {
              Get.to(ExpandItemPage(
                  name: '${_showcase[index][2]}',
                  price: '${_showcase[index][1]}',
                  image: '${_showcase[index][0]}'));
            },
            onLongPress: () {
              setState(() {
                print('before value: ${_showcase[index][3]}');
                _showcase[index][3] = !_showcase[index][3];
                print('after value: ${_showcase[index][3]}');
              });
            },
            child: Stack(
              children: [
                Column(
                  children: [
                    AspectRatio(
                      aspectRatio: 1.40 / 1,
                      child: Card(
                        color: Color.fromRGBO(223, 223, 223, 1),
                        child: Stack(
                          children: [
                            Padding(
                              padding: const EdgeInsets.all(5.0),
                              child: _showcase[index][3]
                                  ? Icon(
                                MdiIcons.heart,
                                color: const Color.fromRGBO(
                                    113, 43, 62, 1),
                              )
                                  : Icon(
                                MdiIcons.heartOutline,
                                color: const Color.fromRGBO(
                                    108, 106, 106, 1),
                              ),
                            ),
                          ],
                        ),
                      ),
                    ),
                    Padding(
                      padding: const EdgeInsets.only(left: 10),
                      child: Column(
                        crossAxisAlignment: CrossAxisAlignment.stretch,
                        children: [
                          Text('${_showcase[index][1]}',
                              style: const TextStyle(
                                  fontWeight: FontWeight.w900,
                                  fontSize: 20,
                                  fontFamily: 'Poppins')),
                          Text('${_showcase[index][2]}',
                              style: const TextStyle(
                                  fontWeight: FontWeight.w900,
                                  fontSize: 12,
                                  color: Color.fromRGBO(108, 106, 106, 1),
                                  fontFamily: 'Poppins'))
                        ],
                      ),
                    )
                  ],
                ),
                Positioned(
                  width: 200,
                  height: 200,
                  top: -30,
                  child: Transform.rotate(
                    angle: -0.7045,
                    child: Transform.scale(
                      scale: 0.95,
                      child: Container(
                          color: Colors.black.withOpacity(0),
                          child: Image.asset(_showcase[index][0])),
                    ),
                  ),
                )
              ],
            ),
          )
        ],
      );
    }

    Widget build_grid_view(int index){
      if(index==0){
        return first_item(index);
      }else{
        return rest_item(index);
      }
    }


    return SizedBox(
      child: Padding(
        padding: const EdgeInsets.symmetric(horizontal: 15),
        child: GridView.builder(
          shrinkWrap: true,
          physics: const NeverScrollableScrollPhysics(),
          gridDelegate: const SliverGridDelegateWithFixedCrossAxisCount(
            crossAxisCount: 2, // number of items in each row
            mainAxisSpacing: 10.0, // spacing between rows
            crossAxisSpacing: 10.0, // spacing between columns
          ),
          itemBuilder: (context, index) {
            return build_grid_view(index);
          },
          itemCount: _showcase.length, // Number of items you want to display
        ),
      ),
    );
  }
}
