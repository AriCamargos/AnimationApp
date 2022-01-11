import 'package:animation/button_page.dart';
import 'package:animation/delivery_page.dart';
import 'package:animation/form_page.dart';
import 'package:flutter/material.dart';

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

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        elevation: null,
        title: const Text('Exemplos Animação'),
      ),
      body: Column(
        children: [
          ListTile(
            leading: android(),
            title: Text(
              'Delivery',
              style: letter(),
            ),
            onTap: () => open(
              (_) => const DeliveryPage(),
            ),
          ),
          const Divider(),
          ListTile(
            leading: android(),
            title: Text(
              'Botão',
              style: letter(),
            ),
            onTap: () => open(
              (_) => const ButtonPage(),
            ),
          ),
          const Divider(),
          /* ListTile(
            leading: android(),
            title: Text(
              'Formulário',
              style: letter(),
            ),
            onTap: () => open(
              (_) => const FormPage(),
            ),
          ), */
        ],
      ),
    );
  }
}
