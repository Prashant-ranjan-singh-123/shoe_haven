import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';
import 'package:flutter_animate/flutter_animate.dart';
import 'package:get/get.dart';
import 'package:slide_to_act/slide_to_act.dart';

import 'added_to_cart_page.dart';

class ExpandItemPage extends StatefulWidget {
  String name;
  String price;
  String image;
  ExpandItemPage(
      {super.key,
      required this.name,
      required this.price,
      required this.image});

  @override
  State<ExpandItemPage> createState() => _ExpandItemPageState();
}

class _ExpandItemPageState extends State<ExpandItemPage> {
  final GlobalKey<SlideActionState> _key = GlobalKey();

  final Map<int, dynamic> _size = {
    0: [6],
    1: [7],
    2: [8],
    3: [9],
    4: [10],
    5: [11],
    6: [12],
  };

  int current_selected = 3;

  bool isFavourite = false;

  bool isLandscape(){
    if(Get.width>Get.height){
      return true;
    }else{
      return false;
    }
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      body: SafeArea(
        child: Padding(
          padding: const EdgeInsets.symmetric(horizontal: 15),
          child: isLandscape()? landcape_mode() : portrait_mode(),
        ),
      ),
    );
  }

  Widget landcape_mode(){
    setState(() {});
    return SingleChildScrollView(
      child: Column(
        mainAxisAlignment: MainAxisAlignment.spaceAround,
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          space_between_widget(),
          top_back_button_and_like().animate()
              .scale(duration: 1000.ms, curve: Curves.decelerate)
              .fadeIn(duration: 2000.ms, curve: Curves.decelerate),
          space_between_widget(),
          name_and_image().animate()
              .scale(duration: 1000.ms, curve: Curves.decelerate, delay: 400.ms)
              .fadeIn(duration: 2000.ms, curve: Curves.decelerate),
          space_between_widget(),
          price().animate()
              .scale(duration: 1000.ms, curve: Curves.decelerate, delay: 600.ms)
              .fadeIn(duration: 2000.ms, curve: Curves.decelerate, delay: 600.ms),
          space_between_widget(),
          size_selection().animate()
              .scale(duration: 1000.ms, curve: Curves.decelerate, delay: 900.ms)
              .fadeIn(duration: 2000.ms, curve: Curves.decelerate, delay: 900.ms),
          space_between_widget(),
          SizedBox().animate()
              .scale(duration: 1000.ms, curve: Curves.decelerate, delay: 1200.ms)
              .fadeIn(duration: 2000.ms, curve: Curves.decelerate, delay: 1200.ms),
          space_between_widget(),
          slide_action().animate()
              .scale(duration: 1000.ms, curve: Curves.decelerate, delay: 1500.ms)
              .fadeIn(duration: 2000.ms, curve: Curves.decelerate, delay: 1500.ms),
          space_between_widget(),
          SizedBox().animate()
              .scale(duration: 1000.ms, curve: Curves.decelerate, delay: 1800.ms)
              .fadeIn(duration: 2000.ms, curve: Curves.decelerate, delay: 1800.ms),
        ],
      ),
    );
  }

  Widget portrait_mode(){
    setState(() {});
    return SingleChildScrollView(
      child: SizedBox(
        height: Get.height*0.9,
        width: Get.width,
        child: Column(
          mainAxisAlignment: MainAxisAlignment.spaceAround,
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            top_back_button_and_like().animate()
                .scale(duration: 1000.ms, curve: Curves.decelerate)
                .fadeIn(duration: 2000.ms, curve: Curves.decelerate),
            name_and_image().animate()
                .scale(duration: 1000.ms, curve: Curves.decelerate, delay: 400.ms)
                .fadeIn(duration: 2000.ms, curve: Curves.decelerate),
            price().animate()
                .scale(duration: 1000.ms, curve: Curves.decelerate, delay: 600.ms)
                .fadeIn(duration: 2000.ms, curve: Curves.decelerate, delay: 600.ms),
            size_selection().animate()
                .scale(duration: 1000.ms, curve: Curves.decelerate, delay: 900.ms)
                .fadeIn(duration: 2000.ms, curve: Curves.decelerate, delay: 900.ms),
            SizedBox().animate()
                .scale(duration: 1000.ms, curve: Curves.decelerate, delay: 1200.ms)
                .fadeIn(duration: 2000.ms, curve: Curves.decelerate, delay: 1200.ms),
            slide_action().animate()
                .scale(duration: 1000.ms, curve: Curves.decelerate, delay: 1500.ms)
                .fadeIn(duration: 2000.ms, curve: Curves.decelerate, delay: 1500.ms),
            SizedBox().animate()
                .scale(duration: 1000.ms, curve: Curves.decelerate, delay: 1800.ms)
                .fadeIn(duration: 2000.ms, curve: Curves.decelerate, delay: 1800.ms),
          ],
        ),
      ),
    );
  }

  Widget top_back_button_and_like() {
    return Column(
      children: [
        SizedBox(height: 10,),
        Row(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: [
            Container(
                height: 40,
                width: 40,
                decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(5),
                ),
                child: IconButton(
                  onPressed: () {
                    Get.back();
                  },
                  icon: const Icon(CupertinoIcons.back,
                      size: 25, ),
                )),
            isFavourite
                ? Container(
                    height: 40,
                    width: 40,
                    decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(5),
                      color: const Color.fromRGBO(236, 236, 236, 1),
                    ),
                    child: IconButton(
                      onPressed: () {
                        setState(() {
                          isFavourite = !isFavourite;
                        });
                      },
                      icon: const Icon(CupertinoIcons.heart_fill,
                          size: 25, color: Color.fromRGBO(113, 43, 62, 1)),
                    ))
                : Container(
                    height: 40,
                    width: 40,
                    decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(5),
                      color: const Color.fromRGBO(236, 236, 236, 1),
                    ),
                    child: IconButton(
                      onPressed: () {
                        setState(() {
                          isFavourite = !isFavourite;
                        });
                      },
                      icon: const Icon(CupertinoIcons.heart,
                          size: 25, color: Color.fromRGBO(108, 106, 106, 1)),
                    ))
          ],
        ),
      ],
    );
  }

  Widget name_and_image() {
    return AspectRatio(
      aspectRatio: 1/1,
      child: Card(
        color: Color.fromRGBO(236, 236, 236, 1),
        child: Padding(
          padding: const EdgeInsets.only(left: 15.0, top: 10),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            mainAxisAlignment: MainAxisAlignment.start,
            children: [
              Text(
                widget.name,
                style: const TextStyle(
                    fontSize: 25,
                    fontWeight: FontWeight.w900,
                    fontFamily: 'Merriweather'),
              ),
              AspectRatio(
                aspectRatio: 1.2/1,
                child: Transform.scale(
                  scale: 1.2,
                  child: Image.asset(widget.image),
                ),
              )
            ],
          ),
        ),
      ),
    );
  }

  Widget price() {
    return Text(widget.price.toString(),
        style: const TextStyle(
            fontWeight: FontWeight.w900, fontSize: 30, fontFamily: 'Poppins'));
  }

  Widget size_selection() {
    Widget un_selected(int index) {
      return Padding(
        padding: const EdgeInsets.only(right: 15.0),
        child: Container(
            height: 50,
            decoration: BoxDecoration(
              borderRadius: BorderRadius.circular(5),
              color: const Color.fromRGBO(236, 236, 236, 1),
            ),
            child: Padding(
              padding: EdgeInsets.all(10.0),
              child: Center(
                  child: Text(
                '  IN ${_size[index][0]}  ',
                style: const TextStyle(
                    fontWeight: FontWeight.w300,
                    fontSize: 20,
                    fontFamily: 'Merriweather'),
              )),
            )),
      );
    }

    Widget selected(int index) {
      return Padding(
        padding: const EdgeInsets.only(right: 15.0),
        child: Container(
            height: 50,
            decoration: BoxDecoration(
              borderRadius: BorderRadius.circular(5),
              color: Colors.black,
            ),
            child: Padding(
              padding: EdgeInsets.all(10.0),
              child: Center(
                  child: Text(
                '  IN ${_size[index][0]}  ',
                style: const TextStyle(
                    fontWeight: FontWeight.w600,
                    color: Colors.white,
                    fontSize: 24,
                    fontFamily: 'Merriweather'),
              )),
            )),
      );
    }

    Widget builder_widget(int index) {
      Widget setIndex({required int index, required Widget child}) {
        return GestureDetector(
          onTap: () {
            setState(() {
              current_selected = index;
            });
          },
          child: child,
        );
      }

      if (current_selected == index) {
        return setIndex(child: selected(index), index: index);
      } else {
        return setIndex(child: un_selected(index), index: index);
      }
    }

    return Column(
      mainAxisAlignment: MainAxisAlignment.start,
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        const Text('Size',
            style: TextStyle(
                fontWeight: FontWeight.w300,
                fontSize: 20,
                fontFamily: 'Poppins')),
        SizedBox(
          height: 10,
        ),
        SizedBox(
          height: 70,
          child: ListView.builder(
              scrollDirection: Axis.horizontal,
              itemCount: _size.length,
              itemBuilder: (context, index) {
                return builder_widget(index);
              }),
        ),
      ],
    );
  }

  Widget slide_action() {
    return SlideAction(
      innerColor: Colors.black,
      outerColor: Color.fromRGBO(236, 236, 236, 1),
      textColor: Colors.black,
      text: 'Add to Cart',
      textStyle: const TextStyle(
          color: Colors.black,
          fontWeight: FontWeight.w700,
          fontFamily: 'Poppins',
          fontSize: 20),
      borderRadius: 55,
      key: _key,
      onSubmit: () {
        Get.to(const AddedToCartPage());
      },
    );
  }

  Widget space_between_widget(){
    return const SizedBox(height: 20,);
  }
}
