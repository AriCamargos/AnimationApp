import 'package:animation/button_page.dart';
import 'package:animation/delivery_page.dart';
import 'package:animation/picture_page.dart';
import 'package:flutter/material.dart';
import 'package:lottie/lottie.dart';

class MyHomePage extends StatefulWidget {
  const MyHomePage({Key? key}) : super(key: key);

  @override
  State<MyHomePage> createState() => _MyHomePageState();
}

class _MyHomePageState extends State<MyHomePage> {
  get icone => null;

  //Função de navegação de página
  open(pagina) {
    Navigator.push(
      context,
      MaterialPageRoute(builder: pagina),
    );
  }

  //Função única de estilização de letras
  letter() => const TextStyle(fontSize: 20, fontWeight: FontWeight.bold);

  //Função Icon
  android() => IconTheme(
        data: IconThemeData(color: Colors.green[400]),
        child: const Icon(
          Icons.android,
        ),
      );

  space() => const Padding(
        padding: EdgeInsets.symmetric(horizontal: 10, vertical: 5),
      );

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        elevation: null,
        title: const Text('Menu de Animação'),
      ),
      body: Column(
        children: [
          space(),
          Card(
            elevation: 10,
            child: ListTile(
              leading: android(),
              onTap: () => open(
                (_) => const DeliveryPage(),
              ),
              title: Text(
                'Delivery',
                style: letter(),
              ),
              subtitle: const Text('Animação para página delivery'),
            ),
          ),
          Card(
            elevation: 10,
            child: ListTile(
              leading: android(),
              title: Text(
                'Button',
                style: letter(),
              ),
              subtitle: const Text('Animação com botão on/off'),
              onTap: () => open(
                (_) => const ButtonPage(),
              ),
            ),
          ),
          Card(
            elevation: 10,
            child: ListTile(
              leading: android(),
              title: Text(
                'Picture',
                style: letter(),
              ),
              subtitle: const Text('Navegação com foto em movimento'),
              onTap: () => open(
                (_) => const PicturePage(),
              ),
            ),
          ),
        ],
      ),
      floatingActionButton: FloatingActionButton(
        onPressed: () {
          Lottie.network(
              'https://assets4.lottiefiles.com/packages/lf20_vhyjpyhg.json');
        },
        child: const Icon(
          Icons.sentiment_satisfied_alt_outlined,
        ),
        elevation: 10,
      ),
    );
  }
}
