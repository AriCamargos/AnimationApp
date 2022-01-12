import 'package:flutter/material.dart';
import 'package:lottie/lottie.dart';

class PicturePage extends StatefulWidget {
  const PicturePage({Key? key}) : super(key: key);

  @override
  State<PicturePage> createState() => _PicturePageState();
}

class _PicturePageState extends State<PicturePage>
    with TickerProviderStateMixin {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: AnimatedSize(
        duration: const Duration(seconds: 4),
        child: SizedBox(
          height: double.infinity,
          child: Image.asset('lamb.jpg'),
        ),
      ),
    );
  }
}

mixin AnimationCtrl {}
