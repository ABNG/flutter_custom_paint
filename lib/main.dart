import 'package:flutter/material.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Flutter Demo',
      theme: ThemeData(
        primarySwatch: Colors.blue,
        visualDensity: VisualDensity.adaptivePlatformDensity,
      ),
      home: MyHomePage(),
    );
  }
}

class MyHomePage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return CustomPaint(
      painter: MyCustomPainter(),
    );
  }
}

class MyCustomPainter extends CustomPainter {
  @override
  void paint(Canvas canvas, Size size) {
    Path path = Path();
//    path.moveTo(0, size.height);
//    path.lineTo(0, 0);
//    path.moveTo(0, size.height / 2);
//    path.quadraticBezierTo(size.width / 2, size.height / 1.5, 0,
//        size.height); //first two value make bezier last two values end of bezier
//    path.conicTo(size.width / 4, 3 * size.height / 4, size.width, size.height,
//        20); // only play with second argument, it show how much curve we want
    path.moveTo(0, size.height / 2);
    path.cubicTo(
        size.width / 4,
        3 * size.height / 4,
        3 * size.width / 4,
        size.height / 4,
        size.width,
        size.height / 2); //multiply value mean curve

    Paint paint = Paint()
      ..color = Colors.red
      ..style = PaintingStyle.stroke
      ..strokeWidth = 8.0;

    canvas.drawPath(path, paint);
    // TODO: implement paint
  }

  @override
  bool shouldRepaint(CustomPainter oldDelegate) => true;
}
