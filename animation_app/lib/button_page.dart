import 'package:flutter/material.dart';
import 'package:lottie/lottie.dart';

class ButtonPage extends StatefulWidget {
  const ButtonPage({Key? key}) : super(key: key);

  @override
  State<ButtonPage> createState() => _ButtonPageState();
}

class _ButtonPageState extends State<ButtonPage> with TickerProviderStateMixin {
  late final AnimationController _controller;
  bool checked = true;

  @override
  void initState() {
    super.initState();
    _controller = AnimationController(vsync: this);
    _controller.duration = const Duration(milliseconds: 300);
  }

  @override
  void dispose() {
    _controller.dispose();
    super.dispose();
  }

  toggle() {
    (checked) ? _controller.forward() : _controller.reverse();
    checked = !checked;
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Opção Animada'),
        elevation: 0,
      ),
      body: Center(
        child: GestureDetector(
          //Gestos que são capturados
          onTap: toggle,

          child: Container(
            child: Lottie.asset(
              "assets/lottie/71569-hamster-toggle.json",
              controller: _controller,
            ),
          ),
        ),
      ),
    );
  }
}
