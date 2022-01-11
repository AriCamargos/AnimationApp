import 'package:flutter/material.dart';
import 'package:lottie/lottie.dart';

class DeliveryPage extends StatelessWidget {
  const DeliveryPage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Container(
        width: MediaQuery.of(context).size.width,
        color: Colors.red[900],
        child: Column(
          mainAxisAlignment: MainAxisAlignment.start,
          children: [
            const Padding(
              padding: EdgeInsets.only(bottom: 24, top: 120),
            ),
            const Text(
              'Motoboy está a caminho',
              style: TextStyle(
                fontSize: 30,
                fontWeight: FontWeight.bold,
                color: Colors.white,
              ),
            ),
            const SizedBox(
              height: 10,
            ),
            const Text(
              'Seu pedido deve chegar em 10 minutos',
              style: TextStyle(
                  color: Colors.white,
                  fontSize: 15,
                  fontWeight: FontWeight.normal),
            ),
            Padding(
              padding: const EdgeInsets.only(bottom: 24, top: 120),
              child: Lottie.network(
                  "https://assets2.lottiefiles.com/packages/lf20_6YCRFI.json"),
            ),
          ],
        ),
      ),
    );
  }
}
