import 'package:flutter/material.dart';

class CustomClipAllSides extends CustomClipper<Path> {
  @override
  Path getClip(Size size) {
    double w = size.width;
    double h = size.height;
    final path = Path();
    path.moveTo(0, h); //start at the bottom
    path.quadraticBezierTo(w * 0.5, h - 15, w, h); //curve at the bottom
    path.lineTo(w, 0); //bottom right corner
    path.lineTo(0, 0); //top right corner
    path.quadraticBezierTo(w * 0.5, -15, w, 0); //curve at the top
    path.quadraticBezierTo(w * 0.5, 15, 0, 0); //curve at the top
    path.close();
    return path;
  }

  @override
  bool shouldReclip(covariant CustomClipper<Path> oldClipper) {
    return false;
  }
}
