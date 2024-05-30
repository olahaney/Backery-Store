import 'package:carousel_slider/carousel_slider.dart';
import 'package:flutter/material.dart';
import 'package:imageslider/classes/customClipper.dart';

class CarouselSlidetWidget extends StatefulWidget {
  const CarouselSlidetWidget({Key? key});

  @override
  State<CarouselSlidetWidget> createState() => _CarouselSlidetWidgetState();
}

class _CarouselSlidetWidgetState extends State<CarouselSlidetWidget> {
  List sliderImage = [
    'assets/images/a.jpg',
    'assets/images/b.jpg',
    'assets/images/c.jpg',
    'assets/images/d.jpg',
    'assets/images/e.jpg',
  ];

  int initPage = 0;
  double enlargeFactor = 0.3;

  @override
  Widget build(BuildContext context) {
    return CarouselSlider.builder(
      itemCount: sliderImage.length,
      itemBuilder: (BuildContext context, int itemIndex, _) {
        return ClipPath(
          clipper: CustomClipAllSides(),
          child: Container(
            margin: const EdgeInsets.symmetric(horizontal: 10),
            height: MediaQuery.of(context).size.height * 0.6,
            decoration: BoxDecoration(
              image: DecorationImage(
                image: AssetImage(sliderImage[itemIndex]),
                fit: BoxFit.cover,
              ),
            ),
          ),
        );
      },
      options: CarouselOptions(
        aspectRatio: 9 / 16,
        viewportFraction: 0.9,
        initialPage: initPage,
        enableInfiniteScroll: true,
        reverse: false,
        autoPlay: true,
        autoPlayInterval: const Duration(seconds: 1),
        autoPlayAnimationDuration: const Duration(milliseconds: 800),
        autoPlayCurve: Curves.fastOutSlowIn,
        // enlargeCenterPage: true,
        enlargeFactor: enlargeFactor,
        onPageChanged: (index, reason) {
          setState(() {
            initPage == index;
                
          });
        },
      )
    );
  }
}
