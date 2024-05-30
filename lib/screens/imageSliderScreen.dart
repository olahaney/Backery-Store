// ignore_for_file: public_member_api_docs, sort_constructors_first
import 'package:flutter/material.dart';
import 'package:imageslider/widget/carouselSlider.dart';

class ImageSliderScreen extends StatelessWidget {
  const ImageSliderScreen({
    Key? key,
  }) : super(key: key);



  @override
  Widget build(BuildContext context) {
    return MaterialApp(
        home: Scaffold(
      appBar: AppBar(
        title: const Text(
          'Slider Image',
          style: TextStyle(color: Colors.white),
        ),
        centerTitle: true,
        backgroundColor: Colors.blueAccent.withOpacity(0.5),
        elevation: 2,
      ),
      body: const Center(
          child:CarouselSlidetWidget())
    ));
  }
}
