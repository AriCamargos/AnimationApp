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
      body: ElevatedButton(
        // ignore: avoid_returning_null_for_void
        onPressed: () => null,
        child: const Text(
          'Imagem',
          style: TextStyle(fontWeight: FontWeight.bold, fontSize: 20),
        ),
      ),
    );
  }
}
